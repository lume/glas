// Three.js 0.125.0

import {WebGLRenderingContext} from '../../../node_modules/aswebglue/src/WebGL'
import {
	RGBAFormat,
	HalfFloatType,
	FloatType,
	UnsignedByteType,
	LinearEncoding,
	ToneMapping,
	NoToneMapping,
	Precision,
	PowerPreference,
} from '../constants'
// import { MathUtils } from '../math/MathUtils';
// import { DataTexture } from '../textures/DataTexture';
import {Frustum} from '../math/Frustum'
import {Matrix4} from '../math/Matrix4'
import {Vector2} from '../math/Vector2'
import {Vector3} from '../math/Vector3'
import {Vector4} from '../math/Vector4'
import {Color} from '../math/Color'
import {WebGLAnimation} from './webgl/WebGLAnimation'
import {WebGLAttributes} from './webgl/WebGLAttributes'
import {WebGLBackground} from './webgl/WebGLBackground'
import {WebGLBindingStates} from './webgl/WebGLBindingStates'
import {WebGLBufferRenderer} from './webgl/WebGLBufferRenderer'
import {WebGLCapabilities} from './webgl/WebGLCapabilities'
import {WebGLClipping} from './webgl/WebGLClipping'
import {WebGLCubeMaps} from './webgl/WebGLCubeMaps'
import {WebGLExtensions} from './webgl/WebGLExtensions'
import {WebGLGeometries} from './webgl/WebGLGeometries'
import {WebGLIndexedBufferRenderer} from './webgl/WebGLIndexedBufferRenderer'
import {WebGLInfo} from './webgl/WebGLInfo'
// import { WebGLMorphtargets } from './webgl/WebGLMorphtargets';
import {WebGLObjects} from './webgl/WebGLObjects'
import {WebGLPrograms} from './webgl/WebGLPrograms'
import {WebGLProperties} from './webgl/WebGLProperties'
import {RenderTarget, WebGLRenderLists} from './webgl/WebGLRenderLists'
import {WebGLRenderStates} from './webgl/WebGLRenderStates'
import {WebGLShadowMap} from './webgl/WebGLShadowMap'
import {WebGLState} from './webgl/WebGLState'
import {WebGLTextures} from './webgl/WebGLTextures'
import {WebGLUniforms} from './webgl/WebGLUniforms'
import {WebGLUtils} from './webgl/WebGLUtils'
// import { WebXRManager } from './webxr/WebXRManager';
import {WebGLMaterials} from './webgl/WebGLMaterials'

// Types only, but AS doesn't have "import type" syntax yet.
import {Scene} from '../scenes/Scene'
import {Camera} from '../cameras/Camera'
// import { WebGLRenderTarget } from './WebGLRenderTarget';
import {Object3D} from '../core/Object3D'
import {Material} from '../materials/Material'
import {BufferGeometry} from '../core/BufferGeometry'

// export interface Renderer {
// 	domElement: HTMLCanvasElement;

// 	render( scene: Scene, camera: Camera ): void;
// 	setSize( width: f32, height: f32, updateStyle?: boolean ): void;
// }

/** These are options for passing into WebGLRenderer constructor. */
export class WebGLRendererParameters {
	/**
	 * A Canvas where the renderer draws its output.
	 */
	// TODO support this once we have a DOM interface in AssemblyScript
	// canvas?: HTMLCanvasElement

	// For now just pass a context instead.

	/**
	 * A WebGL Rendering Context.
	 * (https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext)
	 *  Default is null
	 */
	context: WebGLRenderingContext | null = null
	/**
	 *  shader precision. Can be Precision.Highp, Precision.Mediump or Precision.Mediump. Defaults to Precision.Highp.
	 */
	precision: Precision = Precision.Highp
	/**
	 * default is true.
	 */
	alpha: boolean = true
	/**
	 * default is true.
	 */
	premultipliedAlpha: boolean = true
	/**
	 * default is false.
	 */
	antialias: boolean = false
	/**
	 * default is true.
	 */
	stencil: boolean = true
	/**
	 * default is false.
	 */
	preserveDrawingBuffer: boolean = false
	/**
	 *  Can be "high-performance", "low-power" or "default". Defaults to "default".
	 */
	powerPreference: PowerPreference = PowerPreference.Default
	/**
	 * default is true.
	 */
	depth: boolean = true
	/**
	 * default is false.
	 */
	logarithmicDepthBuffer: boolean = false
	/**
	 * default is false.
	 */
	failIfMajorPerformanceCaveat: boolean = false
}

