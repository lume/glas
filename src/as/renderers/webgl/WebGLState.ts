// CONTINUE: Redo the instrumentation on Three r125, but account for classes that do this:

// function Foo{
// 	return {
// 		... props and methods ...
// 	}
// }

// and then update the Google docs with the updated listing.

import { WebGLRenderingContext } from '../../../../node_modules/aswebglue/src/WebGL'
import { CullFace, Blending, BlendingEquation, BlendingSrcFactor, BlendingDstFactor, DepthModes } from '../../constants'
import { WebGLCapabilities } from './WebGLCapabilities'
import { WebGLExtensions } from './WebGLExtensions'
import { Material } from '../../materials/Material'
import { Vector4 } from '../../math/Vector4'

export class ColorBuffer {
	locked: boolean = false
	setMask(colorMask: boolean): void {}
	// setLocked(lock: boolean): void {}
	setClear(r: f32, g: f32, b: f32, a: f32, premultipliedAlpha: boolean): void {}
	reset(): void {}
}

export class DepthBuffer {
	locked: boolean = false
	setTest(depthTest: boolean): void {}
	setMask(depthMask: boolean): void {}
	setFunc(depthFunc: DepthModes): void {}
	// setLocked(lock: boolean): void {}
	setClear(depth: f32): void {}
	reset(): void {}
}

export class StencilBuffer {
	locked: boolean = false
	setTest(stencilTest: boolean): void {}
	setMask(stencilMask: f32): void {}
	setFunc(stencilFunc: f32, stencilRef: f32, stencilMask: f32): void {}
	// setOp(stencilFail: f32, stencilZFail: f32, stencilZPass: f32): void {}
	// setLocked(lock: boolean): void {}
	setClear(stencil: f32): void {}
	reset(): void {}
}

export class WebGLState {
	constructor(gl: WebGLRenderingContext, extensions: WebGLExtensions, utils: any, capabilities: WebGLCapabilities) {}

	// TODO: Initialize these buffers properly in constructor
	color: WebGLColorBuffer = null!
	depth: WebGLDepthBuffer = null!  
	stencil: WebGLStencilBuffer = null!

	initAttributes(): void {}
	enableAttribute(attribute: f32): void {}
	enableAttributeAndDivisor(attribute: f32, meshPerAttribute: f32): void {}
	disableUnusedAttributes(): void {}
	enable(id: f32): void {}
	disable(id: f32): void {}
	useProgram(program: any): boolean {
		return false // TODO implement
	}
	setBlending(
		blending: Blending,
		blendEquation: BlendingEquation,
		blendSrc: BlendingSrcFactor,
		blendDst: BlendingDstFactor,
		blendEquationAlpha: BlendingEquation,
		blendSrcAlpha: BlendingSrcFactor,
		blendDstAlpha: BlendingDstFactor,
		premultiplyAlpha: boolean
	): void {
		// TODO implement blending
	}
	setMaterial(material: Material, frontFaceCW: boolean): void {}
	setFlipSided(flipSided: boolean): void {}
	setCullFace(cullFace: CullFace): void {}
	// setLineWidth(width: f32): void {}
	setPolygonOffset(polygonoffset: boolean, factor: f32, units: f32): void {}
	// setScissorTest(scissorTest: boolean): void {}
	// activeTexture(webglSlot: f32): void {}
	// bindTexture(webglType: f32, webglTexture: any): void {}
	// Same interface as https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext/compressedTexImage2D
	// compressedTexImage2D(
	// 	target: f32,
	// 	level: f32,
	// 	internalformat: f32,
	// 	width: f32,
	// 	height: f32,
	// 	border: f32,
	// 	data: ArrayBufferView
	// ): void {}
	// Same interface as https://developer.mozilla.org/en-US/docs/Web/API/WebGLRenderingContext/texImage2D
	// texImage2D(
	// 	target: f32,
	// 	level: f32,
	// 	internalformat: f32,
	// 	width: f32,
	// 	height: f32,
	// 	border: f32,
	// 	format: f32,
	// 	type: f32,
	// 	pixels: ArrayBufferView | null
	// ): void {}
	// texImage2D(target: f32, level: f32, internalformat: f32, format: f32, type: f32, source: any): void {}
	// texImage3D(
	// 	target: f32,
	// 	level: f32,
	// 	internalformat: f32,
	// 	width: f32,
	// 	height: f32,
	// 	depth: f32,
	// 	border: f32,
	// 	format: f32,
	// 	type: f32,
	// 	pixels: any
	// ): void {}
	scissor(scissor: Vector4): void {}
	viewport(viewport: Vector4): void {}
	reset(): void {}
}
