// r125 - WebGLState implementation in AssemblyScript
import { WebGLRenderingContext } from '../../../../node_modules/aswebglue/src/WebGL'
import { 
	CullFace, Blending, BlendingEquation, BlendingSrcFactor, BlendingDstFactor, DepthModes,
	Side, NoBlending, NormalBlending, AdditiveBlending, SubtractiveBlending, MultiplyBlending, CustomBlending,
	AddEquation, SubtractEquation, ReverseSubtractEquation, MinEquation, MaxEquation,
	ZeroFactor, OneFactor, SrcColorFactor, SrcAlphaFactor, SrcAlphaSaturateFactor, DstColorFactor, DstAlphaFactor,
	OneMinusSrcColorFactor, OneMinusSrcAlphaFactor, OneMinusDstColorFactor, OneMinusDstAlphaFactor,
	NeverDepth, AlwaysDepth, LessDepth, LessEqualDepth, EqualDepth, GreaterEqualDepth, GreaterDepth, NotEqualDepth,
	CullFaceNone, CullFaceBack, CullFaceFront, BackSide, DoubleSide
} from '../../constants'
import { WebGLCapabilities } from './WebGLCapabilities'
import { WebGLExtensions } from './WebGLExtensions'
import { Material } from '../../materials/Material'
import { Vector4 } from '../../math/Vector4'

export class ColorBuffer {
	private locked: boolean = false
	private color: Vector4 = new Vector4()
	private currentColorMask: boolean | null = null
	private currentColorClear: Vector4 = new Vector4(0, 0, 0, 0)

	constructor(private gl: WebGLRenderingContext) {}

	setMask(colorMask: boolean): void {
		if (this.currentColorMask !== colorMask && !this.locked) {
			this.gl.colorMask(colorMask, colorMask, colorMask, colorMask)
			this.currentColorMask = colorMask
		}
	}

	setLocked(lock: boolean): void {
		this.locked = lock
	}

	setClear(r: f32, g: f32, b: f32, a: f32, premultipliedAlpha: boolean): void {
		if (premultipliedAlpha === true) {
			r *= a
			g *= a
			b *= a
		}

		this.color.set(r, g, b, a)

		if (this.currentColorClear.equals(this.color) === false) {
			this.gl.clearColor(r, g, b, a)
			this.currentColorClear.copy(this.color)
		}
	}

	reset(): void {
		this.locked = false
		this.currentColorMask = null
		this.currentColorClear.set(-1, 0, 0, 0) // set to invalid state
	}
}

export class DepthBuffer {
	private locked: boolean = false
	private currentDepthMask: boolean | null = null
	private currentDepthFunc: DepthModes | null = null
	private currentDepthClear: f32 | null = null

	constructor(
		private gl: WebGLRenderingContext,
		private enable: (id: i32) => void,
		private disable: (id: i32) => void
	) {}

	setTest(depthTest: boolean): void {
		if (depthTest) {
			this.enable(this.gl.DEPTH_TEST)
		} else {
			this.disable(this.gl.DEPTH_TEST)
		}
	}

	setMask(depthMask: boolean): void {
		if (this.currentDepthMask !== depthMask && !this.locked) {
			this.gl.depthMask(depthMask)
			this.currentDepthMask = depthMask
		}
	}

	setFunc(depthFunc: DepthModes): void {
		if (this.currentDepthFunc !== depthFunc) {
			switch (depthFunc) {
				case NeverDepth:
					this.gl.depthFunc(this.gl.NEVER)
					break
				case AlwaysDepth:
					this.gl.depthFunc(this.gl.ALWAYS)
					break
				case LessDepth:
					this.gl.depthFunc(this.gl.LESS)
					break
				case LessEqualDepth:
					this.gl.depthFunc(this.gl.LEQUAL)
					break
				case EqualDepth:
					this.gl.depthFunc(this.gl.EQUAL)
					break
				case GreaterEqualDepth:
					this.gl.depthFunc(this.gl.GEQUAL)
					break
				case GreaterDepth:
					this.gl.depthFunc(this.gl.GREATER)
					break
				case NotEqualDepth:
					this.gl.depthFunc(this.gl.NOTEQUAL)
					break
				default:
					this.gl.depthFunc(this.gl.LEQUAL)
					break
			}

			this.currentDepthFunc = depthFunc
		}
	}