export class WebGLDebug {
	/**
	 * Enables error checking and reporting when shader programs are being compiled. Default is true.
	 */
	checkShaderErrors: boolean = true
}

/**
 * The WebGL renderer displays your beautifully crafted scenes using WebGL, if your device supports it.
 * This renderer has way better performance than CanvasRenderer.
 *
 * @see <a href="https://github.com/mrdoob/three.js/blob/master/src/renderers/WebGLRenderer.js">src/renderers/WebGLRenderer.js</a>
 */
export class WebGLRenderer /*implements Renderer*/ {
	// private _canvas: HTMLCanvasElement
	// private _context: WebGLRenderingContext | null = null
	private _gl: WebGLRenderingContext
	private _alpha: boolean
	private _depth: boolean
	private _stencil: boolean
	private _antialias: boolean
	private _premultipliedAlpha: boolean
	private _preserveDrawingBuffer: boolean
	private _powerPreference: PowerPreference
	private _failIfMajorPerformanceCaveat: boolean
	/**
	 * parameters is an optional object with properties defining the renderer's behaviour. The constructor also accepts no parameters at all. In all cases, it will assume sane defaults when parameters are missing.
	 */
	constructor(private parameters: WebGLRendererParameters | null = null) {
		this.parameters = this.parameters || new WebGLRendererParameters()

		// this._canvas = this.parameters.canvas != null ? this.parameters.canvas : createCanvasElement()
		// this._context = this.parameters.context

		// custom
		this._gl = this.parameters.context || new WebGLRenderingContext('#glas-canvas', 'webgl')

		this._alpha = this.parameters.alpha
		this._depth = this.parameters.depth
		this._stencil = this.parameters.stencil
		this._antialias = this.parameters.antialias
		this._premultipliedAlpha = this.parameters.premultipliedAlpha
		this._preserveDrawingBuffer = this.parameters.preserveDrawingBuffer
		this._powerPreference = this.parameters.powerPreference
		this._failIfMajorPerformanceCaveat = this.parameters.failIfMajorPerformanceCaveat

		this.initGLContext()
	}

	// /**
	//  * A Canvas where the renderer draws its output.
	//  * This is automatically created by the renderer in the constructor (if not provided already); you just need to add it to your page.
	//  */
	// domElement: HTMLCanvasElement

	/**
	 * The HTML5 Canvas's 'webgl' context obtained from the canvas where the renderer will draw.
	 */
	context: WebGLRenderingContext

	/**
	 * Defines whether the renderer should automatically clear its output before rendering. Default is true.
	 */
	autoClear: boolean = true

	/**
	 * If autoClear is true, defines whether the renderer should clear the color buffer. Default is true.
	 */
	autoClearColor: boolean = true

	/**
	 * If autoClear is true, defines whether the renderer should clear the depth buffer. Default is true.
	 */
	autoClearDepth: boolean = true

	/**
	 * If autoClear is true, defines whether the renderer should clear the stencil buffer. Default is true.
	 */
	autoClearStencil: boolean = true

	/**
	 * Debug configurations.
	 */
	debug: WebGLDebug = new WebGLDebug()

	/**
	 * Defines whether the renderer should sort objects. Default is true.
	 */
	sortObjects: boolean = true

	// clippingPlanes: any[]
	// localClippingEnabled: boolean

	extensions: WebGLExtensions

	physicallyCorrectLights: boolean = false
	toneMapping: ToneMapping = NoToneMapping
	toneMappingExposure: f32 = 1.0

