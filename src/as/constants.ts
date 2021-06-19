/**
 * @author mrdoob / http://mrdoob.com/
 * @author Mugen87 / https://github.com/Mugen87
 * @author Lu Wang / http://github.com/luwangthreekit
 * @author WestLangley / http://github.com/westlangley
 * @author Rich-Harris / http://github.com/rich-harris
 * @author Benjamin-Dobell / http://github.com/benjamin-dobell
 * @author artur-trzesiok / http://github.com/artur-trzesiok
 * @author AtiX / http://github.com/atix
 * @author amakaseev / http://github.com/amakaseev
 * @author bhouston / http://exocortex.com
 * @author TristanVALCKE / https://github.com/Itee
 * @author corruptedzulu / http://github.com/corruptedzulu
 * @author Joe Pea / http://github.com/trusktr
 */

// export const REVISION: string = '125'

export enum MOUSE {
	LEFT = 0,
	MIDDLE = 1,
	RIGHT = 2,

	ROTATE = 0,
	DOLLY = 1,
	PAN = 2,
}

export enum TOUCH {
	ROTATE = 0,
	PAN = 1,
	DOLLY_PAN = 2,
	DOLLY_ROTATE = 3,
}

// GL STATE CONSTANTS
export enum CullFace {
	CullFaceNone = 0,
	CullFaceBack = 1,
	CullFaceFront = 2,
	CullFaceFrontBack = 3,
}
export const CullFaceNone: CullFace = 0
export const CullFaceBack: CullFace = 1
export const CullFaceFront: CullFace = 2
export const CullFaceFrontBack: CullFace = 3

// Shadowing Type
export enum ShadowMapType {
	BasicShadowMap = 0,
	PCFShadowMap = 1,
	PCFSoftShadowMap = 2,
	VSMShadowMap = 3,
}
export const BasicShadowMap: ShadowMapType = 0
export const PCFShadowMap: ShadowMapType = 1
export const PCFSoftShadowMap: ShadowMapType = 2
export const VSMShadowMap: ShadowMapType = 3

// MATERIAL CONSTANTS

// side
export enum Side {
	FrontSide,
	BackSide,
	DoubleSide,
}

// shadow side
export enum ShadowSide {
	FrontSide,
	BackSide,
	DoubleSide,
	AutoSide,
}

// shading
export enum Shading {
	FlatShading = 1,
	SmoothShading = 2,
}
export const FlatShading: Shading = 1
export const SmoothShading: Shading = 2

export enum Precision {
	Highp,
	Mediump,
	Lowp,
	Default,
}

export enum PowerPreference {
	HighPerformance,
	LowPower,
	Default,
}

// colors
export enum Colors {
	NoColors = 0,
	FaceColors = 1,
	VertexColors = 2,
}
export const NoColors: Colors = 0
export const FaceColors: Colors = 1
export const VertexColors: Colors = 2

// blending modes
export enum Blending {
	NoBlending = 0,
	NormalBlending = 1,
	AdditiveBlending = 2,
	SubtractiveBlending = 3,
	MultiplyBlending = 4,
	CustomBlending = 5,
}
export const NoBlending: Blending = 0
export const NormalBlending: Blending = 1
export const AdditiveBlending: Blending = 2
export const SubtractiveBlending: Blending = 3
export const MultiplyBlending: Blending = 4
export const CustomBlending: Blending = 5

// custom blending equations
// (numbers start from 100 not to clash with other
// mappings to OpenGL constants defined in Texture.js)
export enum BlendingEquation {
	AddEquation = 100,
	SubtractEquation = 101,
	ReverseSubtractEquation = 102,
	MinEquation = 103,
	MaxEquation = 104,
}
export const AddEquation: BlendingEquation = 100
export const SubtractEquation: BlendingEquation = 101
export const ReverseSubtractEquation: BlendingEquation = 102
export const MinEquation: BlendingEquation = 103
export const MaxEquation: BlendingEquation = 104