	setLocked(lock: boolean): void {
		this.locked = lock
	}

	setClear(depth: f32): void {
		if (this.currentDepthClear !== depth) {
			this.gl.clearDepth(depth)
			this.currentDepthClear = depth
		}
	}

	reset(): void {
		this.locked = false
		this.currentDepthMask = null
		this.currentDepthFunc = null
		this.currentDepthClear = null
	}
}

export class StencilBuffer {
	private locked: boolean = false
	private currentStencilMask: i32 | null = null
	private currentStencilFunc: i32 | null = null
	private currentStencilRef: i32 | null = null
	private currentStencilFuncMask: i32 | null = null
	private currentStencilFail: i32 | null = null
	private currentStencilZFail: i32 | null = null
	private currentStencilZPass: i32 | null = null
	private currentStencilClear: i32 | null = null

	constructor(
		private gl: WebGLRenderingContext,
		private enable: (id: i32) => void,
		private disable: (id: i32) => void
	) {}

	setTest(stencilTest: boolean): void {
		if (!this.locked) {
			if (stencilTest) {
				this.enable(this.gl.STENCIL_TEST)
			} else {
				this.disable(this.gl.STENCIL_TEST)
			}
		}
	}

	setMask(stencilMask: i32): void {
		if (this.currentStencilMask !== stencilMask && !this.locked) {
			this.gl.stencilMask(stencilMask)
			this.currentStencilMask = stencilMask
		}
	}

	setFunc(stencilFunc: i32, stencilRef: i32, stencilMask: i32): void {
		if (this.currentStencilFunc !== stencilFunc ||
			this.currentStencilRef !== stencilRef ||
			this.currentStencilFuncMask !== stencilMask) {

			this.gl.stencilFunc(stencilFunc, stencilRef, stencilMask)

			this.currentStencilFunc = stencilFunc
			this.currentStencilRef = stencilRef
			this.currentStencilFuncMask = stencilMask
		}
	}

	setOp(stencilFail: i32, stencilZFail: i32, stencilZPass: i32): void {
		if (this.currentStencilFail !== stencilFail ||
			this.currentStencilZFail !== stencilZFail ||
			this.currentStencilZPass !== stencilZPass) {

			this.gl.stencilOp(stencilFail, stencilZFail, stencilZPass)

			this.currentStencilFail = stencilFail
			this.currentStencilZFail = stencilZFail
			this.currentStencilZPass = stencilZPass
		}
	}

	setLocked(lock: boolean): void {
		this.locked = lock
	}

	setClear(stencil: i32): void {
		if (this.currentStencilClear !== stencil) {
			this.gl.clearStencil(stencil)
			this.currentStencilClear = stencil
		}
	}

	reset(): void {
		this.locked = false
		this.currentStencilMask = null
		this.currentStencilFunc = null
		this.currentStencilRef = null
		this.currentStencilFuncMask = null
		this.currentStencilFail = null
		this.currentStencilZFail = null
		this.currentStencilZPass = null
		this.currentStencilClear = null
	}
}

export class WebGLState {
	// Buffer objects
	color: ColorBuffer
	depth: DepthBuffer
	stencil: StencilBuffer

	// State tracking
	private enabledCapabilities: Map<i32, boolean> = new Map()
	private currentProgram: any = null
	private currentBlendingEnabled: boolean | null = null
	private currentBlending: Blending | null = null
	private currentBlendEquation: BlendingEquation | null = null
	private currentBlendSrc: BlendingSrcFactor | null = null
	private currentBlendDst: BlendingDstFactor | null = null
	private currentBlendEquationAlpha: BlendingEquation | null = null
	private currentBlendSrcAlpha: BlendingSrcFactor | null = null
	private currentBlendDstAlpha: BlendingDstFactor | null = null
	private currentPremultipledAlpha: boolean = false
	private currentFlipSided: boolean | null = null
	private currentCullFace: CullFace | null = null
	private currentLineWidth: f32 | null = null
	private currentPolygonOffsetFactor: f32 | null = null
	private currentPolygonOffsetUnits: f32 | null = null

	// WebGL info
	private maxTextures: i32
	private lineWidthAvailable: boolean = false
	private version: f32 = 0
	private currentTextureSlot: i32 | null = null
	private currentBoundTextures: Map<i32, any> = new Map()
	private currentScissor: Vector4 = new Vector4()
	private currentViewport: Vector4 = new Vector4()