	/**
	 * Default is 8.
	 */
	maxMorphTargets: i32 = 8

	/**
	 * Default is 4.
	 */
	maxMorphNormals: i32 = 4

	info: WebGLInfo

	shadowMap: WebGLShadowMap

	private pixelRatio: f32 = 1.0

	capabilities: WebGLCapabilities | null = null

	// TODO, a bit of work is needed in ASWebGLue for this.
	// xr: WebXRManager

	renderLists: WebGLRenderLists

	state: WebGLState | null = null

	private utils: WebGLUtils
	private properties: WebGLProperties
	private textures: WebGLTextures
	private cubemaps: WebGLCubeMaps
	private attributes: WebGLAttributes
	private bindingStates: WebGLBindingStates
	private geometries: WebGLGeometries
	private objects: WebGLObjects
	private morphtargets: WebGLMorphtargets
	private clipping: WebGLClipping
	private programCache: WebGLPrograms
	private materials: WebGLMaterials
	private renderStates: WebGLRenderStates
	private background: WebGLBackground
	private bufferRenderer: WebGLBufferRenderer
	private indexedBufferRenderer: WebGLIndexedBufferRenderer

	private initGLContext() {
		this.extensions = new WebGLExtensions(this._gl!)

		this.capabilities = new WebGLCapabilities(this._gl!, this.extensions, this.parameters)

		// this.extensions.init(this.capabilities)

		// this.utils = new WebGLUtils(this._gl, this.extensions, this.capabilities)

		this.state = new WebGLState(this._gl, this.extensions, this.capabilities)
		// this.state.scissor( _currentScissor.copy( _scissor ).multiplyScalar( _pixelRatio ).floor() );
		// this.state.viewport( _currentViewport.copy( _viewport ).multiplyScalar( _pixelRatio ).floor() );

		// this.info = new WebGLInfo( this._gl );
		this.properties = new WebGLProperties()
		this.textures = new WebGLTextures(
			this._gl,
			this.extensions,
			this.state,
			this.properties,
			this.capabilities,
			this.utils,
			this.info
		)
		this.cubemaps = new WebGLCubeMaps(this)
		this.attributes = new WebGLAttributes(this._gl, this.capabilities)
		// CONTINUE (note to self for @trusktr): continue updating the webgl/* classes to r125, and adding all the types to WebGLProperties as needed.
		this.bindingStates = new WebGLBindingStates(this._gl, this.extensions, this.attributes, this.capabilities)
		this.geometries = new WebGLGeometries(this._gl, this.attributes, this.info, this.bindingStates)
		this.objects = new WebGLObjects(this._gl, this.geometries, this.attributes, this.info)
		// this.morphtargets = new WebGLMorphtargets( this._gl );
		this.clipping = new WebGLClipping(this.properties)
		this.programCache = new WebGLPrograms(
			this,
			this.cubemaps,
			this.extensions,
			this.capabilities,
			this.bindingStates,
			this.clipping
		)
		this.materials = new WebGLMaterials(this.properties)
		this.renderLists = new WebGLRenderLists(this.properties)
		this.renderStates = new WebGLRenderStates(this.extensions, this.capabilities)
		this.background = new WebGLBackground(this, this.cubemaps, this.state, this.objects, this._premultipliedAlpha)

		this.bufferRenderer = new WebGLBufferRenderer(this._gl, this.extensions, info, this.capabilities)
		this.indexedBufferRenderer = new WebGLIndexedBufferRenderer(this._gl, this.extensions, info, this.capabilities)

		this.info.programs = programCache.programs
	}

	// /**
	//  * Return the WebGL context.
	//  */
	// getContext(): WebGLRenderingContext
	// getContextAttributes(): any
	// forceContextLoss(): void

	// /**
	//  * @deprecated Use {@link WebGLCapabilities#getMaxAnisotropy .capabilities.getMaxAnisotropy()} instead.
	//  */
	// getMaxAnisotropy(): f32

