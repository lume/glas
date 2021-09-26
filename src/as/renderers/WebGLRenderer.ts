// Three.js 0.125.0

import {
	WebGLBuffer,
	WebGLContextAttributes,
	WebGLFramebuffer,
	WebGLRenderingContext,
} from '../../../node_modules/aswebglue/src/WebGL'
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
	TextureEncoding,
} from '../constants'
import * as MathUtils from '../math/MathUtils'
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
import {
	painterSortStable,
	RenderItem,
	reversePainterSortStable,
	WebGLRenderList,
	WebGLRenderLists,
} from './webgl/WebGLRenderLists'
import {WebGLRenderState, WebGLRenderStates} from './webgl/WebGLRenderStates'
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
import {WebGLRenderTarget} from './WebGLRenderTarget'
import {Plane} from '../math/Plane'
import {WebGLProgram} from './webgl/WebGLProgram'
import {Mesh} from '../objects/Mesh'
import {Light} from '../lights/Light'
import {Group} from '../objects/Group'
import {Texture} from '../textures/Texture'

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
	// TODO PORT support this once we have a DOM interface in AssemblyScript
	canvas?: any /*HTMLCanvasElement*/

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
	private _canvas: any /*TODO PORT HTMLCanvasElement*/
	private _context: WebGLRenderingContext | null = null
	private _alpha: boolean
	private _depth: boolean
	private _stencil: boolean
	private _antialias: boolean
	private _premultipliedAlpha: boolean
	private _preserveDrawingBuffer: boolean
	private _powerPreference: PowerPreference
	private _failIfMajorPerformanceCaveat: boolean

	private currentRenderList: WebGLRenderList | null = null
	private currentRenderState: WebGLRenderState | null = null

	// render() can be called from within a callback triggered by another render.
	// We track this so that the nested render call gets its state isolated from the parent render call.
	private renderStateStack: WebGLRenderState[] = []

	// public properties

	// /**
	//  * A Canvas where the renderer draws its output.
	//  * This is automatically created by the renderer in the constructor (if not provided already); you just need to add it to your page.
	//  */
	domElement: any /*TODO PORT HTMLCanvasElement*/

	/**
	 * Debug configuration container
	 */
	debug: WebGLDebug = new WebGLDebug()

	// clearing

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

	// scene graph

	/**
	 * Defines whether the renderer should sort objects. Default is true.
	 */
	sortObjects: boolean = true

	// user-defined clipping

	clippingPlanes: Plane[] = []
	localClippingEnabled: boolean = false

	// physically based shading

	outputEncoding: TextureEncoding = LinearEncoding

	// physical lights

	physicallyCorrectLights: boolean = false

	// tone mapping

	toneMapping: ToneMapping = NoToneMapping
	toneMappingExposure: f32 = 1.0

	// morphs

	/**
	 * Default is 8.
	 */
	maxMorphTargets: i32 = 8

	/**
	 * Default is 4.
	 */
	maxMorphNormals: i32 = 4

	// internal properties

	private _isContextLost: boolean = false

	// internal state cache

	private _framebuffer: WebGLFramebuffer | null = null

	private _currentActiveCubeFace: i32 = 0
	private _currentActiveMipmapLevel: i32 = 0
	private _currentRenderTarget: WebGLRenderTarget | null = null
	private _currentFramebuffer: WebGLFramebuffer | null = null
	private _currentMaterialId: i32 = -1

	private _currentCamera: Camera | null = null

	private readonly _currentViewport: Vector4 = new Vector4()
	private readonly _currentScissor: Vector4 = new Vector4()
	private _currentScissorTest: boolean = false

	//

	// TODO PORT use of `this` not allowed in class fields in AS
	private _width = this._canvas.width
	private _height = this._canvas.height

	private _pixelRatio: f32 = 1.0
	// TODO PORT functions are not nullable
	private _opaqueSort: (a: RenderItem, b: RenderItem) => i32 = painterSortStable
	private _transparentSort: (a: RenderItem, b: RenderItem) => i32 = reversePainterSortStable

	// TODO PORT use of `this` not allowed in class fields in AS
	private readonly _viewport = new Vector4(0, 0, this._width, this._height)
	private readonly _scissor = new Vector4(0, 0, this._width, this._height)
	private _scissorTest: boolean = false

	// frustum

	private readonly _frustum: Frustum = new Frustum()

	// clipping

	private _clippingEnabled: boolean = false
	private _localClippingEnabled: boolean = false

	// camera matrices cache

	private _projScreenMatrix: Matrix4 = new Matrix4()

	private _vector3: Vector3 = new Vector3()

	private _emptyScene: TODO = {background: null, fog: null, environment: null, overrideMaterial: null, isScene: true}

	/**
	 * The HTML5 Canvas's 'webgl' context obtained from the canvas where the renderer will draw.
	 */
	private _gl: WebGLRenderingContext

	extensions: WebGLExtensions
	capabilities: WebGLCapabilities | null = null
	state: WebGLState | null = null
	info: WebGLInfo

	properties: WebGLProperties
	private textures: WebGLTextures
	private cubemaps: WebGLCubeMaps
	private attributes: WebGLAttributes
	private geometries: WebGLGeometries
	private objects: WebGLObjects

	private programCache: WebGLPrograms
	private materials: WebGLMaterials
	renderLists: WebGLRenderLists
	private renderStates: WebGLRenderStates
	private clipping: WebGLClipping

	private background: WebGLBackground
	private morphtargets: WebGLMorphtargets
	private bufferRenderer: WebGLBufferRenderer
	private indexedBufferRenderer: WebGLIndexedBufferRenderer

	private utils: WebGLUtils
	private bindingStates: WebGLBindingStates

	// TODO, a bit of work is needed in ASWebGLue/asdom for this.
	xr: any /*TODO PORT WebXRManager*/

	shadowMap: WebGLShadowMap = new WebGLShadowMap(this)

	// In lieu of AS not yet allowing functions to be nullable, we'll use an array:
	// length 0 means no callback, length 1 means there is a callback.
	private onAnimationFrameCallback: Array<AnimationFrameCallback> = []

	private readonly animation = new WebGLAnimation()

	// TODO see which variables were `const` in the JS version, and use `readonly` for those.

	/**
	 * parameters is an optional object with properties defining the renderer's behaviour. The constructor also accepts no parameters at all. In all cases, it will assume sane defaults when parameters are missing.
	 */
	constructor(private parameters: WebGLRendererParameters | null = null) {
		this.parameters = this.parameters || new WebGLRendererParameters()

		this._canvas = this.parameters.canvas
		if (!this._canvas) this._canvas = createCanvasElement()
		this._context = this.parameters.context

		this._alpha = this.parameters.alpha
		this._depth = this.parameters.depth
		this._stencil = this.parameters.stencil
		this._antialias = this.parameters.antialias
		this._premultipliedAlpha = this.parameters.premultipliedAlpha
		this._preserveDrawingBuffer = this.parameters.preserveDrawingBuffer
		this._powerPreference = this.parameters.powerPreference
		this._failIfMajorPerformanceCaveat = this.parameters.failIfMajorPerformanceCaveat

		this.domElement = this._canvas

		// TODO PORT replace this with WebGLRenderingContext from asdom.
		const gl = (this._gl = this._context || new WebGLRenderingContext('#glas-canvas', 'webgl'))

		try {
			// TODO PORT this needs a class type.
			const contextAttributes = {
				alpha: this._alpha,
				depth: this._depth,
				stencil: this._stencil,
				antialias: this._antialias,
				premultipliedAlpha: this._premultipliedAlpha,
				preserveDrawingBuffer: this._preserveDrawingBuffer,
				powerPreference: this._powerPreference,
				failIfMajorPerformanceCaveat: this._failIfMajorPerformanceCaveat,
			}

			// event listeners must be registered before WebGL context is created, see #12753

			this._canvas.addEventListener('webglcontextlost', this.onContextLost, false)
			this._canvas.addEventListener('webglcontextrestored', this.onContextRestore, false)

			if (gl === null) {
				const contextNames = ['webgl2', 'webgl', 'experimental-webgl']

				if (this.isWebGL1Renderer === true) {
					contextNames.shift()
				}

				gl = this._getContext(contextNames, contextAttributes)

				if (gl === null) {
					if (this._getContext(contextNames)) {
						throw new Error('Error creating WebGL context with your selected attributes.')
					} else {
						throw new Error('Error creating WebGL context.')
					}
				}
			}

			// Some experimental-webgl implementations do not have getShaderPrecisionFormat

			if (gl.getShaderPrecisionFormat === undefined) {
				gl.getShaderPrecisionFormat = function () {
					return {rangeMin: 1, rangeMax: 1, precision: 1}
				}
			}
		} catch (error) {
			console.error('THREE.WebGLRenderer: ' + error.message)
			throw error
		}

		this.initGLContext()

		this.animation.setAnimationLoop(this.onAnimationFrame)

		// TODO PORT Why is Three.js passing window into animation.setContext
		if (typeof window !== 'undefined') this.animation.setContext(window)

		// TODO PORT port devtools for lume/glas?
		// if (typeof __THREE_DEVTOOLS__ !== 'undefined') {
		// 	__THREE_DEVTOOLS__.dispatchEvent(new CustomEvent('observe', {detail: this})) // eslint-disable-line no-undef
		// }
	}

	private getTargetPixelRatio(): f32 {
		return this._currentRenderTarget === null ? this._pixelRatio : 1
	}

	private _getContext(contextNames: string[], contextAttributes: TODO) {
		for (let i = 0; i < contextNames.length; i++) {
			const contextName = contextNames[i]
			const context = this._canvas.getContext(contextName, contextAttributes)
			if (context !== null) return context
		}

		return null
	}

	private initGLContext() {
		const gl = this._gl

		this.extensions = new WebGLExtensions(gl)

		this.capabilities = new WebGLCapabilities(gl, this.extensions, this.parameters)

		// this.extensions.init(this.capabilities)

		// this.utils = new WebGLUtils(gl, this.extensions, this.capabilities)

		this.state = new WebGLState(gl, this.extensions, this.capabilities)
		// this.state.scissor( this._currentScissor.copy( _scissor ).multiplyScalar( _pixelRatio ).floor() );
		// this.state.viewport( this._currentViewport.copy( _viewport ).multiplyScalar( _pixelRatio ).floor() );

		// this.info = new WebGLInfo( gl );
		this.properties = new WebGLProperties()
		this.textures = new WebGLTextures(
			gl,
			this.extensions,
			this.state,
			this.properties,
			this.capabilities,
			this.utils,
			this.info
		)
		this.cubemaps = new WebGLCubeMaps(this)
		this.attributes = new WebGLAttributes(gl, this.capabilities)
		// CONTINUE (note to self for @trusktr): continue updating the webgl/* classes to r125, and adding all the types to WebGLProperties as needed.
		this.bindingStates = new WebGLBindingStates(gl, this.extensions, this.attributes, this.capabilities)
		this.geometries = new WebGLGeometries(gl, this.attributes, this.info, this.bindingStates)
		this.objects = new WebGLObjects(gl, this.geometries, this.attributes, this.info)
		// this.morphtargets = new WebGLMorphtargets( gl );
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

		this.bufferRenderer = new WebGLBufferRenderer(gl, this.extensions, info, this.capabilities)
		this.indexedBufferRenderer = new WebGLIndexedBufferRenderer(gl, this.extensions, info, this.capabilities)

		this.info.programs = programCache.programs
	}

	/**
	 * Return the WebGL context.
	 */
	getContext(): WebGLRenderingContext {
		return this._gl
	}

	getContextAttributes(): WebGLContextAttributes {
		return this._gl.getContextAttributes()
	}

	forceContextLoss(): void {
		const extension = this.extensions.get('WEBGL_lose_context')
		if (extension) extension.loseContext()
	}

	forceContextRestore(): void {
		const extension = this.extensions.get('WEBGL_lose_context')
		if (extension) extension.restoreContext()
	}

	getPixelRatio(): f32 {
		return this._pixelRatio
	}

	setPixelRatio(value: f32): void {
		this._pixelRatio = value
		this.setSize(this._width, this._height, false)
	}

	getSize(target: Vector2): Vector2 {
		return target.set(this._width, this._height)
	}

	/**
	 * Resizes the output canvas to (width, height), and also sets the viewport to fit that size, starting in (0, 0).
	 */
	setSize(width: f32, height: f32, updateStyle?: boolean): void {
		if (this.xr.isPresenting) {
			console.warn("THREE.WebGLRenderer: Can't change size while VR device is presenting.")
			return
		}

		this._width = width
		this._height = height

		this._canvas.width = Math.floor(width * this._pixelRatio)
		this._canvas.height = Math.floor(height * this._pixelRatio)

		if (updateStyle !== false) {
			this._canvas.style.width = width + 'px'
			this._canvas.style.height = height + 'px'
		}

		this.setViewport(0, 0, width, height)
	}

	getDrawingBufferSize(target: Vector2): Vector2 {
		return target.set(this._width * this._pixelRatio, this._height * this._pixelRatio).floor()
	}

	setDrawingBufferSize(width: f32, height: f32, pixelRatio: f32): void {
		this._width = width
		this._height = height

		this._pixelRatio = pixelRatio

		this._canvas.width = Math.floor(width * pixelRatio)
		this._canvas.height = Math.floor(height * pixelRatio)

		this.setViewport(0, 0, width, height)
	}

	getCurrentViewport(target: Vector4): Vector4 {
		return target.copy(this._currentViewport)
	}

	/**
	 * Copies the viewport into target.
	 */
	getViewport(target: Vector4): Vector4 {
		return target.copy(this._viewport)
	}

	/**
	 * Sets the viewport to render from (x, y) to (x + width, y + height).
	 * (x, y) is the lower-left corner of the region.
	 */
	setViewport<T>(x: T, y: f32 = 0, width: f32 = 1, height: f32 = 1): void {
		if (x instanceof Vector4) {
			this._viewport.set(x.x, x.y, x.z, x.w)
		} else if (isFloat<T>(x)) {
			this._viewport.set(x, y, width, height)
		} else ERROR('WebGLRenderer.setViewport: Invalid value for x.')

		this.state!.viewport(this._currentViewport.copy(this._viewport).multiplyScalar(this._pixelRatio).floor())
	}

	/**
	 * Copies the scissor area into target.
	 */
	getScissor(target: Vector4): Vector4 {
		return target.copy(this._scissor)
	}

	/**
	 * Sets the scissor area from (x, y) to (x + width, y + height).
	 */
	setScissor<T>(x: T, y: f32 = 0, width: f32 = 1, height: f32 = 1): void {
		if (x instanceof Vector4) {
			this._scissor.set(x.x, x.y, x.z, x.w)
		} else if (isFloat<T>(x)) {
			this._scissor.set(x, y, width, height)
		} else ERROR('WebGLRenderer.setScissor: Invalid value for x.')

		this.state!.scissor(this._currentScissor.copy(this._scissor).multiplyScalar(this._pixelRatio).floor())
	}

	/**
	 * Returns true if scissor test is enabled; returns false otherwise.
	 */
	getScissorTest(): boolean {
		return this._scissorTest
	}

	/**
	 * Enable the scissor test. When this is enabled, only the pixels within the defined scissor area will be affected by further renderer actions.
	 */
	setScissorTest(enable: boolean): void {
		this.state!.setScissorTest((this._scissorTest = enable))
	}

	/**
	 * Sets the custom opaque sort function for the WebGLRenderLists. Pass null to use the default painterSortStable function.
	 */
	setOpaqueSort(method: (a: RenderItem, b: RenderItem) => i32): void {
		this._opaqueSort = method
	}

	/**
	 * Sets the custom transparent sort function for the WebGLRenderLists. Pass null to use the default reversePainterSortStable function.
	 */
	setTransparentSort(method: (a: RenderItem, b: RenderItem) => i32): void {
		this._transparentSort = method
	}

	// Clearing

	/**
	 * Returns a THREE.Color instance with the current clear color.
	 */
	getClearColor(target: Color): Color {
		return target.copy(this.background.getClearColor())
	}

	/**
	 * Sets the clear color, using color for the color and alpha for the opacity.
	 * @param color - This can be a string, an f32, or a Color instance.
	 */
	setClearColor<T>(color: T, alpha: f32 = 1.0): void {
		this.background.setClearColor<T>(color, alpha)
	}

	/**
	 * Returns a float with the current clear alpha. Ranges from 0 to 1.
	 */
	getClearAlpha(): f32 {
		return this.background.getClearAlpha()
	}

	setClearAlpha(alpha: f32): void {
		this.background.setClearAlpha(alpha)
	}

	/**
	 * Tells the renderer to clear its color, depth or stencil drawing buffer(s).
	 * Arguments default to true
	 */
	clear(color: boolean = true, depth: boolean = true, stencil: boolean = true): void {
		let bits = 0
		const gl = this._gl

		if (color === undefined || color) bits |= gl.COLOR_BUFFER_BIT
		if (depth === undefined || depth) bits |= gl.DEPTH_BUFFER_BIT
		if (stencil === undefined || stencil) bits |= gl.STENCIL_BUFFER_BIT

		gl.clear(bits)
	}

	clearColor(): void {
		this.clear(true, false, false)
	}

	clearDepth(): void {
		this.clear(false, true, false)
	}

	clearStencil(): void {
		this.clear(false, false, true)
	}

	dispose(): void {
		this._canvas.removeEventListener('webglcontextlost', this.onContextLost, false)
		this._canvas.removeEventListener('webglcontextrestored', this.onContextRestore, false)

		this.renderLists.dispose()
		this.renderStates.dispose()
		this.properties.dispose()
		this.cubemaps.dispose()
		this.objects.dispose()
		this.bindingStates.dispose()

		this.xr.dispose()

		this.animation.stop()
	}

	private onContextLost(event: Event): void {
		event.preventDefault()

		console.log('THREE.WebGLRenderer: Context Lost.')

		this._isContextLost = true
	}

	private onContextRestore(/* event */): void {
		console.log('THREE.WebGLRenderer: Context Restored.')

		this._isContextLost = false

		this.initGLContext()
	}

	private onMaterialDispose(event): void {
		const material = event.target

		material.removeEventListener('dispose', this.onMaterialDispose)

		this.deallocateMaterial(material)
	}

	// Buffer deallocation

	private deallocateMaterial(material: Material) {
		this.releaseMaterialProgramReference(material)

		this.properties.remove(material)
	}

	private releaseMaterialProgramReference(material: Material) {
		const programInfo = this.properties.get(material).program

		if (programInfo !== undefined) {
			this.programCache.releaseProgram(programInfo)
		}
	}

	// Buffer rendering

	private renderObjectImmediate(object: ImmediateRenderObject, program: WebGLProgram) {
		object.render(object => {
			this.renderBufferImmediate(object, program)
		})
	}

	/**
	 * Tells the shadow map plugin to update using the passed scene and camera parameters.
	 *
	 * @param scene an instance of Scene
	 * @param camera — an instance of Camera
	 */
	renderBufferImmediate(object: Object3D, program: Object, material: Material): void {
		this.bindingStates.initAttributes()

		const buffers = this.properties.get(object)
		const gl = this._gl

		if (object.hasPositions && !buffers.position) buffers.position = gl.createBuffer()
		if (object.hasNormals && !buffers.normal) buffers.normal = gl.createBuffer()
		if (object.hasUvs && !buffers.uv) buffers.uv = gl.createBuffer()
		if (object.hasColors && !buffers.color) buffers.color = gl.createBuffer()

		const programAttributes = program.getAttributes()

		if (object.hasPositions) {
			gl.bindBuffer(gl.ARRAY_BUFFER, buffers.position)
			gl.bufferData(gl.ARRAY_BUFFER, object.positionArray, gl.DYNAMIC_DRAW)

			this.bindingStates.enableAttribute(programAttributes.position)
			gl.vertexAttribPointer(programAttributes.position, 3, gl.FLOAT, false, 0, 0)
		}

		if (object.hasNormals) {
			gl.bindBuffer(gl.ARRAY_BUFFER, buffers.normal)
			gl.bufferData(gl.ARRAY_BUFFER, object.normalArray, gl.DYNAMIC_DRAW)

			this.bindingStates.enableAttribute(programAttributes.normal)
			gl.vertexAttribPointer(programAttributes.normal, 3, gl.FLOAT, false, 0, 0)
		}

		if (object.hasUvs) {
			gl.bindBuffer(gl.ARRAY_BUFFER, buffers.uv)
			gl.bufferData(gl.ARRAY_BUFFER, object.uvArray, gl.DYNAMIC_DRAW)

			this.bindingStates.enableAttribute(programAttributes.uv)
			gl.vertexAttribPointer(programAttributes.uv, 2, gl.FLOAT, false, 0, 0)
		}

		if (object.hasColors) {
			gl.bindBuffer(gl.ARRAY_BUFFER, buffers.color)
			gl.bufferData(gl.ARRAY_BUFFER, object.colorArray, gl.DYNAMIC_DRAW)

			this.bindingStates.enableAttribute(programAttributes.color)
			gl.vertexAttribPointer(programAttributes.color, 3, gl.FLOAT, false, 0, 0)
		}

		this.bindingStates.disableUnusedAttributes()

		gl.drawArrays(gl.TRIANGLES, 0, object.count)

		object.count = 0
	}

	private renderBufferDirect(
		camera: Camera,
		scene: Scene,
		geometry: BufferGeometry,
		material: Material,
		object: Object3D,
		group: Group | null
	): void {
		// if (scene == null) scene = this._emptyScene // renderBufferDirect second parameter used to be fog (could be null)

		const frontFaceCW = object instanceof Mesh && object.matrixWorld.determinant() < 0

		const program = this.setProgram(camera, scene, material, object)

		this.state!.setMaterial(material, frontFaceCW)

		//

		let index = geometry.index
		const position = geometry.attributes.position

		//

		if (index === null) {
			if (position === undefined || position.count === 0) return
		} else if (index.count === 0) {
			return
		}

		//

		let rangeFactor = 1

		if (material.wireframe) {
			index = this.geometries.getWireframeAttribute(geometry)
			rangeFactor = 2
		}

		if (material.morphTargets || material.morphNormals) {
			this.morphtargets.update(object, geometry, material, program)
		}

		this.bindingStates.setup(object, material, program, geometry, index)

		let attribute
		let renderer: WebGLBufferRenderer = this.bufferRenderer

		if (index) {
			attribute = this.attributes.get(index)

			renderer = this.indexedBufferRenderer
			;(renderer as WebGLIndexedBufferRenderer).setIndex(attribute)
		}

		//

		const dataCount = index ? index.count : position.count

		const rangeStart = geometry.drawRange.start * rangeFactor
		const rangeCount = geometry.drawRange.count * rangeFactor

		const groupStart = group ? group.start * rangeFactor : 0
		const groupCount = group ? group.count * rangeFactor : Infinity

		const drawStart = Math.max(rangeStart, groupStart)
		const drawEnd = Math.min(dataCount, rangeStart + rangeCount, groupStart + groupCount) - 1

		const drawCount = Math.max(0, drawEnd - drawStart + 1)

		if (drawCount === 0) return

		//

		const gl = this._gl

		if (object.isMesh) {
			if (material.wireframe) {
				this.state!.setLineWidth(material.wireframeLinewidth * this.getTargetPixelRatio())
				renderer.setMode(gl.LINES)
			} else {
				renderer.setMode(gl.TRIANGLES)
			}
		} else if (object.isLine) {
			let lineWidth = material.linewidth

			if (lineWidth === undefined) lineWidth = 1 // Not using Line*Material

			this.state!.setLineWidth(lineWidth * this.getTargetPixelRatio())

			if (object.isLineSegments) {
				renderer.setMode(gl.LINES)
			} else if (object.isLineLoop) {
				renderer.setMode(gl.LINE_LOOP)
			} else {
				renderer.setMode(gl.LINE_STRIP)
			}
		} else if (object.isPoints) {
			renderer.setMode(gl.POINTS)
		} else if (object.isSprite) {
			renderer.setMode(gl.TRIANGLES)
		}

		if (object.isInstancedMesh) {
			renderer.renderInstances(drawStart, drawCount, object.count)
		} else if (geometry.isInstancedBufferGeometry) {
			const instanceCount = Math.min(geometry.instanceCount, geometry._maxInstanceCount)

			renderer.renderInstances(drawStart, drawCount, instanceCount)
		} else {
			renderer.render(drawStart, drawCount)
		}
	}

	// Compile

	// /**
	//  * Compiles all materials in the scene with the camera. This is useful to precompile shaders before the first rendering.
	//  */
	compile(scene: Scene, camera: Camera): void {
		this.currentRenderState = this.renderStates.get(scene)
		this.currentRenderState.init()

		scene.traverseVisible((object: Object3D) => {
			if (object instanceof Light && object.layers.test(camera.layers)) {
				this.currentRenderState!.pushLight(object)

				if (object.castShadow) {
					this.currentRenderState!.pushShadow(object)
				}
			}
		})

		this.currentRenderState.setupLights()

		// TODO PORT mem make sure we don't leak, no WeakMap in AS
		// const compiled = new WeakMap()
		const compiled: Map<any, any> = new Map()

		scene.traverse(object => {
			if (object instanceof Mesh /* TODO PORT || object instanceof Line || etc*/) {
				const materials = object.materials

				// if (Array.isArray(material)) {
				for (let i = 0; i < materials.length; i++) {
					const material2 = materials[i]

					if (compiled.has(material2) === false) {
						this.initMaterial(material2, scene, object)
						compiled.set(material2) //  missing an arg? Maybe Three.js meant to use WeakSet, not WeakMap.
					}
				}
				// }
				// else if (compiled.has(material) === false) {
				// 	initMaterial(material, scene, object)
				// 	compiled.set(material)
				// }
			}
		})
	}

	private onAnimationFrame(time: f64): void {
		if (this.xr.isPresenting) return
		if (this.onAnimationFrameCallback.length) this.onAnimationFrameCallback[0](time)
	}

	/**
	 * A build in function that can be used instead of requestAnimationFrame. For WebVR projects this function must be used.
	 * @param callback The function will be called every available frame. If `null` is passed it will stop any already ongoing animation.
	 */
	setAnimationLoop(callback: AnimationFrameCallback) {
		this.onAnimationFrameCallback[0] = callback
		this.xr.setAnimationLoop(callback)
		this.animation.start()
	}

	unsetAnimationLoop() {
		this.onAnimationFrameCallback.pop()
		this.xr.unsetAnimationLoop()
		this.animation.stop()
	}

	// Rendering

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
		if (this._isContextLost) {
			throw new Error('Context is lost, unable to render.')
		}

		// reset caching for this frame

		this.bindingStates.resetDefaultState()
		this._currentMaterialId = -1
		this._currentCamera = null

		// update scene graph

		if (scene.autoUpdate) scene.updateMatrixWorld()

		// update camera matrices and frustum

		if (camera.parent === null) camera.updateMatrixWorld()

		// TODO PORT
		// if (this.xr.enabled && this.xr.isPresenting ) {
		// 	camera = this.xr.getCamera(camera)
		// }

		//
		// if (scene.isScene) scene.onBeforeRender(this, scene, camera, _currentRenderTarget) // TODO PORT

		this.currentRenderState = this.renderStates.get(scene, this.renderStateStack.length) // TODO PORT WTH?
		this.currentRenderState.init()

		this.renderStateStack.push(this.currentRenderState)

		this._projScreenMatrix.multiplyMatrices(camera.projectionMatrix, camera.matrixWorldInverse)
		this._frustum.setFromProjectionMatrix(this._projScreenMatrix)

		this._localClippingEnabled = this.localClippingEnabled
		this._clippingEnabled = this.clipping.init(this.clippingPlanes, this._localClippingEnabled, camera)

		this.currentRenderList = this.renderLists.get(scene, camera)
		this.currentRenderList.init()

		this.projectObject(scene, camera, 0, this.sortObjects)

		this.currentRenderList.finish()

		if (this.sortObjects) {
			this.currentRenderList.sort(this._opaqueSort, this._transparentSort)
		}

		//

		if (this._clippingEnabled) clipping.beginShadows()

		const shadowsArray = this.currentRenderState.state.shadowsArray

		this.shadowMap.render(shadowsArray, scene, camera)

		this.currentRenderState.setupLights()
		this.currentRenderState.setupLightsView(camera)

		if (this._clippingEnabled) this.clipping.endShadows()

		//

		if (this.info.autoReset) this.info.reset()

		//

		this.background.render(this.currentRenderList, scene, camera)

		// render scene

		const opaqueObjects = this.currentRenderList.opaque
		const transparentObjects = this.currentRenderList.transparent

		if (opaqueObjects.length > 0) renderObjects(opaqueObjects, scene, camera)
		if (transparentObjects.length > 0) renderObjects(transparentObjects, scene, camera)

		//

		if (scene.isScene) scene.onAfterRender(this, scene, camera)

		//

		if (this._currentRenderTarget !== null) {
			// Generate mipmap if we're using any kind of mipmap filtering

			this.textures.updateRenderTargetMipmap(_currentRenderTarget)

			// resolve multisample renderbuffers to a single-sample texture if necessary

			this.textures.updateMultisampleRenderTarget(_currentRenderTarget)
		}

		// Ensure depth buffer writing is enabled so it can be cleared on next render

		this.state!.buffers.depth.setTest(true)
		this.state!.buffers.depth.setMask(true)
		this.state!.buffers.color.setMask(true)

		this.state!.setPolygonOffset(false)

		// gl.finish(); // This was already commented out in Three.js

		this.renderStateStack.pop()
		if (this.renderStateStack.length > 0) {
			this.currentRenderState = this.renderStateStack[this.renderStateStack.length - 1]
		} else {
			this.currentRenderState = null
		}

		this.currentRenderList = null
	}

	private projectObject(object: Object3D, camera: Camera, groupOrder: f32, sortObjects: boolean): void {
		if (object.visible === false) return

		const visible = object.layers.test(camera.layers)

		if (visible) {
			if (object.isGroup) {
				groupOrder = object.renderOrder
			} else if (object.isLOD) {
				if (object.autoUpdate) object.update(camera)
			} else if (object.isLight) {
				this.currentRenderState!.pushLight(object)

				if (object.castShadow) {
					this.currentRenderState!.pushShadow(object)
				}
			} else if (object.isSprite) {
				if (!object.frustumCulled || this._frustum.intersectsSprite(object)) {
					if (sortObjects) {
						this._vector3.setFromMatrixPosition(object.matrixWorld).applyMatrix4(this._projScreenMatrix)
					}

					const geometry = this.objects.update(object)
					const material = object.material

					if (material.visible) {
						this.currentRenderList.push(object, geometry, material, groupOrder, this._vector3.z, null)
					}
				}
			} else if (object.isImmediateRenderObject) {
				if (sortObjects) {
					this._vector3.setFromMatrixPosition(object.matrixWorld).applyMatrix4(_projScreenMatrix)
				}

				this.currentRenderList!.push(object, null, object.material, groupOrder, this._vector3.z, null)
			} else if (object.isMesh || object.isLine || object.isPoints) {
				if (object.isSkinnedMesh) {
					// update skeleton only once in a frame

					if (object.skeleton.frame !== this.info.render.frame) {
						object.skeleton.update()
						object.skeleton.frame = this.info.render.frame
					}
				}

				if (!object.frustumCulled || this._frustum.intersectsObject(object)) {
					if (sortObjects) {
						this._vector3.setFromMatrixPosition(object.matrixWorld).applyMatrix4(this._projScreenMatrix)
					}

					const geometry = this.objects.update(object)
					const material = object.material

					// if (Array.isArray(material))
					{
						const groups = geometry.groups

						for (let i = 0, l = groups.length; i < l; i++) {
							const group = groups[i]
							const groupMaterial = material[group.materialIndex]

							if (groupMaterial && groupMaterial.visible) {
								this.currentRenderList!.push(
									object,
									geometry,
									groupMaterial,
									groupOrder,
									this._vector3.z,
									group
								)
							}
						}
					}
					// else if (material.visible) {
					// 	currentRenderList.push(object, geometry, material, groupOrder, _vector3.z, null)
					// }
				}
			}
		}

		const children = object.children

		for (let i = 0, l = children.length; i < l; i++) {
			this.projectObject(children[i], camera, groupOrder, sortObjects)
		}
	}

	private renderObjects(renderList: Array<RenderItem>, scene: Scene, camera: Camera): void {
		for (let i = 0, l = renderList.length; i < l; i++) {
			const renderItem = renderList[i]

			const object = renderItem.object
			const geometry = renderItem.geometry!
			const material = scene.overrideMaterial || renderItem.material
			const group = renderItem.group

			if (/*TODO PORT camera.isArrayCamera*/ false) {
				const cameras = camera.cameras

				for (let j = 0, jl = cameras.length; j < jl; j++) {
					const camera2 = cameras[j]

					if (object.layers.test(camera2.layers)) {
						this.state!.viewport(this._currentViewport.copy(camera2.viewport))

						this.currentRenderState!.setupLightsView(camera2)

						this.renderObject(object, scene, camera2, geometry, material, group)
					}
				}
			} else {
				this.renderObject(object, scene, camera, geometry, material, group)
			}
		}
	}

	private renderObject(
		object: Object3D,
		scene: Scene,
		camera: Camera,
		geometry: BufferGeometry,
		material: Material,
		group: Group | null
	) {
		object.onBeforeRender(this, scene, camera, geometry, material, group)

		object.modelViewMatrix.multiplyMatrices(camera.matrixWorldInverse, object.matrixWorld)
		object.normalMatrix.getNormalMatrix(object.modelViewMatrix)

		if (/*TODO PORT object.isImmediateRenderObject*/ false) {
			const program = setProgram(camera, scene, material, object)

			this.state!.setMaterial(material)

			this.bindingStates.reset()

			this.renderObjectImmediate(object, program)
		} else {
			this.renderBufferDirect(camera, scene, geometry, material, object, group)
		}

		object.onAfterRender(this, scene, camera, geometry, material, group)
	}

	private initMaterial(material: Material, scene: Scene, object: Object3D) {
		// if (!scene.isScene) scene = this._emptyScene // scene could be a Mesh, Line, Points, ...

		const materialProperties = this.properties.get(material)

		const lights = this.currentRenderState!.state.lights
		const shadowsArray = this.currentRenderState!.state.shadowsArray

		const lightsStateVersion = lights.state.version

		const parameters = this.programCache.getParameters(material, lights.state, shadowsArray, scene, object)
		const programCacheKey = this.programCache.getProgramCacheKey(parameters)

		let program = materialProperties.program
		let programChange = true

		// always update environment and fog - changing these trigger an initMaterial call, but it's possible that the program doesn't change

		materialProperties.environment = material.isMeshStandardMaterial ? scene.environment : null
		materialProperties.fog = scene.fog
		materialProperties.envMap = this.cubemaps.get(material.envMap || materialProperties.environment)

		if (program === undefined) {
			// new material
			material.addEventListener('dispose', this.onMaterialDispose)
		} else if (program.cacheKey !== programCacheKey) {
			// changed glsl or parameters
			this.releaseMaterialProgramReference(material)
		} else if (materialProperties.lightsStateVersion !== lightsStateVersion) {
			programChange = false
		} else if (parameters.shaderID !== undefined) {
			// same glsl and uniform list
			return
		} else {
			// only rebuild uniform list
			programChange = false
		}

		if (programChange) {
			parameters.uniforms = this.programCache.getUniforms(material)

			material.onBeforeCompile(parameters, this)

			program = this.programCache.acquireProgram(parameters, programCacheKey)

			materialProperties.program = program
			materialProperties.uniforms = parameters.uniforms
			materialProperties.outputEncoding = parameters.outputEncoding
		}

		const uniforms = materialProperties.uniforms

		if ((!material.isShaderMaterial && !material.isRawShaderMaterial) || material.clipping) {
			materialProperties.numClippingPlanes = this.clipping.numPlanes
			materialProperties.numIntersection = this.clipping.numIntersection
			uniforms.clippingPlanes = this.clipping.uniform
		}

		// store the light setup it was created for

		materialProperties.needsLights = this.materialNeedsLights(material)
		materialProperties.lightsStateVersion = lightsStateVersion

		if (materialProperties.needsLights) {
			// wire up the material to this renderer's lighting state

			uniforms.ambientLightColor.value = lights.state.ambient
			uniforms.lightProbe.value = lights.state.probe
			uniforms.directionalLights.value = lights.state.directional
			uniforms.directionalLightShadows.value = lights.state.directionalShadow
			uniforms.spotLights.value = lights.state.spot
			uniforms.spotLightShadows.value = lights.state.spotShadow
			uniforms.rectAreaLights.value = lights.state.rectArea
			uniforms.ltc_1.value = lights.state.rectAreaLTC1
			uniforms.ltc_2.value = lights.state.rectAreaLTC2
			uniforms.pointLights.value = lights.state.point
			uniforms.pointLightShadows.value = lights.state.pointShadow
			uniforms.hemisphereLights.value = lights.state.hemi

			uniforms.directionalShadowMap.value = lights.state.directionalShadowMap
			uniforms.directionalShadowMatrix.value = lights.state.directionalShadowMatrix
			uniforms.spotShadowMap.value = lights.state.spotShadowMap
			uniforms.spotShadowMatrix.value = lights.state.spotShadowMatrix
			uniforms.pointShadowMap.value = lights.state.pointShadowMap
			uniforms.pointShadowMatrix.value = lights.state.pointShadowMatrix
			// TODO (abelnation): add area lights shadow info to uniforms
		}

		const progUniforms = materialProperties.program.getUniforms()
		const uniformsList = WebGLUniforms.seqWithValue(progUniforms.seq, uniforms)

		materialProperties.uniformsList = uniformsList
	}

	private setProgram(camera: Camera, scene: Scene, material: Material, object: Object3D) {
		// if ( scene.isScene !== true ) scene = _emptyScene; // scene could be a Mesh, Line, Points, ...

		this.textures.resetTextureUnits()

		const fog = scene.fog
		const environment = material.isMeshStandardMaterial ? scene.environment : null
		const encoding = this._currentRenderTarget ? this._currentRenderTarget.texture.encoding : this.outputEncoding
		const envMap = this.cubemaps.get(material.envMap || environment)

		const materialProperties = this.properties.get(material)
		const lights = this.currentRenderState!.state.lights

		if (this._clippingEnabled) {
			if (this._localClippingEnabled || camera !== _currentCamera) {
				const useCache = camera === this._currentCamera && material.id === this._currentMaterialId

				// we might want to call this function with some ClippingGroup
				// object instead of the material, once it becomes feasible
				// (#8465, #8379)
				this.clipping.setState(material, camera, useCache)
			}
		}

		if (material.version === materialProperties.__version) {
			if (material.fog && materialProperties.fog !== fog) {
				this.initMaterial(material, scene, object)
			} else if (materialProperties.environment !== environment) {
				this.initMaterial(material, scene, object)
			} else if (
				materialProperties.needsLights &&
				materialProperties.lightsStateVersion !== lights.state.version
			) {
				this.initMaterial(material, scene, object)
			} else if (
				materialProperties.numClippingPlanes !== undefined &&
				(materialProperties.numClippingPlanes !== this.clipping.numPlanes ||
					materialProperties.numIntersection !== this.clipping.numIntersection)
			) {
				this.initMaterial(material, scene, object)
			} else if (materialProperties.outputEncoding !== encoding) {
				this.initMaterial(material, scene, object)
			} else if (materialProperties.envMap !== envMap) {
				this.initMaterial(material, scene, object)
			}
		} else {
			this.initMaterial(material, scene, object)
			materialProperties.__version = material.version
		}

		let refreshProgram = false
		let refreshMaterial = false
		let refreshLights = false

		const program = materialProperties.program,
			p_uniforms = program.getUniforms(),
			m_uniforms = materialProperties.uniforms

		if (this.state!.useProgram(program.program)) {
			refreshProgram = true
			refreshMaterial = true
			refreshLights = true
		}

		if (material.id !== this._currentMaterialId) {
			this._currentMaterialId = material.id

			refreshMaterial = true
		}

		const gl = this._gl

		if (refreshProgram || this._currentCamera !== camera) {
			p_uniforms.setValue(gl, 'projectionMatrix', camera.projectionMatrix)

			if (this.capabilities!.logarithmicDepthBuffer) {
				p_uniforms.setValue(gl, 'logDepthBufFC', 2.0 / (Math.log(camera.far + 1.0) / Math.LN2))
			}

			if (this._currentCamera !== camera) {
				this._currentCamera = camera

				// lighting uniforms depend on the camera so enforce an update
				// now, in case this material supports lights - or later, when
				// the next material that does gets activated:

				refreshMaterial = true // set to true on material change
				refreshLights = true // remains set until update done
			}

			// load material specific uniforms
			// (shader material also gets them for the sake of genericity)

			if (
				material.isShaderMaterial ||
				material.isMeshPhongMaterial ||
				material.isMeshToonMaterial ||
				material.isMeshStandardMaterial ||
				material.envMap
			) {
				const uCamPos = p_uniforms.map.cameraPosition

				if (uCamPos !== undefined) {
					uCamPos.setValue(gl, _vector3.setFromMatrixPosition(camera.matrixWorld))
				}
			}

			if (
				material.isMeshPhongMaterial ||
				material.isMeshToonMaterial ||
				material.isMeshLambertMaterial ||
				material.isMeshBasicMaterial ||
				material.isMeshStandardMaterial ||
				material.isShaderMaterial
			) {
				p_uniforms.setValue(gl, 'isOrthographic', camera.isOrthographicCamera === true)
			}

			if (
				material.isMeshPhongMaterial ||
				material.isMeshToonMaterial ||
				material.isMeshLambertMaterial ||
				material.isMeshBasicMaterial ||
				material.isMeshStandardMaterial ||
				material.isShaderMaterial ||
				material.isShadowMaterial ||
				material.skinning
			) {
				p_uniforms.setValue(gl, 'viewMatrix', camera.matrixWorldInverse)
			}
		}

		// skinning uniforms must be set even if material didn't change
		// auto-setting of texture unit for bone texture must go before other textures
		// otherwise textures used for skinning can take over texture units reserved for other material textures

		if (material.skinning) {
			p_uniforms.setOptional(gl, object, 'bindMatrix')
			p_uniforms.setOptional(gl, object, 'bindMatrixInverse')

			const skeleton = object.skeleton

			if (skeleton) {
				const bones = skeleton.bones

				if (this.capabilities!.floatVertexTextures) {
					if (skeleton.boneTexture === null) {
						// layout (1 matrix = 4 pixels)
						//      RGBA RGBA RGBA RGBA (=> column1, column2, column3, column4)
						//  with  8x8  pixel texture max   16 bones * 4 pixels =  (8 * 8)
						//       16x16 pixel texture max   64 bones * 4 pixels = (16 * 16)
						//       32x32 pixel texture max  256 bones * 4 pixels = (32 * 32)
						//       64x64 pixel texture max 1024 bones * 4 pixels = (64 * 64)

						let size = Math.sqrt(bones.length * 4) // 4 pixels needed for 1 matrix
						size = MathUtils.ceilPowerOfTwo(size)
						size = Math.max(size, 4)

						const boneMatrices = new Float32Array(size * size * 4) // 4 floats per RGBA pixel
						boneMatrices.set(skeleton.boneMatrices) // copy current values

						const boneTexture = new DataTexture(boneMatrices, size, size, RGBAFormat, FloatType)

						skeleton.boneMatrices = boneMatrices
						skeleton.boneTexture = boneTexture
						skeleton.boneTextureSize = size
					}

					p_uniforms.setValue(gl, 'boneTexture', skeleton.boneTexture, textures)
					p_uniforms.setValue(gl, 'boneTextureSize', skeleton.boneTextureSize)
				} else {
					p_uniforms.setOptional(gl, skeleton, 'boneMatrices')
				}
			}
		}

		if (refreshMaterial || materialProperties.receiveShadow !== object.receiveShadow) {
			materialProperties.receiveShadow = object.receiveShadow
			p_uniforms.setValue(gl, 'receiveShadow', object.receiveShadow)
		}

		if (refreshMaterial) {
			p_uniforms.setValue(gl, 'toneMappingExposure', this.toneMappingExposure)

			if (materialProperties.needsLights) {
				// the current material requires lighting info

				// note: all lighting uniforms are always set correctly
				// they simply reference the renderer's state for their
				// values
				//
				// use the current material's .needsUpdate flags to set
				// the GL state when required

				markUniformsLightsNeedsUpdate(m_uniforms, refreshLights)
			}

			// refresh uniforms common to several materials

			if (fog && material.fog) {
				this.materials.refreshFogUniforms(m_uniforms, fog)
			}

			this.materials.refreshMaterialUniforms(m_uniforms, material, this._pixelRatio, this._height)

			WebGLUniforms.upload(gl, materialProperties.uniformsList, m_uniforms, this.textures)
		}

		if (material.isShaderMaterial && material.uniformsNeedUpdate === true) {
			WebGLUniforms.upload(gl, materialProperties.uniformsList, m_uniforms, this.textures)
			material.uniformsNeedUpdate = false
		}

		if (material.isSpriteMaterial) {
			p_uniforms.setValue(gl, 'center', object.center)
		}

		// common matrices

		p_uniforms.setValue(gl, 'modelViewMatrix', object.modelViewMatrix)
		p_uniforms.setValue(gl, 'normalMatrix', object.normalMatrix)
		p_uniforms.setValue(gl, 'modelMatrix', object.matrixWorld)

		return program
	}

	// If uniforms are marked as clean, they don't need to be loaded to the GPU.

	private markUniformsLightsNeedsUpdate(uniforms, value) {
		uniforms.ambientLightColor.needsUpdate = value
		uniforms.lightProbe.needsUpdate = value

		uniforms.directionalLights.needsUpdate = value
		uniforms.directionalLightShadows.needsUpdate = value
		uniforms.pointLights.needsUpdate = value
		uniforms.pointLightShadows.needsUpdate = value
		uniforms.spotLights.needsUpdate = value
		uniforms.spotLightShadows.needsUpdate = value
		uniforms.rectAreaLights.needsUpdate = value
		uniforms.hemisphereLights.needsUpdate = value
	}

	private materialNeedsLights(material: Material) {
		return (
			material.isMeshLambertMaterial ||
			material.isMeshToonMaterial ||
			material.isMeshPhongMaterial ||
			material.isMeshStandardMaterial ||
			material.isShadowMaterial ||
			(material.isShaderMaterial && material.lights === true)
		)
	}

	//
	setFramebuffer(value: WebGLFramebuffer) {
		const gl = this._gl

		if (this._framebuffer !== value && this._currentRenderTarget === null) gl.bindFramebuffer(gl.FRAMEBUFFER, value)

		this._framebuffer = value
	}

	/**
	 * Returns the current active cube face.
	 */
	getActiveCubeFace() {
		return this._currentActiveCubeFace
	}

	getActiveMipmapLevel() {
		return this._currentActiveMipmapLevel
	}

	getRenderList() {
		return this.currentRenderList
	}

	setRenderList(renderList: WebGLRenderList) {
		this.currentRenderList = renderList
	}

	/**
	 * Returns the current render target. If no render target is set, null is returned.
	 */
	getRenderTarget(): WebGLRenderTarget | null {
		// TODO
		return this._currentRenderTarget
	}

	/**
	 * Sets the active render target.
	 *
	 * @param renderTarget The {@link WebGLRenderTarget renderTarget} that needs to be activated. When `null` is given, the canvas is set as the active render target instead.
	 * @param activeCubeFace Specifies the active cube side (PX 0, NX 1, PY 2, NY 3, PZ 4, NZ 5) of {@link WebGLRenderTargetCube}.
	 * @param activeMipMapLevel Specifies the active mipmap level.
	 */
	setRenderTarget(renderTarget: WebGLRenderTarget | null, activeCubeFace: i32 = 0, activeMipmapLevel: i32 = 0): void {
		this._currentRenderTarget = renderTarget
		this._currentActiveCubeFace = activeCubeFace
		this._currentActiveMipmapLevel = activeMipmapLevel

		if (renderTarget && this.properties.get(renderTarget).__webglFramebuffer === undefined) {
			this.textures.setupRenderTarget(renderTarget)
		}

		let framebuffer = this._framebuffer
		let isCube = false

		if (renderTarget) {
			const __webglFramebuffer = this.properties.get(renderTarget).__webglFramebuffer

			if (renderTarget.isWebGLCubeRenderTarget) {
				framebuffer = __webglFramebuffer[activeCubeFace]
				isCube = true
			} else if (renderTarget.isWebGLMultisampleRenderTarget) {
				framebuffer = this.properties.get(renderTarget).__webglMultisampledFramebuffer
			} else {
				framebuffer = __webglFramebuffer
			}

			this._currentViewport.copy(renderTarget.viewport)
			this._currentScissor.copy(renderTarget.scissor)
			this._currentScissorTest = renderTarget.scissorTest
		} else {
			this._currentViewport.copy(_viewport).multiplyScalar(_pixelRatio).floor()
			this._currentScissor.copy(_scissor).multiplyScalar(_pixelRatio).floor()
			this._currentScissorTest = _scissorTest
		}

		if (this._currentFramebuffer !== framebuffer) {
			const gl = this._gl
			gl.bindFramebuffer(gl.FRAMEBUFFER, framebuffer)
			this._currentFramebuffer = framebuffer
		}

		this.state!.viewport(this._currentViewport)
		this.state!.scissor(this._currentScissor)
		this.state!.setScissorTest(this._currentScissorTest)

		if (isCube) {
			const gl = this._gl
			const textureProperties = this.properties.get(renderTarget.texture)
			gl.framebufferTexture2D(
				gl.FRAMEBUFFER,
				gl.COLOR_ATTACHMENT0,
				gl.TEXTURE_CUBE_MAP_POSITIVE_X + activeCubeFace,
				textureProperties.__webglTexture,
				activeMipmapLevel
			)
		}
	}

	readRenderTargetPixels(
		renderTarget: WebGLRenderTarget,
		x: f32,
		y: f32,
		width: f32,
		height: f32,
		buffer: WebGLBuffer,
		activeCubeFaceIndex?: f32
	): void {
		if (!(renderTarget && renderTarget.isWebGLRenderTarget)) {
			console.error('THREE.WebGLRenderer.readRenderTargetPixels: renderTarget is not THREE.WebGLRenderTarget.')
			return
		}

		let framebuffer = this.properties.get(renderTarget).__webglFramebuffer

		if (renderTarget.isWebGLCubeRenderTarget && activeCubeFaceIndex !== undefined) {
			framebuffer = framebuffer[activeCubeFaceIndex]
		}

		if (framebuffer) {
			const gl = this._gl
			let restore = false

			if (framebuffer !== this._currentFramebuffer) {
				gl.bindFramebuffer(gl.FRAMEBUFFER, framebuffer)

				restore = true
			}

			try {
				const texture = renderTarget.texture
				const textureFormat = texture.format
				const textureType = texture.type

				if (
					textureFormat !== RGBAFormat &&
					utils.convert(textureFormat) !== gl.getParameter(gl.IMPLEMENTATION_COLOR_READ_FORMAT)
				) {
					console.error(
						'THREE.WebGLRenderer.readRenderTargetPixels: renderTarget is not in RGBA or implementation defined format.'
					)
					return
				}

				const halfFloatSupportedByExt =
					textureType === HalfFloatType &&
					(this.extensions.has('EXT_color_buffer_half_float') ||
						(this.capabilities!.isWebGL2 && this.extensions.has('EXT_color_buffer_float')))

				if (
					textureType !== UnsignedByteType &&
					this.utils.convert(textureType) !== gl.getParameter(gl.IMPLEMENTATION_COLOR_READ_TYPE) && // IE11, Edge and Chrome Mac < 52 (#9513)
					!(
						textureType === FloatType &&
						(this.capabilities!.isWebGL2 ||
							this.extensions.has('OES_texture_float') ||
							this.extensions.has('WEBGL_color_buffer_float'))
					) && // Chrome Mac >= 52 and Firefox
					!halfFloatSupportedByExt
				) {
					console.error(
						'THREE.WebGLRenderer.readRenderTargetPixels: renderTarget is not in UnsignedByteType or implementation defined type.'
					)
					return
				}

				if (gl.checkFramebufferStatus(gl.FRAMEBUFFER) === gl.FRAMEBUFFER_COMPLETE) {
					// the following if statement ensures valid read requests (no out-of-bounds pixels, see #8604)

					if (x >= 0 && x <= renderTarget.width - width && y >= 0 && y <= renderTarget.height - height) {
						gl.readPixels(
							x,
							y,
							width,
							height,
							this.utils.convert(textureFormat), // ???
							this.utils.convert(textureType),
							buffer
						)
					}
				} else {
					console.error(
						'THREE.WebGLRenderer.readRenderTargetPixels: readPixels from renderTarget failed. Framebuffer not complete.'
					)
				}
			} finally {
				if (restore) {
					gl.bindFramebuffer(gl.FRAMEBUFFER, this._currentFramebuffer!)
				}
			}
		}
	}

	copyFramebufferToTexture(position: Vector3, texture: Texture, level: i32 = 0): void {
		const levelScale = Math.pow(2, -level)
		const width = Math.floor(texture.image.width * levelScale)
		const height = Math.floor(texture.image.height * levelScale)
		const glFormat = this.utils.convert(texture.format)

		this.textures.setTexture2D(texture, 0)

		const gl = this._gl
		gl.copyTexImage2D(gl.TEXTURE_2D, level, glFormat, position.x, position.y, width, height, 0)

		this.state!.unbindTexture()
	}

	copyTextureToTexture(position: Vector3, srcTexture: Texture, dstTexture: Texture, level: i32 = 0): void {
		const width = srcTexture.image.width
		const height = srcTexture.image.height
		const glFormat = this.utils.convert(dstTexture.format)
		const glType = this.utils.convert(dstTexture.type)

		this.textures.setTexture2D(dstTexture, 0)

		const gl = this._gl

		// As another texture upload may have changed pixelStorei
		// parameters, make sure they are correct for the dstTexture
		gl.pixelStorei(gl.UNPACK_FLIP_Y_WEBGL, dstTexture.flipY)
		gl.pixelStorei(gl.UNPACK_PREMULTIPLY_ALPHA_WEBGL, dstTexture.premultiplyAlpha)
		gl.pixelStorei(gl.UNPACK_ALIGNMENT, dstTexture.unpackAlignment)

		if (srcTexture.isDataTexture) {
			gl.texSubImage2D(
				gl.TEXTURE_2D,
				level,
				position.x,
				position.y,
				width,
				height,
				glFormat,
				glType,
				srcTexture.image.data
			)
		} else {
			if (srcTexture.isCompressedTexture) {
				gl.compressedTexSubImage2D(
					gl.TEXTURE_2D,
					level,
					position.x,
					position.y,
					srcTexture.mipmaps[0].width,
					srcTexture.mipmaps[0].height,
					glFormat,
					srcTexture.mipmaps[0].data
				)
			} else {
				gl.texSubImage2D(gl.TEXTURE_2D, level, position.x, position.y, glFormat, glType, srcTexture.image)
			}
		}

		// Generate mipmaps only when copying level 0
		if (level === 0 && dstTexture.generateMipmaps) gl.generateMipmap(gl.TEXTURE_2D)

		this.state!.unbindTexture()
	}

	initTexture(texture: Texture): void {
		this.textures.setTexture2D(texture, 0)

		this.state!.unbindTexture()
	}

	resetState(): void {
		this.state!.reset()
		this.bindingStates.reset()
	}
}

function createCanvasElement(): any /*TODO PORT HTMLCanvasElement*/ {
	const canvas = document.createElement('canvas')
	canvas.style.display = 'block'
	return canvas
}

type AnimationFrameCallback = (time: f64) => void