	// Equation and factor mappings
	private equationToGL: Map<BlendingEquation, i32> = new Map()
	private factorToGL: Map<BlendingSrcFactor | BlendingDstFactor, i32> = new Map()

	constructor(
		private gl: WebGLRenderingContext,
		private extensions: WebGLExtensions,
		private utils: any,
		private capabilities: WebGLCapabilities
	) {
		// Initialize buffer objects
		this.color = new ColorBuffer(this.gl)
		this.depth = new DepthBuffer(this.gl, this.enable.bind(this), this.disable.bind(this))
		this.stencil = new StencilBuffer(this.gl, this.enable.bind(this), this.disable.bind(this))

		// Get WebGL info
		this.maxTextures = this.gl.getParameter(this.gl.MAX_COMBINED_TEXTURE_IMAGE_UNITS) as i32

		// Check WebGL version for line width support
		const glVersion = this.gl.getParameter(this.gl.VERSION) as string
		if (glVersion.indexOf('WebGL') !== -1) {
			// Extract version from "WebGL X.X" string
			this.version = 1.0 // Default to 1.0 for now
			this.lineWidthAvailable = this.version >= 1.0
		} else if (glVersion.indexOf('OpenGL ES') !== -1) {
			this.version = 2.0 // Default to 2.0 for now
			this.lineWidthAvailable = this.version >= 2.0
		}

		this.initEquationMappings()
		this.initFactorMappings()
		this.init()
	}

	private initEquationMappings(): void {
		this.equationToGL.set(AddEquation, this.gl.FUNC_ADD)
		this.equationToGL.set(SubtractEquation, this.gl.FUNC_SUBTRACT)
		this.equationToGL.set(ReverseSubtractEquation, this.gl.FUNC_REVERSE_SUBTRACT)

		if (this.capabilities.isWebGL2) {
			this.equationToGL.set(MinEquation, this.gl.MIN)
			this.equationToGL.set(MaxEquation, this.gl.MAX)
		} else {
			const extension = this.extensions.get('EXT_blend_minmax')
			if (extension !== null) {
				// this.equationToGL.set(MinEquation, extension.MIN_EXT)
				// this.equationToGL.set(MaxEquation, extension.MAX_EXT)
			}
		}
	}

	private initFactorMappings(): void {
		this.factorToGL.set(ZeroFactor, this.gl.ZERO)
		this.factorToGL.set(OneFactor, this.gl.ONE)
		this.factorToGL.set(SrcColorFactor, this.gl.SRC_COLOR)
		this.factorToGL.set(SrcAlphaFactor, this.gl.SRC_ALPHA)
		this.factorToGL.set(SrcAlphaSaturateFactor, this.gl.SRC_ALPHA_SATURATE)
		this.factorToGL.set(DstColorFactor, this.gl.DST_COLOR)
		this.factorToGL.set(DstAlphaFactor, this.gl.DST_ALPHA)
		this.factorToGL.set(OneMinusSrcColorFactor, this.gl.ONE_MINUS_SRC_COLOR)
		this.factorToGL.set(OneMinusSrcAlphaFactor, this.gl.ONE_MINUS_SRC_ALPHA)
		this.factorToGL.set(OneMinusDstColorFactor, this.gl.ONE_MINUS_DST_COLOR)
		this.factorToGL.set(OneMinusDstAlphaFactor, this.gl.ONE_MINUS_DST_ALPHA)
	}

	private init(): void {
		// Initial state setup
		this.color.setClear(0, 0, 0, 1, false)
		this.depth.setClear(1)
		this.stencil.setClear(0)

		this.enable(this.gl.DEPTH_TEST)
		this.depth.setFunc(LessEqualDepth)

		this.setFlipSided(false)
		this.setCullFace(CullFaceBack)
		this.enable(this.gl.CULL_FACE)

		this.setBlending(NoBlending)
	}

	enable(id: i32): void {
		if (this.enabledCapabilities.get(id) !== true) {
			this.gl.enable(id)
			this.enabledCapabilities.set(id, true)
		}
	}

	disable(id: i32): void {
		if (this.enabledCapabilities.get(id) !== false) {
			this.gl.disable(id)
			this.enabledCapabilities.set(id, false)
		}
	}