	// /**
	//  * @deprecated Use {@link WebGLCapabilities#precision .capabilities.precision} instead.
	//  */
	// getPrecision(): string

	// getPixelRatio(): f32
	setPixelRatio(value: f32): void {}

	// getDrawingBufferSize(target: Vector2): Vector2
	// setDrawingBufferSize(width: f32, height: f32, pixelRatio: f32): void

	// getSize(target: Vector2): Vector2

	/**
	 * Resizes the output canvas to (width, height), and also sets the viewport to fit that size, starting in (0, 0).
	 */
	setSize(width: f32, height: f32, updateStyle?: boolean): void {}

	// getCurrentViewport(target: Vector4): Vector4

	// /**
	//  * Copies the viewport into target.
	//  */
	// getViewport(target: Vector4): Vector4

	/**
	 * Sets the viewport to render from (x, y) to (x + width, y + height).
	 * (x, y) is the lower-left corner of the region.
	 */
	setViewport(x: Vector4 | f32, y?: f32, width?: f32, height?: f32): void {}

	// /**
	//  * Copies the scissor area into target.
	//  */
	// getScissor(target: Vector4): Vector4

	// /**
	//  * Sets the scissor area from (x, y) to (x + width, y + height).
	//  */
	// setScissor(x: Vector4 | f32, y?: f32, width?: f32, height?: f32): void

	// /**
	//  * Returns true if scissor test is enabled; returns false otherwise.
	//  */
	// getScissorTest(): boolean

	// /**
	//  * Enable the scissor test. When this is enabled, only the pixels within the defined scissor area will be affected by further renderer actions.
	//  */
	// setScissorTest(enable: boolean): void

	// /**
	//  * Returns a THREE.Color instance with the current clear color.
	//  */
	// getClearColor(): Color

	/**
	 * Sets the clear color, using color for the color and alpha for the opacity.
	 */
	setClearColor(color: Color, alpha?: f32): void {}
	// setClearColor(color: string, alpha?: f32): void
	// setClearColor(color: f32, alpha?: f32): void

	// /**
	//  * Returns a float with the current clear alpha. Ranges from 0 to 1.
	//  */
	// getClearAlpha(): f32

	// setClearAlpha(alpha: f32): void

	/**
	 * Tells the renderer to clear its color, depth or stencil drawing buffer(s).
	 * Arguments default to true
	 */
	clear(color?: boolean, depth?: boolean, stencil?: boolean): void {}

	// clearColor(): void
	// clearDepth(): void
	// clearStencil(): void
	// clearTarget(renderTarget: WebGLRenderTarget, color: boolean, depth: boolean, stencil: boolean): void

	// /**
	//  * @deprecated Use {@link WebGLState#reset .state.reset()} instead.
	//  */
	// resetGLState(): void
	dispose(): void {}

	// /**
	//  * Tells the shadow map plugin to update using the passed scene and camera parameters.
	//  *
	//  * @param scene an instance of Scene
	//  * @param camera — an instance of Camera
	//  */
	// renderBufferImmediate(object: Object3D, program: Object, material: Material): void

	private _emptyScene = {} // TODO

	private renderBufferDirect(
		camera: Camera,
		scene: Object | null,
		geometry: BufferGeometry,
		material: Material,
		object: Object3D,
		group: TODO_what_is_it
	): void {
		if (!scene) scene = this._emptyScene
	}

	// /**
	//  * A build in function that can be used instead of requestAnimationFrame. For WebVR projects this function must be used.
	//  * @param callback The function will be called every available frame. If `null` is passed it will stop any already ongoing animation.
	//  */
	// setAnimationLoop(callback: Function): void

	// /**
	//  * @deprecated Use {@link WebGLRenderer#setAnimationLoop .setAnimationLoop()} instead.
	//  */
	// animate(callback: Function): void

	// /**
	//  * Compiles all materials in the scene with the camera. This is useful to precompile shaders before the first rendering.
	//  */
	// compile(scene: Scene, camera: Camera): void

