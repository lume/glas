/**
 * @author alteredq / http://alteredqualia.com/
 * @author mrdoob / http://mrdoob.com/
 */

import { FrontSide, BackSide, DoubleSide, RGBAFormat, NearestFilter, PCFShadowMap, RGBADepthPacking, NoBlending } from '../../constants.js';
import { WebGLRenderTarget } from '../WebGLRenderTarget.js';
import { MeshDepthMaterial } from '../../materials/MeshDepthMaterial.js';
import { MeshDistanceMaterial } from '../../materials/MeshDistanceMaterial.js';
import { Vector4 } from '../../math/Vector4';
import { Vector3 } from '../../math/Vector3';
import { Vector2 } from '../../math/Vector2';
import { Matrix4 } from '../../math/Matrix4.js';
import { Frustum } from '../../math/Frustum.js';

function WebGLShadowMap( _renderer, _objects, maxTextureSize ) {

	const _frustum = new Frustum(),
		_projScreenMatrix = new Matrix4(),

		_shadowMapSize = new Vector2(),
		_maxShadowMapSize = new Vector2( maxTextureSize, maxTextureSize ),

		_lookTarget = new Vector3(),
		_lightPositionWorld = new Vector3(),

		_MorphingFlag = 1,
		_SkinningFlag = 2,

		_NumberOfMaterialVariants = ( _MorphingFlag | _SkinningFlag ) + 1,

		_depthMaterials = new Array( _NumberOfMaterialVariants ),
		_distanceMaterials = new Array( _NumberOfMaterialVariants ),

		_materialCache = {};

	const shadowSide = { 0: BackSide, 1: FrontSide, 2: DoubleSide };

	const cubeDirections = [
		new Vector3( 1, 0, 0 ), new Vector3( - 1, 0, 0 ), new Vector3( 0, 0, 1 ),
		new Vector3( 0, 0, - 1 ), new Vector3( 0, 1, 0 ), new Vector3( 0, - 1, 0 )
	];

	const cubeUps = [
		new Vector3( 0, 1, 0 ), new Vector3( 0, 1, 0 ), new Vector3( 0, 1, 0 ),
		new Vector3( 0, 1, 0 ), new Vector3( 0, 0, 1 ),	new Vector3( 0, 0, - 1 )
	];

	const cube2DViewPorts = [
		new Vector4(), new Vector4(), new Vector4(),
		new Vector4(), new Vector4(), new Vector4()
	];

	// init

	for ( let i = 0; i !== _NumberOfMaterialVariants; ++ i ) {

		const useMorphing = ( i & _MorphingFlag ) !== 0;
		const useSkinning = ( i & _SkinningFlag ) !== 0;

		const depthMaterial = new MeshDepthMaterial( {

			depthPacking: RGBADepthPacking,

			morphTargets: useMorphing,
			skinning: useSkinning

		} );

		_depthMaterials[ i ] = depthMaterial;

		//

		const distanceMaterial = new MeshDistanceMaterial( {

			morphTargets: useMorphing,
			skinning: useSkinning

		} );

		_distanceMaterials[ i ] = distanceMaterial;

	}

	//

	const scope = this;

	this.enabled = false;

	this.autoUpdate = true;
	this.needsUpdate = false;

	this.type = PCFShadowMap;

	this.render = function ( lights, scene, camera ) {

		if ( scope.enabled === false ) return;
		if ( scope.autoUpdate === false && scope.needsUpdate === false ) return;

		if ( lights.length === 0 ) return;

		const currentRenderTarget = _renderer.getRenderTarget();
		const activeCubeFace = _renderer.getActiveCubeFace();
		const activeMipMapLevel = _renderer.getActiveMipMapLevel();

		const _state = _renderer.state;

		// Set GL state for depth map.
		_state.setBlending( NoBlending );
		_state.buffers.color.setClear( 1, 1, 1, 1 );
		_state.buffers.depth.setTest( true );
		_state.setScissorTest( false );

		// render depth map

		const faceCount;

		for ( let i = 0, il = lights.length; i < il; i ++ ) {

			const light = lights[ i ];
			const shadow = light.shadow;
			const isPointLight = light && light.isPointLight;

			if ( shadow === undefined ) {

				console.warn( 'THREE.WebGLShadowMap:', light, 'has no shadow.' );
				continue;

			}

			const shadowCamera = shadow.camera;

			_shadowMapSize.copy( shadow.mapSize );
			_shadowMapSize.min( _maxShadowMapSize );

			if ( isPointLight ) {

				const vpWidth = _shadowMapSize.x;
				const vpHeight = _shadowMapSize.y;

				// These viewports map a cube-map onto a 2D texture with the
				// following orientation:
				//
				//  xzXZ
				//   y Y
				//
				// X - Positive x direction
				// x - Negative x direction
				// Y - Positive y direction
				// y - Negative y direction
				// Z - Positive z direction
				// z - Negative z direction

				// positive X
				cube2DViewPorts[ 0 ].set( vpWidth * 2, vpHeight, vpWidth, vpHeight );
				// negative X
				cube2DViewPorts[ 1 ].set( 0, vpHeight, vpWidth, vpHeight );
				// positive Z
				cube2DViewPorts[ 2 ].set( vpWidth * 3, vpHeight, vpWidth, vpHeight );
				// negative Z
				cube2DViewPorts[ 3 ].set( vpWidth, vpHeight, vpWidth, vpHeight );
				// positive Y
				cube2DViewPorts[ 4 ].set( vpWidth * 3, 0, vpWidth, vpHeight );
				// negative Y
				cube2DViewPorts[ 5 ].set( vpWidth, 0, vpWidth, vpHeight );

				_shadowMapSize.x *= 4.0;
				_shadowMapSize.y *= 2.0;

			}

			if ( shadow.map === null ) {

				const pars = { minFilter: NearestFilter, magFilter: NearestFilter, format: RGBAFormat };

				shadow.map = new WebGLRenderTarget( _shadowMapSize.x, _shadowMapSize.y, pars );
				shadow.map.texture.name = light.name + ".shadowMap";

				shadowCamera.updateProjectionMatrix();

			}

			if ( shadow.isSpotLightShadow ) {

				shadow.update( light );

			}

			const shadowMap = shadow.map;
			const shadowMatrix = shadow.matrix;

			_lightPositionWorld.setFromMatrixPosition( light.matrixWorld );
			shadowCamera.position.copy( _lightPositionWorld );

			if ( isPointLight ) {

				faceCount = 6;

				// for point lights we set the shadow matrix to be a translation-only matrix
				// equal to inverse of the light's position

				shadowMatrix.makeTranslation( - _lightPositionWorld.x, - _lightPositionWorld.y, - _lightPositionWorld.z );

			} else {

				faceCount = 1;

				_lookTarget.setFromMatrixPosition( light.target.matrixWorld );
				shadowCamera.lookAt( _lookTarget );
				shadowCamera.updateMatrixWorld();

				// compute shadow matrix

				shadowMatrix.set(
					0.5, 0.0, 0.0, 0.5,
					0.0, 0.5, 0.0, 0.5,
					0.0, 0.0, 0.5, 0.5,
					0.0, 0.0, 0.0, 1.0
				);

				shadowMatrix.multiply( shadowCamera.projectionMatrix );
				shadowMatrix.multiply( shadowCamera.matrixWorldInverse );

			}

			_renderer.setRenderTarget( shadowMap );
			_renderer.clear();

			// render shadow map for each cube face (if omni-directional) or
			// run a single pass if not

			for ( let face = 0; face < faceCount; face ++ ) {

				if ( isPointLight ) {

					_lookTarget.copy( shadowCamera.position );
					_lookTarget.add( cubeDirections[ face ] );
					shadowCamera.up.copy( cubeUps[ face ] );
					shadowCamera.lookAt( _lookTarget );
					shadowCamera.updateMatrixWorld();

					const vpDimensions = cube2DViewPorts[ face ];
					_state.viewport( vpDimensions );

				}

				// update camera matrices and frustum

				_projScreenMatrix.multiplyMatrices( shadowCamera.projectionMatrix, shadowCamera.matrixWorldInverse );
				_frustum.setFromMatrix( _projScreenMatrix );

				// set object matrices & frustum culling

				renderObject( scene, camera, shadowCamera, isPointLight );

			}

		}

		scope.needsUpdate = false;

		_renderer.setRenderTarget( currentRenderTarget, activeCubeFace, activeMipMapLevel );

	};

	function getDepthMaterial( object, material, isPointLight, lightPositionWorld, shadowCameraNear, shadowCameraFar ) {

		const geometry = object.geometry;

		const result = null;

		const materialVariants = _depthMaterials;
		const customMaterial = object.customDepthMaterial;

		if ( isPointLight ) {

			materialVariants = _distanceMaterials;
			customMaterial = object.customDistanceMaterial;

		}

		if ( ! customMaterial ) {

			const useMorphing = false;

			if ( material.morphTargets ) {

				if ( geometry && geometry.isBufferGeometry ) {

					useMorphing = geometry.morphAttributes && geometry.morphAttributes.position && geometry.morphAttributes.position.length > 0;

				} else if ( geometry && geometry.isGeometry ) {

					useMorphing = geometry.morphTargets && geometry.morphTargets.length > 0;

				}

			}

			if ( object.isSkinnedMesh && material.skinning === false ) {

				console.warn( 'THREE.WebGLShadowMap: THREE.SkinnedMesh with material.skinning set to false:', object );

			}

			const useSkinning = object.isSkinnedMesh && material.skinning;

			const variantIndex = 0;

			if ( useMorphing ) variantIndex |= _MorphingFlag;
			if ( useSkinning ) variantIndex |= _SkinningFlag;

			result = materialVariants[ variantIndex ];

		} else {

			result = customMaterial;

		}

		if ( _renderer.localClippingEnabled &&
				material.clipShadows === true &&
				material.clippingPlanes.length !== 0 ) {

			// in this case we need a unique material instance reflecting the
			// appropriate state

			const keyA = result.uuid, keyB = material.uuid;

			const materialsForVariant = _materialCache[ keyA ];

			if ( materialsForVariant === undefined ) {

				materialsForVariant = {};
				_materialCache[ keyA ] = materialsForVariant;

			}

			const cachedMaterial = materialsForVariant[ keyB ];

			if ( cachedMaterial === undefined ) {

				cachedMaterial = result.clone();
				materialsForVariant[ keyB ] = cachedMaterial;

			}

			result = cachedMaterial;

		}

		result.visible = material.visible;
		result.wireframe = material.wireframe;

		result.side = ( material.shadowSide != null ) ? material.shadowSide : shadowSide[ material.side ];

		result.clipShadows = material.clipShadows;
		result.clippingPlanes = material.clippingPlanes;
		result.clipIntersection = material.clipIntersection;

		result.wireframeLinewidth = material.wireframeLinewidth;
		result.linewidth = material.linewidth;

		if ( isPointLight && result.isMeshDistanceMaterial ) {

			result.referencePosition.copy( lightPositionWorld );
			result.nearDistance = shadowCameraNear;
			result.farDistance = shadowCameraFar;

		}

		return result;

	}

	function renderObject( object, camera, shadowCamera, isPointLight ) {

		if ( object.visible === false ) return;

		const visible = object.layers.test( camera.layers );

		if ( visible && ( object.isMesh || object.isLine || object.isPoints ) ) {

			if ( object.castShadow && ( ! object.frustumCulled || _frustum.intersectsObject( object ) ) ) {

				object.modelViewMatrix.multiplyMatrices( shadowCamera.matrixWorldInverse, object.matrixWorld );

				const geometry = _objects.update( object );
				const material = object.material;

				if ( Array.isArray( material ) ) {

					const groups = geometry.groups;

					for ( let k = 0, kl = groups.length; k < kl; k ++ ) {

						const group = groups[ k ];
						const groupMaterial = material[ group.materialIndex ];

						if ( groupMaterial && groupMaterial.visible ) {

							const depthMaterial = getDepthMaterial( object, groupMaterial, isPointLight, _lightPositionWorld, shadowCamera.near, shadowCamera.far );
							_renderer.renderBufferDirect( shadowCamera, null, geometry, depthMaterial, object, group );

						}

					}

				} else if ( material.visible ) {

					const depthMaterial = getDepthMaterial( object, material, isPointLight, _lightPositionWorld, shadowCamera.near, shadowCamera.far );
					_renderer.renderBufferDirect( shadowCamera, null, geometry, depthMaterial, object, null );

				}

			}

		}

		const children = object.children;

		for ( let i = 0, l = children.length; i < l; i ++ ) {

			renderObject( children[ i ], camera, shadowCamera, isPointLight );

		}

	}

}


export { WebGLShadowMap };