	useProgram(program: any): boolean {
		if (this.currentProgram !== program) {
			this.gl.useProgram(program)
			this.currentProgram = program
			return true
		}
		return false
	}

	setBlending(
		blending: Blending,
		blendEquation: BlendingEquation = AddEquation,
		blendSrc: BlendingSrcFactor = SrcAlphaFactor,
		blendDst: BlendingDstFactor = OneMinusSrcAlphaFactor,
		blendEquationAlpha: BlendingEquation = AddEquation,
		blendSrcAlpha: BlendingSrcFactor = OneFactor,
		blendDstAlpha: BlendingDstFactor = OneMinusSrcAlphaFactor,
		premultipliedAlpha: boolean = false
	): void {
		if (blending === NoBlending) {
			if (this.currentBlendingEnabled) {
				this.disable(this.gl.BLEND)
				this.currentBlendingEnabled = false
			}
			return
		}

		if (!this.currentBlendingEnabled) {
			this.enable(this.gl.BLEND)
			this.currentBlendingEnabled = true
		}

		if (blending !== CustomBlending) {
			if (blending !== this.currentBlending || premultipliedAlpha !== this.currentPremultipledAlpha) {
				if (this.currentBlendEquation !== AddEquation || this.currentBlendEquationAlpha !== AddEquation) {
					this.gl.blendEquation(this.gl.FUNC_ADD)
					this.currentBlendEquation = AddEquation
					this.currentBlendEquationAlpha = AddEquation
				}

				if (premultipliedAlpha) {
					switch (blending) {
						case NormalBlending:
							this.gl.blendFuncSeparate(this.gl.ONE, this.gl.ONE_MINUS_SRC_ALPHA, this.gl.ONE, this.gl.ONE_MINUS_SRC_ALPHA)
							break
						case AdditiveBlending:
							this.gl.blendFunc(this.gl.ONE, this.gl.ONE)
							break
						case SubtractiveBlending:
							this.gl.blendFuncSeparate(this.gl.ZERO, this.gl.ZERO, this.gl.ONE_MINUS_SRC_COLOR, this.gl.ONE_MINUS_SRC_ALPHA)
							break
						case MultiplyBlending:
							this.gl.blendFuncSeparate(this.gl.ZERO, this.gl.SRC_COLOR, this.gl.ZERO, this.gl.SRC_ALPHA)
							break
						default:
							console.error('THREE.WebGLState: Invalid blending: ', blending)
							break
					}
				} else {
					switch (blending) {
						case NormalBlending:
							this.gl.blendFuncSeparate(this.gl.SRC_ALPHA, this.gl.ONE_MINUS_SRC_ALPHA, this.gl.ONE, this.gl.ONE_MINUS_SRC_ALPHA)
							break
						case AdditiveBlending:
							this.gl.blendFunc(this.gl.SRC_ALPHA, this.gl.ONE)
							break
						case SubtractiveBlending:
							this.gl.blendFunc(this.gl.ZERO, this.gl.ONE_MINUS_SRC_COLOR)
							break
						case MultiplyBlending:
							this.gl.blendFunc(this.gl.ZERO, this.gl.SRC_COLOR)
							break
						default:
							console.error('THREE.WebGLState: Invalid blending: ', blending)
							break
					}
				}

				this.currentBlendSrc = null
				this.currentBlendDst = null
				this.currentBlendSrcAlpha = null
				this.currentBlendDstAlpha = null
			}
		} else {
			// Custom blending
			const eqGL = this.equationToGL.get(blendEquation)
			const srcGL = this.factorToGL.get(blendSrc)
			const dstGL = this.factorToGL.get(blendDst)

			if (eqGL && srcGL && dstGL) {
				if (blendEquation !== this.currentBlendEquation || blendEquationAlpha !== this.currentBlendEquationAlpha) {
					if (blendEquation === blendEquationAlpha) {
						this.gl.blendEquation(eqGL)
					} else {
						const eqAlphaGL = this.equationToGL.get(blendEquationAlpha)
						if (eqAlphaGL) {
							this.gl.blendEquationSeparate(eqGL, eqAlphaGL)
						}
					}

					this.currentBlendEquation = blendEquation
					this.currentBlendEquationAlpha = blendEquationAlpha
				}

				if (blendSrc !== this.currentBlendSrc ||
					blendDst !== this.currentBlendDst ||
					blendSrcAlpha !== this.currentBlendSrcAlpha ||
					blendDstAlpha !== this.currentBlendDstAlpha) {

					const srcAlphaGL = this.factorToGL.get(blendSrcAlpha)
					const dstAlphaGL = this.factorToGL.get(blendDstAlpha)

					if (srcAlphaGL && dstAlphaGL) {
						this.gl.blendFuncSeparate(srcGL, dstGL, srcAlphaGL, dstAlphaGL)
					}

					this.currentBlendSrc = blendSrc
					this.currentBlendDst = blendDst
					this.currentBlendSrcAlpha = blendSrcAlpha
					this.currentBlendDstAlpha = blendDstAlpha
				}
			}
		}

		this.currentBlending = blending
		this.currentPremultipledAlpha = premultipliedAlpha
	}