	/**
	 * Render a scene using a camera.
	 * The render is done to a previously specified {@link WebGLRenderTarget#renderTarget .renderTarget} set by calling
	 * {@link WebGLRenderer#setRenderTarget .setRenderTarget} or to the canvas as usual.
	 *
	 * By default render buffers are cleared before rendering but you can prevent this by setting the property
	 * {@link WebGLRenderer#autoClear autoClear} to false. If you want to prevent only certain buffers being cleared
	 * you can set either the {@link WebGLRenderer#autoClearColor autoClearColor},
	 * {@link WebGLRenderer#autoClearStencil autoClearStencil} or {@link WebGLRenderer#autoClearDepth autoClearDepth}
	 * properties to false. To forcibly clear one ore more buffers call {@link WebGLRenderer#clear .clear}.
	 */
	render(scene: Scene, camera: Camera): void {
		// TODO remove
		// let forceClear

		// TODO, we asume it won't be lost for now.
		// if (_isContextLost === true) {
		// 	throw new Error('Context is lost, unable to render.')
		// }

		// reset caching for this frame

		bindingStates.resetDefaultState()
		_currentMaterialId = -1
		_currentCamera = null

		// update scene graph

		if (scene.autoUpdate === true) scene.updateMatrixWorld()

		// update camera matrices and frustum

		if (camera.parent === null) camera.updateMatrixWorld()

		// if (this.xr.enabled === true && this.xr.isPresenting === true) {
		// 	camera = this.xr.getCamera(camera)
		// }

		//
		if (scene.isScene === true) scene.onBeforeRender(_this, scene, camera, _currentRenderTarget)

		currentRenderState = this.renderStates.get(scene, renderStateStack.length)
		currentRenderState.init()

		renderStateStack.push(currentRenderState)

		_projScreenMatrix.multiplyMatrices(camera.projectionMatrix, camera.matrixWorldInverse)
		_frustum.setFromProjectionMatrix(_projScreenMatrix)

		_localClippingEnabled = this.localClippingEnabled
		_clippingEnabled = clipping.init(this.clippingPlanes, _localClippingEnabled, camera)

		currentRenderList = renderLists.get(scene, camera)
		currentRenderList.init()

		projectObject(scene, camera, 0, _this.sortObjects)

		currentRenderList.finish()

		if (_this.sortObjects === true) {
			currentRenderList.sort(_opaqueSort, _transparentSort)
		}

		//

		if (_clippingEnabled === true) clipping.beginShadows()

		const shadowsArray = currentRenderState.state.shadowsArray

		shadowMap.render(shadowsArray, scene, camera)

		currentRenderState.setupLights()
		currentRenderState.setupLightsView(camera)

		if (_clippingEnabled === true) clipping.endShadows()

		//

		if (this.info.autoReset === true) this.info.reset()

		//

		background.render(currentRenderList, scene, camera /*TODO REMOVE , forceClear*/)

		// render scene

		const opaqueObjects = currentRenderList.opaque
		const transparentObjects = currentRenderList.transparent

		if (opaqueObjects.length > 0) renderObjects(opaqueObjects, scene, camera)
		if (transparentObjects.length > 0) renderObjects(transparentObjects, scene, camera)

		//

		if (scene.isScene === true) scene.onAfterRender(_this, scene, camera)

		//

		if (_currentRenderTarget !== null) {
			// Generate mipmap if we're using any kind of mipmap filtering

			textures.updateRenderTargetMipmap(_currentRenderTarget)

			// resolve multisample renderbuffers to a single-sample texture if necessary

			textures.updateMultisampleRenderTarget(_currentRenderTarget)
		}

		// Ensure depth buffer writing is enabled so it can be cleared on next render

		state.buffers.depth.setTest(true)
		state.buffers.depth.setMask(true)
		state.buffers.color.setMask(true)

		state.setPolygonOffset(false)

		// this._gl.finish(); // This was already commented out in Three.js

		renderStateStack.pop()
		if (renderStateStack.length > 0) {
			currentRenderState = renderStateStack[renderStateStack.length - 1]
		} else {
			currentRenderState = null
		}

		currentRenderList = null
	}

