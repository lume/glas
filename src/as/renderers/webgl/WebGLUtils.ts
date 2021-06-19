import {WebGLRenderingContext} from '../../../../node_modules/aswebglue/src/WebGL'
import * as Constants from '../../constants'
import {WebGLCapabilities} from './WebGLCapabilities'

// WIP

class NotYet {}

export class WebGLUtils {
	constructor(
		private gl: WebGLRenderingContext /*| WebGL2RenderingContext*/,
		extensions: NotYet | null,
		private capabilities: WebGLCapabilities
	) {}

	convert(p: any): void {
		// const extension;

		if (p === Constants.RepeatWrapping) return this.gl.REPEAT
		if (p === Constants.ClampToEdgeWrapping) return this.gl.CLAMP_TO_EDGE
		if (p === Constants.MirroredRepeatWrapping) return this.gl.MIRRORED_REPEAT

		if (p === Constants.NearestFilter) return this.gl.NEAREST
		if (p === Constants.NearestMipMapNearestFilter) return this.gl.NEAREST_MIPMAP_NEAREST
		if (p === Constants.NearestMipMapLinearFilter) return this.gl.NEAREST_MIPMAP_LINEAR

		if (p === Constants.LinearFilter) return this.gl.LINEAR
		if (p === Constants.LinearMipMapNearestFilter) return this.gl.LINEAR_MIPMAP_NEAREST
		if (p === Constants.LinearMipMapLinearFilter) return this.gl.LINEAR_MIPMAP_LINEAR

		if (p === Constants.UnsignedByteType) return this.gl.UNSIGNED_BYTE
		if (p === Constants.UnsignedShort4444Type) return this.gl.UNSIGNED_SHORT_4_4_4_4
		if (p === Constants.UnsignedShort5551Type) return this.gl.UNSIGNED_SHORT_5_5_5_1
		if (p === Constants.UnsignedShort565Type) return this.gl.UNSIGNED_SHORT_5_6_5

		if (p === Constants.ByteType) return this.gl.BYTE
		if (p === Constants.ShortType) return this.gl.SHORT
		if (p === Constants.UnsignedShortType) return this.gl.UNSIGNED_SHORT
		if (p === Constants.IntType) return this.gl.INT
		if (p === Constants.UnsignedIntType) return this.gl.UNSIGNED_INT
		if (p === Constants.FloatType) return this.gl.FLOAT

		// if ( p === HalfFloatType ) {

		if (this.capabilities.isWebGL2) return this.gl.HALF_FLOAT

		// 	extension = extensions.get( 'OES_texture_half_float' );

		// 	if ( extension !== null ) return extension.HALF_FLOAT_OES;

		// }

		if (p === Constants.AlphaFormat) return this.gl.ALPHA
		if (p === Constants.RGBFormat) return this.gl.RGB
		if (p === Constants.RGBAFormat) return this.gl.RGBA
		if (p === Constants.LuminanceFormat) return this.gl.LUMINANCE
		if (p === Constants.LuminanceAlphaFormat) return this.gl.LUMINANCE_ALPHA
		if (p === Constants.DepthFormat) return this.gl.DEPTH_COMPONENT
		if (p === Constants.DepthStencilFormat) return this.gl.DEPTH_STENCIL
		if (p === Constants.RedFormat) return this.gl.RED

		if (p === Constants.AddEquation) return this.gl.FUNC_ADD
		if (p === Constants.SubtractEquation) return this.gl.FUNC_SUBTRACT
		if (p === Constants.ReverseSubtractEquation) return this.gl.FUNC_REVERSE_SUBTRACT

		if (p === Constants.BlendingDstFactor.ZeroFactor) return this.gl.ZERO
		if (p === Constants.BlendingDstFactor.OneFactor) return this.gl.ONE
		if (p === Constants.BlendingDstFactor.SrcColorFactor) return this.gl.SRC_COLOR
		if (p === Constants.BlendingDstFactor.OneMinusSrcColorFactor) return this.gl.ONE_MINUS_SRC_COLOR
		if (p === Constants.BlendingDstFactor.SrcAlphaFactor) return this.gl.SRC_ALPHA
		if (p === Constants.BlendingDstFactor.OneMinusSrcAlphaFactor) return this.gl.ONE_MINUS_SRC_ALPHA
		if (p === Constants.BlendingDstFactor.DstAlphaFactor) return this.gl.DST_ALPHA
		if (p === Constants.BlendingDstFactor.OneMinusDstAlphaFactor) return this.gl.ONE_MINUS_DST_ALPHA

		if (p === Constants.BlendingSrcFactor.DstColorFactor) return this.gl.DST_COLOR
		if (p === Constants.BlendingSrcFactor.OneMinusDstColorFactor) return this.gl.ONE_MINUS_DST_COLOR
		if (p === Constants.BlendingSrcFactor.SrcAlphaSaturateFactor) return this.gl.SRC_ALPHA_SATURATE

		// if ( p === RGB_S3TC_DXT1_Format || p === RGBA_S3TC_DXT1_Format ||
		// 	p === RGBA_S3TC_DXT3_Format || p === RGBA_S3TC_DXT5_Format ) {

		// 	extension = extensions.get( 'WEBGL_compressed_texture_s3tc' );

		// 	if ( extension !== null ) {

		// 		if ( p === RGB_S3TC_DXT1_Format ) return extension.COMPRESSED_RGB_S3TC_DXT1_EXT;
		// 		if ( p === RGBA_S3TC_DXT1_Format ) return extension.COMPRESSED_RGBA_S3TC_DXT1_EXT;
		// 		if ( p === RGBA_S3TC_DXT3_Format ) return extension.COMPRESSED_RGBA_S3TC_DXT3_EXT;
		// 		if ( p === RGBA_S3TC_DXT5_Format ) return extension.COMPRESSED_RGBA_S3TC_DXT5_EXT;

		// 	}

		// }

		// if ( p === RGB_PVRTC_4BPPV1_Format || p === RGB_PVRTC_2BPPV1_Format ||
		// 	p === RGBA_PVRTC_4BPPV1_Format || p === RGBA_PVRTC_2BPPV1_Format ) {

		// 	extension = extensions.get( 'WEBGL_compressed_texture_pvrtc' );

		// 	if ( extension !== null ) {

		// 		if ( p === RGB_PVRTC_4BPPV1_Format ) return extension.COMPRESSED_RGB_PVRTC_4BPPV1_IMG;
		// 		if ( p === RGB_PVRTC_2BPPV1_Format ) return extension.COMPRESSED_RGB_PVRTC_2BPPV1_IMG;
		// 		if ( p === RGBA_PVRTC_4BPPV1_Format ) return extension.COMPRESSED_RGBA_PVRTC_4BPPV1_IMG;
		// 		if ( p === RGBA_PVRTC_2BPPV1_Format ) return extension.COMPRESSED_RGBA_PVRTC_2BPPV1_IMG;

		// 	}

		// }

		// if ( p === RGB_ETC1_Format ) {

		// 	extension = extensions.get( 'WEBGL_compressed_texture_etc1' );

		// 	if ( extension !== null ) return extension.COMPRESSED_RGB_ETC1_WEBGL;

		// }

		// if ( p === RGBA_ASTC_4x4_Format || p === RGBA_ASTC_5x4_Format || p === RGBA_ASTC_5x5_Format ||
		// 	p === RGBA_ASTC_6x5_Format || p === RGBA_ASTC_6x6_Format || p === RGBA_ASTC_8x5_Format ||
		// 	p === RGBA_ASTC_8x6_Format || p === RGBA_ASTC_8x8_Format || p === RGBA_ASTC_10x5_Format ||
		// 	p === RGBA_ASTC_10x6_Format || p === RGBA_ASTC_10x8_Format || p === RGBA_ASTC_10x10_Format ||
		// 	p === RGBA_ASTC_12x10_Format || p === RGBA_ASTC_12x12_Format ) {

		// 	extension = extensions.get( 'WEBGL_compressed_texture_astc' );

		// 	if ( extension !== null ) {

		// 		return p;

		// 	}

		// }

		if (p === Constants.MinEquation || p === Constants.MaxEquation) {
			if (this.capabilities.isWebGL2) {
				if (p === Constants.MinEquation) return gl.MIN
				if (p === Constants.MaxEquation) return gl.MAX
			}

			// extension = extensions.get( 'EXT_blend_minmax' );

			// if ( extension !== null ) {

			// 	if ( p === Constants. MinEquation ) return extension.MIN_EXT;
			// 	if ( p === Constants. MaxEquation ) return extension.MAX_EXT;

			// }
		}

		if (p === Constants.UnsignedInt248Type) {
			if (this.capabilities.isWebGL2) return gl.UNSIGNED_INT_24_8

			extension = extensions.get('WEBGL_depth_texture')

			if (extension !== null) return extension.UNSIGNED_INT_24_8_WEBGL
		}

		return 0
	}
}