	setMaterial(material: Material, frontFaceCW: boolean): void {
		if (material.side === DoubleSide) {
			this.disable(this.gl.CULL_FACE)
		} else {
			this.enable(this.gl.CULL_FACE)
		}

		let flipSided = (material.side === BackSide)
		if (frontFaceCW) flipSided = !flipSided

		this.setFlipSided(flipSided)

		if (material.blending === NormalBlending && material.transparent === false) {
			this.setBlending(NoBlending)
		} else {
			this.setBlending(
				material.blending,
				material.blendEquation,
				material.blendSrc,
				material.blendDst,
				material.blendEquationAlpha,
				material.blendSrcAlpha,
				material.blendDstAlpha,
				material.premultipliedAlpha
			)
		}

		this.depth.setFunc(material.depthFunc)
		this.depth.setTest(material.depthTest)
		this.depth.setMask(material.depthWrite)

		this.color.setMask(material.colorWrite)

		const stencilWrite = material.stencilWrite
		this.stencil.setTest(stencilWrite)
		if (stencilWrite) {
			this.stencil.setMask(material.stencilWriteMask)
			this.stencil.setFunc(material.stencilFunc, material.stencilRef, material.stencilFuncMask)
			this.stencil.setOp(material.stencilFail, material.stencilZFail, material.stencilZPass)
		}

		this.setPolygonOffset(material.polygonOffset, material.polygonOffsetFactor, material.polygonOffsetUnits)
	}

	setFlipSided(flipSided: boolean): void {
		if (this.currentFlipSided !== flipSided) {
			if (flipSided) {
				this.gl.frontFace(this.gl.CW)
			} else {
				this.gl.frontFace(this.gl.CCW)
			}

			this.currentFlipSided = flipSided
		}
	}

	setCullFace(cullFace: CullFace): void {
		if (cullFace !== CullFaceNone) {
			this.enable(this.gl.CULL_FACE)

			if (cullFace !== this.currentCullFace) {
				if (cullFace === CullFaceBack) {
					this.gl.cullFace(this.gl.BACK)
				} else if (cullFace === CullFaceFront) {
					this.gl.cullFace(this.gl.FRONT)
				} else {
					this.gl.cullFace(this.gl.FRONT_AND_BACK)
				}
			}
		} else {
			this.disable(this.gl.CULL_FACE)
		}

		this.currentCullFace = cullFace
	}

	setLineWidth(width: f32): void {
		if (width !== this.currentLineWidth) {
			if (this.lineWidthAvailable) {
				this.gl.lineWidth(width)
			}

			this.currentLineWidth = width
		}
	}

	setPolygonOffset(polygonOffset: boolean, factor: f32, units: f32): void {
		if (polygonOffset) {
			this.enable(this.gl.POLYGON_OFFSET_FILL)

			if (this.currentPolygonOffsetFactor !== factor || this.currentPolygonOffsetUnits !== units) {
				this.gl.polygonOffset(factor, units)

				this.currentPolygonOffsetFactor = factor
				this.currentPolygonOffsetUnits = units
			}
		} else {
			this.disable(this.gl.POLYGON_OFFSET_FILL)
		}
	}

	setScissorTest(scissorTest: boolean): void {
		if (scissorTest) {
			this.enable(this.gl.SCISSOR_TEST)
		} else {
			this.disable(this.gl.SCISSOR_TEST)
		}
	}