	// /**
	//  * Returns the current active cube face.
	//  */
	// getActiveCubeFace(): f32

	// /**
	//  * Returns the current active mipmap level.
	//  */
	// getActiveMipMapLevel(): f32

	/**
	 * Returns the current render target. If no render target is set, null is returned.
	 */
	getRenderTarget(): RenderTarget | null {
		// TODO
		return null
	}

	// /**
	//  * @deprecated Use {@link WebGLRenderer#getRenderTarget .getRenderTarget()} instead.
	//  */
	// getCurrentRenderTarget(): RenderTarget | null

	// /**
	//  * Sets the active render target.
	//  *
	//  * @param renderTarget The {@link WebGLRenderTarget renderTarget} that needs to be activated. When `null` is given, the canvas is set as the active render target instead.
	//  * @param activeCubeFace Specifies the active cube side (PX 0, NX 1, PY 2, NY 3, PZ 4, NZ 5) of {@link WebGLRenderTargetCube}.
	//  * @param activeMipMapLevel Specifies the active mipmap level.
	//  */
	// setRenderTarget(renderTarget: RenderTarget | null, activeCubeFace?: f32, activeMipMapLevel?: f32): void

	// readRenderTargetPixels(
	// 	renderTarget: RenderTarget,
	// 	x: f32,
	// 	y: f32,
	// 	width: f32,
	// 	height: f32,
	// 	buffer: any,
	// 	activeCubeFaceIndex?: f32
	// ): void

	// /**
	//  * @deprecated
	//  */
	// gammaFactor: f32

	// /**
	//  * @deprecated Use {@link WebGLShadowMap#enabled .shadowMap.enabled} instead.
	//  */
	// shadowMapEnabled: boolean

	// /**
	//  * @deprecated Use {@link WebGLShadowMap#type .shadowMap.type} instead.
	//  */
	// shadowMapType: ShadowMapType

	// /**
	//  * @deprecated Use {@link WebGLShadowMap#cullFace .shadowMap.cullFace} instead.
	//  */
	// shadowMapCullFace: CullFace

	// /**
	//  * @deprecated Use {@link WebGLExtensions#get .extensions.get( 'OES_texture_float' )} instead.
	//  */
	// supportsFloatTextures(): any

	// /**
	//  * @deprecated Use {@link WebGLExtensions#get .extensions.get( 'OES_texture_half_float' )} instead.
	//  */
	// supportsHalfFloatTextures(): any

	// /**
	//  * @deprecated Use {@link WebGLExtensions#get .extensions.get( 'OES_standard_derivatives' )} instead.
	//  */
	// supportsStandardDerivatives(): any

	// /**
	//  * @deprecated Use {@link WebGLExtensions#get .extensions.get( 'WEBGL_compressed_texture_s3tc' )} instead.
	//  */
	// supportsCompressedTextureS3TC(): any

	// /**
	//  * @deprecated Use {@link WebGLExtensions#get .extensions.get( 'WEBGL_compressed_texture_pvrtc' )} instead.
	//  */
	// supportsCompressedTexturePVRTC(): any

	// /**
	//  * @deprecated Use {@link WebGLExtensions#get .extensions.get( 'EXT_blend_minmax' )} instead.
	//  */
	// supportsBlendMinMax(): any

	// /**
	//  * @deprecated Use {@link WebGLCapabilities#vertexTextures .capabilities.vertexTextures} instead.
	//  */
	// supportsVertexTextures(): any

	// /**
	//  * @deprecated Use {@link WebGLExtensions#get .extensions.get( 'ANGLE_instanced_arrays' )} instead.
	//  */
	// supportsInstancedArrays(): any

	// /**
	//  * @deprecated Use {@link WebGLRenderer#setScissorTest .setScissorTest()} instead.
	//  */
	// enableScissorTest(boolean: any): any
}
