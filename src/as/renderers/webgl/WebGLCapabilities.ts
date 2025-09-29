import { WebGLRenderingContext } from '../../../../node_modules/aswebglue/src/WebGL'

export class WebGLCapabilitiesParameters {
	precision: any = null
	logarithmicDepthBuffer: any = null
}

// TODO move this to ASWebGLue
class WebGLShaderPrecisionFormat {
	rangeMin: f32
	rangeMax: f32
	precision: f32
}

// TODO move this to ASWebGLue
class WebGL2RenderingContext {}

class NothingYet {}

export class WebGLCapabilities {
	constructor(
		private gl: WebGLRenderingContext,
		extensions: NothingYet | null,
		parameters: WebGLCapabilitiesParameters
	) {}

	precision: string = '' // 'highp' | 'mediump' | 'lowp'
	isWebGL2: boolean = false // this.gl instanceof WebGL2RenderingContext
	logarithmicDepthBuffer: any = null
	maxTextures: any = null
	maxVertexTextures: any = null
	maxTextureSize: any = null
	maxCubemapSize: any = null
	maxAttributes: any = null
	maxVertexUniforms: any = null
	maxVaryings: any = null
	maxFragmentUniforms: any = null
	vertexTextures: any = null
	floatFragmentTextures: any = null
	floatVertexTextures: any = null

	// -1 means not detected yet.
	private maxAnisotropy: f32 = -1

	getMaxAnisotropy(): f32 {
		if (this.maxAnisotropy !== -1) return this.maxAnisotropy

		// const extension = extensions.get( 'EXT_texture_filter_anisotropic' );

		// if (extension !== null) {
		// 	this.maxAnisotropy = this.gl.getParameter(extension.MAX_TEXTURE_MAX_ANISOTROPY_EXT)
		// } else {
		this.maxAnisotropy = 0
		// }

		return this.maxAnisotropy
	}

	getMaxPrecision(precision: string): string {
		if (precision === 'highp') {
			// TODO
			// if (
			// 	this.gl.getShaderPrecisionFormat(this.gl.VERTEX_SHADER, this.gl.HIGH_FLOAT).precision > 0 &&
			// 	this.gl.getShaderPrecisionFormat(this.gl.FRAGMENT_SHADER, this.gl.HIGH_FLOAT).precision > 0
			// ) {
			// 	return 'highp'
			// }

			precision = 'mediump'
		}

		if (precision === 'mediump') {
			// TODO
			// if (
			// 	this.gl.getShaderPrecisionFormat(this.gl.VERTEX_SHADER, this.gl.MEDIUM_FLOAT).precision > 0 &&
			// 	this.gl.getShaderPrecisionFormat(this.gl.FRAGMENT_SHADER, this.gl.MEDIUM_FLOAT).precision > 0
			// ) {
			// 	return 'mediump'
			// }
		}

		return 'lowp'
	}
}