// custom blending destination factors
export enum BlendingDstFactor {
	ZeroFactor = 200,
	OneFactor = 201,
	SrcColorFactor = 202,
	OneMinusSrcColorFactor = 203,
	SrcAlphaFactor = 204,
	OneMinusSrcAlphaFactor = 205,
	DstAlphaFactor = 206,
	OneMinusDstAlphaFactor = 207,
	DstColorFactor = 208,
	OneMinusDstColorFactor = 209,
}

// custom blending source factors (contains the same values as BlendingDstFactor,
// plus one additional value that is only valid as a source value)
export enum BlendingSrcFactor {
	ZeroFactor = 200,
	OneFactor = 201,
	SrcColorFactor = 202,
	OneMinusSrcColorFactor = 203,
	SrcAlphaFactor = 204,
	OneMinusSrcAlphaFactor = 205,
	DstAlphaFactor = 206,
	OneMinusDstAlphaFactor = 207,
	DstColorFactor = 208,
	OneMinusDstColorFactor = 209,
	SrcAlphaSaturateFactor = 210,
}

// depth modes
export enum DepthModes {
	NeverDepth = 0,
	AlwaysDepth = 1,
	LessDepth = 2,
	LessEqualDepth = 3,
	EqualDepth = 4,
	GreaterEqualDepth = 5,
	GreaterDepth = 6,
	NotEqualDepth = 7,
}
export const NeverDepth: DepthModes = 0
export const AlwaysDepth: DepthModes = 1
export const LessDepth: DepthModes = 2
export const LessEqualDepth: DepthModes = 3
export const EqualDepth: DepthModes = 4
export const GreaterEqualDepth: DepthModes = 5
export const GreaterDepth: DepthModes = 6
export const NotEqualDepth: DepthModes = 7

// TEXTURE CONSTANTS
// Operations
export enum Combine {
	MultiplyOperation = 0,
	MixOperation = 1,
	AddOperation = 2,
}
export const MultiplyOperation: Combine = 0
export const MixOperation: Combine = 1
export const AddOperation: Combine = 2

// Tone Mapping modes
export enum ToneMapping {
	NoToneMapping = 0,
	LinearToneMapping = 1,
	ReinhardToneMapping = 2,
	Uncharted2ToneMapping = 3,
	CineonToneMapping = 4,
	ACESFilmicToneMapping = 5,
}
export const NoToneMapping: ToneMapping = ToneMapping.NoToneMapping
export const LinearToneMapping: ToneMapping = ToneMapping.LinearToneMapping
export const ReinhardToneMapping: ToneMapping = ToneMapping.ReinhardToneMapping
export const Uncharted2ToneMapping: ToneMapping = ToneMapping.Uncharted2ToneMapping
export const CineonToneMapping: ToneMapping = ToneMapping.CineonToneMapping
export const ACESFilmicToneMapping: ToneMapping = ToneMapping.ACESFilmicToneMapping

// Mapping modes
export enum Mapping {
	UVMapping = 300,
	CubeReflectionMapping = 301,
	CubeRefractionMapping = 302,
	EquirectangularReflectionMapping = 303,
	EquirectangularRefractionMapping = 304,
	SphericalReflectionMapping = 305,
	CubeUVReflectionMapping = 306,
	CubeUVRefractionMapping = 307,
}
export const UVMapping: Mapping = 300
export const CubeReflectionMapping: Mapping = 301
export const CubeRefractionMapping: Mapping = 302
export const EquirectangularReflectionMapping: Mapping = 303
export const EquirectangularRefractionMapping: Mapping = 304
export const SphericalReflectionMapping: Mapping = 305
export const CubeUVReflectionMapping: Mapping = 306
export const CubeUVRefractionMapping: Mapping = 307

// Wrapping modes
export enum Wrapping {
	RepeatWrapping = 1000,
	ClampToEdgeWrapping = 1001,
	MirroredRepeatWrapping = 1002,
}
export const RepeatWrapping: Wrapping = 1000
export const ClampToEdgeWrapping: Wrapping = 1001
export const MirroredRepeatWrapping: Wrapping = 1002