	activeTexture(webglSlot: i32): void {
		if (webglSlot === undefined) webglSlot = this.gl.TEXTURE0 + this.maxTextures - 1

		if (this.currentTextureSlot !== webglSlot) {
			this.gl.activeTexture(webglSlot)
			this.currentTextureSlot = webglSlot
		}
	}

	bindTexture(webglType: i32, webglTexture: any): void {
		if (this.currentTextureSlot === null) {
			this.activeTexture()
		}

		let boundTexture = this.currentBoundTextures.get(this.currentTextureSlot!)
		if (boundTexture === undefined) {
			boundTexture = { type: undefined, texture: undefined }
			this.currentBoundTextures.set(this.currentTextureSlot!, boundTexture)
		}

		if (boundTexture.type !== webglType || boundTexture.texture !== webglTexture) {
			this.gl.bindTexture(webglType, webglTexture)

			boundTexture.type = webglType
			boundTexture.texture = webglTexture
		}
	}

	scissor(scissor: Vector4): void {
		if (this.currentScissor.equals(scissor) === false) {
			this.gl.scissor(scissor.x as i32, scissor.y as i32, scissor.z as i32, scissor.w as i32)
			this.currentScissor.copy(scissor)
		}
	}

	viewport(viewport: Vector4): void {
		if (this.currentViewport.equals(viewport) === false) {
			this.gl.viewport(viewport.x as i32, viewport.y as i32, viewport.z as i32, viewport.w as i32)
			this.currentViewport.copy(viewport)
		}
	}

	reset(): void {
		// Reset GL state
		this.gl.disable(this.gl.BLEND)
		this.gl.disable(this.gl.CULL_FACE)
		this.gl.disable(this.gl.DEPTH_TEST)
		this.gl.disable(this.gl.POLYGON_OFFSET_FILL)
		this.gl.disable(this.gl.SCISSOR_TEST)
		this.gl.disable(this.gl.STENCIL_TEST)

		this.gl.blendEquation(this.gl.FUNC_ADD)
		this.gl.blendFunc(this.gl.ONE, this.gl.ZERO)
		this.gl.blendFuncSeparate(this.gl.ONE, this.gl.ZERO, this.gl.ONE, this.gl.ZERO)

		this.gl.colorMask(true, true, true, true)
		this.gl.clearColor(0, 0, 0, 0)

		this.gl.depthMask(true)
		this.gl.depthFunc(this.gl.LESS)
		this.gl.clearDepth(1)

		this.gl.stencilMask(0xffffffff)
		this.gl.stencilFunc(this.gl.ALWAYS, 0, 0xffffffff)
		this.gl.stencilOp(this.gl.KEEP, this.gl.KEEP, this.gl.KEEP)
		this.gl.clearStencil(0)

		this.gl.cullFace(this.gl.BACK)
		this.gl.frontFace(this.gl.CCW)

		this.gl.polygonOffset(0, 0)

		this.gl.activeTexture(this.gl.TEXTURE0)

		this.gl.useProgram(null)

		this.gl.lineWidth(1)

		this.gl.scissor(0, 0, this.gl.canvas.width, this.gl.canvas.height)
		this.gl.viewport(0, 0, this.gl.canvas.width, this.gl.canvas.height)

		// Reset tracking state
		this.enabledCapabilities.clear()

		this.currentProgram = null

		this.currentBlendingEnabled = null
		this.currentBlending = null
		this.currentBlendEquation = null
		this.currentBlendSrc = null
		this.currentBlendDst = null
		this.currentBlendEquationAlpha = null
		this.currentBlendSrcAlpha = null
		this.currentBlendDstAlpha = null
		this.currentPremultipledAlpha = false

		this.currentFlipSided = null
		this.currentCullFace = null

		this.currentLineWidth = null

		this.currentPolygonOffsetFactor = null
		this.currentPolygonOffsetUnits = null

		this.currentTextureSlot = null
		this.currentBoundTextures.clear()

		this.currentScissor.set(0, 0, this.gl.canvas.width, this.gl.canvas.height)
		this.currentViewport.set(0, 0, this.gl.canvas.width, this.gl.canvas.height)

		// Reset buffer states
		this.color.reset()
		this.depth.reset()
		this.stencil.reset()
	}
}