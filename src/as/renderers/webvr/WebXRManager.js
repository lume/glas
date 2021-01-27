/**
 * @author mrdoob / http://mrdoob.com/
 */

import { EventDispatcher } from '../../core/EventDispatcher.js';
import { Group } from '../../objects/Group.js';
import { Matrix4 } from '../../math/Matrix4.js';
import { Vector4 } from '../../math/Vector4';
import { ArrayCamera } from '../../cameras/ArrayCamera.js';
import { PerspectiveCamera } from '../../cameras/PerspectiveCamera.js';
import { WebGLAnimation } from '../webgl/WebGLAnimation.js';
import { setProjectionFromUnion } from './WebVRUtils.js';

function WebXRManager( renderer ) {

	const scope = this;

	const gl = renderer.context;

	const session = null;

	const framebufferScaleFactor = 1.0;

	const referenceSpace = null;
	const referenceSpaceType = 'local-floor';

	const pose = null;

	const controllers = [];
	const inputSources = [];

	function isPresenting() {

		return session !== null && referenceSpace !== null;

	}

	//

	const cameraL = new PerspectiveCamera();
	cameraL.layers.enable( 1 );
	cameraL.viewport = new Vector4();

	const cameraR = new PerspectiveCamera();
	cameraR.layers.enable( 2 );
	cameraR.viewport = new Vector4();

	const cameraVR = new ArrayCamera( [ cameraL, cameraR ] );
	cameraVR.layers.enable( 1 );
	cameraVR.layers.enable( 2 );

	//

	this.enabled = false;

	this.getController = function ( id ) {

		const controller = controllers[ id ];

		if ( controller === undefined ) {

			controller = new Group();
			controller.matrixAutoUpdate = false;
			controller.visible = false;

			controllers[ id ] = controller;

		}

		return controller;

	};

	//

	function onSessionEvent( event ) {

		for ( let i = 0; i < controllers.length; i ++ ) {

			if ( inputSources[ i ] === event.inputSource ) {

				controllers[ i ].dispatchEvent( { type: event.type } );

			}

		}

	}

	function onSessionEnd() {

		renderer.setFramebuffer( null );
		renderer.setRenderTarget( renderer.getRenderTarget() ); // Hack #15830
		animation.stop();

		scope.dispatchEvent( { type: 'sessionend' } );

	}

	function onRequestReferenceSpace( value ) {

		referenceSpace = value;

		animation.setContext( session );
		animation.start();

		scope.dispatchEvent( { type: 'sessionstart' } );

	}

	this.setFramebufferScaleFactor = function ( value ) {

		framebufferScaleFactor = value;

	};

	this.setReferenceSpaceType = function ( value ) {

		referenceSpaceType = value;

	};

	this.getSession = function () {

		return session;

	};

	this.setSession = function ( value ) {

		session = value;

		if ( session !== null ) {

			session.addEventListener( 'select', onSessionEvent );
			session.addEventListener( 'selectstart', onSessionEvent );
			session.addEventListener( 'selectend', onSessionEvent );
			session.addEventListener( 'end', onSessionEnd );

			session.updateRenderState( { baseLayer: new XRWebGLLayer( session, gl ) } );

			session.requestReferenceSpace( referenceSpaceType ).then( onRequestReferenceSpace );

			//

			inputSources = session.inputSources;

			session.addEventListener( 'inputsourceschange', function () {

				inputSources = session.inputSources;
				console.log( inputSources );

				for ( let i = 0; i < controllers.length; i ++ ) {

					const controller = controllers[ i ];
					controller.userData.inputSource = inputSources[ i ];

				}

			} );

		}

	};

	function updateCamera( camera, parent ) {

		if ( parent === null ) {

			camera.matrixWorld.copy( camera.matrix );

		} else {

			camera.matrixWorld.multiplyMatrices( parent.matrixWorld, camera.matrix );

		}

		camera.matrixWorldInverse.getInverse( camera.matrixWorld );

	}

	this.getCamera = function ( camera ) {

		if ( isPresenting() ) {

			const parent = camera.parent;
			const cameras = cameraVR.cameras;

			updateCamera( cameraVR, parent );

			for ( let i = 0; i < cameras.length; i ++ ) {

				updateCamera( cameras[ i ], parent );

			}

			// update camera and its children

			camera.matrixWorld.copy( cameraVR.matrixWorld );

			const children = camera.children;

			for ( let i = 0, l = children.length; i < l; i ++ ) {

				children[ i ].updateMatrixWorld( true );

			}

			setProjectionFromUnion( cameraVR, cameraL, cameraR );

			return cameraVR;

		}

		return camera;

	};

	this.isPresenting = isPresenting;

	// Animation Loop

	const onAnimationFrameCallback = null;

	function onAnimationFrame( time, frame ) {

		pose = frame.getViewerPose( referenceSpace );

		if ( pose !== null ) {

			const views = pose.views;
			const baseLayer = session.renderState.baseLayer;

			renderer.setFramebuffer( baseLayer.framebuffer );

			for ( let i = 0; i < views.length; i ++ ) {

				const view = views[ i ];
				const viewport = baseLayer.getViewport( view );
				const viewMatrix = view.transform.inverse.matrix;

				const camera = cameraVR.cameras[ i ];
				camera.matrix.fromArray( viewMatrix ).getInverse( camera.matrix );
				camera.projectionMatrix.fromArray( view.projectionMatrix );
				camera.viewport.set( viewport.x, viewport.y, viewport.width, viewport.height );

				if ( i === 0 ) {

					cameraVR.matrix.copy( camera.matrix );

				}

			}

		}

		//

		for ( let i = 0; i < controllers.length; i ++ ) {

			const controller = controllers[ i ];

			const inputSource = inputSources[ i ];

			if ( inputSource ) {

				const inputPose = frame.getPose( inputSource.targetRaySpace, referenceSpace );

				if ( inputPose !== null ) {

					controller.matrix.fromArray( inputPose.transform.matrix );
					controller.matrix.decompose( controller.position, controller.rotation, controller.scale );
					controller.visible = true;

					continue;

				}

			}

			controller.visible = false;

		}

		if ( onAnimationFrameCallback ) onAnimationFrameCallback( time );

	}

	const animation = new WebGLAnimation();
	animation.setAnimationLoop( onAnimationFrame );

	this.setAnimationLoop = function ( callback ) {

		onAnimationFrameCallback = callback;

	};

	this.dispose = function () {};

	// DEPRECATED

	this.getStandingMatrix = function () {

		console.warn( 'THREE.WebXRManager: getStandingMatrix() is no longer needed.' );
		return new Matrix4();

	};

	this.getDevice = function () {

		console.warn( 'THREE.WebXRManager: getDevice() has been deprecated.' );

	};

	this.setDevice = function () {

		console.warn( 'THREE.WebXRManager: setDevice() has been deprecated.' );

	};

	this.setFrameOfReferenceType = function () {

		console.warn( 'THREE.WebXRManager: setFrameOfReferenceType() has been deprecated.' );

	};

	this.submitFrame = function () {};

}

Object.assign( WebXRManager.prototype, EventDispatcher.prototype );

export { WebXRManager };