// Filters
export enum TextureFilter {
	NearestFilter = 1003,
	NearestMipMapNearestFilter = 1004,
	NearestMipMapLinearFilter = 1005,
	LinearFilter = 1006,
	LinearMipMapNearestFilter = 1007,
	LinearMipMapLinearFilter = 1008,
}
export const NearestFilter: TextureFilter = 1003
export const NearestMipMapNearestFilter: TextureFilter = 1004
export const NearestMipMapLinearFilter: TextureFilter = 1005
export const LinearFilter: TextureFilter = 1006
export const LinearMipMapNearestFilter: TextureFilter = 1007
export const LinearMipMapLinearFilter: TextureFilter = 1008

// Data types
export enum TextureDataType {
	UnsignedByteType = 1009,
	ByteType = 1010,
	ShortType = 1011,
	UnsignedShortType = 1012,
	IntType = 1013,
	UnsignedIntType = 1014,
	FloatType = 1015,
	HalfFloatType = 1016,
}
export const UnsignedByteType: TextureDataType = 1009
export const ByteType: TextureDataType = 1010
export const ShortType: TextureDataType = 1011
export const UnsignedShortType: TextureDataType = 1012
export const IntType: TextureDataType = 1013
export const UnsignedIntType: TextureDataType = 1014
export const FloatType: TextureDataType = 1015
export const HalfFloatType: TextureDataType = 1016

// Pixel types
export enum PixelType {
	UnsignedShort4444Type = 1017,
	UnsignedShort5551Type = 1018,
	UnsignedShort565Type = 1019,
	UnsignedInt248Type = 1020,
}
export const UnsignedShort4444Type: PixelType = 1017
export const UnsignedShort5551Type: PixelType = 1018
export const UnsignedShort565Type: PixelType = 1019
export const UnsignedInt248Type: PixelType = 1020

// Pixel formats
export enum PixelFormat {
	AlphaFormat = 1021,
	RGBFormat = 1022,
	RGBAFormat = 1023,
	LuminanceFormat = 1024,
	LuminanceAlphaFormat = 1025,
	RGBEFormat = RGBAFormat,
	DepthFormat = 1026,
	DepthStencilFormat = 1027,
	RedFormat = 1028,
}
export const AlphaFormat: PixelFormat = 1021
export const RGBFormat: PixelFormat = 1022
export const RGBAFormat: PixelFormat = 1023
export const LuminanceFormat: PixelFormat = 1024
export const LuminanceAlphaFormat: PixelFormat = 1025
export const RGBEFormat: PixelFormat = RGBAFormat
export const DepthFormat: PixelFormat = 1026
export const DepthStencilFormat: PixelFormat = 1027
export const RedFormat: PixelFormat = 1028

// Compressed texture formats
// DDS / ST3C Compressed texture formats
export enum CompressedPixelFormat {
	RGB_S3TC_DXT1_Format = 33776,
	RGBA_S3TC_DXT1_Format = 33777,
	RGBA_S3TC_DXT3_Format = 33778,
	RGBA_S3TC_DXT5_Format = 33779,
}
export const RGB_S3TC_DXT1_Format: CompressedPixelFormat = 33776
export const RGBA_S3TC_DXT1_Format: CompressedPixelFormat = 33777
export const RGBA_S3TC_DXT3_Format: CompressedPixelFormat = 33778
export const RGBA_S3TC_DXT5_Format: CompressedPixelFormat = 33779

// PVRTC compressed './texture formats
export const RGB_PVRTC_4BPPV1_Format: CompressedPixelFormat = 35840
export const RGB_PVRTC_2BPPV1_Format: CompressedPixelFormat = 35841
export const RGBA_PVRTC_4BPPV1_Format: CompressedPixelFormat = 35842
export const RGBA_PVRTC_2BPPV1_Format: CompressedPixelFormat = 35843

// ETC compressed texture formats
export const RGB_ETC1_Format: CompressedPixelFormat = 36196

// ASTC compressed texture formats
export const RGBA_ASTC_4x4_Format: CompressedPixelFormat = 37808
export const RGBA_ASTC_5x4_Format: CompressedPixelFormat = 37809
export const RGBA_ASTC_5x5_Format: CompressedPixelFormat = 37810
export const RGBA_ASTC_6x5_Format: CompressedPixelFormat = 37811
export const RGBA_ASTC_6x6_Format: CompressedPixelFormat = 37812
export const RGBA_ASTC_8x5_Format: CompressedPixelFormat = 37813
export const RGBA_ASTC_8x6_Format: CompressedPixelFormat = 37814
export const RGBA_ASTC_8x8_Format: CompressedPixelFormat = 37815
export const RGBA_ASTC_10x5_Format: CompressedPixelFormat = 37816
export const RGBA_ASTC_10x6_Format: CompressedPixelFormat = 37817
export const RGBA_ASTC_10x8_Format: CompressedPixelFormat = 37818
export const RGBA_ASTC_10x10_Format: CompressedPixelFormat = 37819
export const RGBA_ASTC_12x10_Format: CompressedPixelFormat = 37820
export const RGBA_ASTC_12x12_Format: CompressedPixelFormat = 37821

// Loop styles for AnimationAction
export enum AnimationActionLoopStyles {
	LoopOnce = 2200,
	LoopRepeat = 2201,
	LoopPingPong = 2202,
}
export const LoopOnce: AnimationActionLoopStyles = 2200
export const LoopRepeat: AnimationActionLoopStyles = 2201
export const LoopPingPong: AnimationActionLoopStyles = 2202

// Interpolation
export enum InterpolationModes {
	InterpolateDiscrete = 2300,
	InterpolateLinear = 2301,
	InterpolateSmooth = 2302,
}
export const InterpolateDiscrete: InterpolationModes = 2300
export const InterpolateLinear: InterpolationModes = 2301
export const InterpolateSmooth: InterpolationModes = 2302

// Interpolant ending modes
export enum InterpolationEndingModes {
	ZeroCurvatureEnding = 2400,
	ZeroSlopeEnding = 2401,
	WrapAroundEnding = 2402,
}
export const ZeroCurvatureEnding: InterpolationEndingModes = 2400
export const ZeroSlopeEnding: InterpolationEndingModes = 2401
export const WrapAroundEnding: InterpolationEndingModes = 2402

// Triangle Draw modes
export enum TrianglesDrawModes {
	TrianglesDrawMode = 0,
	TriangleStripDrawMode = 1,
	TriangleFanDrawMode = 2,
}
export const TrianglesDrawMode: TrianglesDrawModes = 0
export const TriangleStripDrawMode: TrianglesDrawModes = 1
export const TriangleFanDrawMode: TrianglesDrawModes = 2

// Texture Encodings
export enum TextureEncoding {
	LinearEncoding = 3000,
	sRGBEncoding = 3001,
	GammaEncoding = 3007,
	RGBEEncoding = 3002,
	LogLuvEncoding = 3003,
	RGBM7Encoding = 3004,
	RGBM16Encoding = 3005,
	RGBDEncoding = 3006,
}
export const LinearEncoding: TextureEncoding = 3000
export const sRGBEncoding: TextureEncoding = 3001
export const GammaEncoding: TextureEncoding = 3007
export const RGBEEncoding: TextureEncoding = 3002
export const LogLuvEncoding: TextureEncoding = 3003
export const RGBM7Encoding: TextureEncoding = 3004
export const RGBM16Encoding: TextureEncoding = 3005
export const RGBDEncoding: TextureEncoding = 3006

// Depth packing strategies
export enum DepthPackingStrategies {
	BasicDepthPacking = 3200,
	RGBADepthPacking = 3201,
}
export const BasicDepthPacking: DepthPackingStrategies = 3200
export const RGBADepthPacking: DepthPackingStrategies = 3201

// Normal Map types
export enum NormalMapTypes {
	TangentSpaceNormalMap = 0,
	ObjectSpaceNormalMap = 0,
}
export const TangentSpaceNormalMap: NormalMapTypes = 0
export const ObjectSpaceNormalMap: NormalMapTypes = 0
