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
 */

export const REVISION: string = '106dev'
export enum MOUSE {
	LEFT,
	MIDDLE,
	RIGHT,
}

// GL STATE CONSTANTS
export enum CullFace {}
export const CullFaceNone: CullFace = 0
export const CullFaceBack: CullFace = 1
export const CullFaceFront: CullFace = 2
export const CullFaceFrontBack: CullFace = 3

export enum FrontFaceDirection {}
export const FrontFaceDirectionCW: FrontFaceDirection = 0
export const FrontFaceDirectionCCW: FrontFaceDirection = 1

// Shadowing Type
export enum ShadowMapType {}
export const BasicShadowMap: ShadowMapType = 0
export const PCFShadowMap: ShadowMapType = 1
export const PCFSoftShadowMap: ShadowMapType = 1

// MATERIAL CONSTANTS

// side
export enum Side {}
export const FrontSide: Side = 0
export const BackSide: Side = 1
export const DoubleSide: Side = 2

// shading
export enum Shading {}
export const FlatShading: Shading = 1
export const SmoothShading: Shading = 2

// colors
export enum Colors {}
export const NoColors: Colors = 0
export const FaceColors: Colors = 1
export const VertexColors: Colors = 2

// blending modes
export enum Blending {}
export const NoBlending: Blending = 0
export const NormalBlending: Blending = 1
export const AdditiveBlending: Blending = 2
export const SubtractiveBlending: Blending = 3
export const MultiplyBlending: Blending = 4
export const CustomBlending: Blending = 5

// custom blending equations
// (numbers start from 100 not to clash with other
// mappings to OpenGL constants defined in Texture.js)
export enum BlendingEquation {}
export const AddEquation: BlendingEquation = 100
export const SubtractEquation: BlendingEquation = 101
export const ReverseSubtractEquation: BlendingEquation = 102
export const MinEquation: BlendingEquation = 103
export const MaxEquation: BlendingEquation = 104

// custom blending destination factors
export enum BlendingDstFactor {}
export const ZeroFactor: BlendingDstFactor = 200
export const OneFactor: BlendingDstFactor = 201
export const SrcColorFactor: BlendingDstFactor = 202
export const OneMinusSrcColorFactor: BlendingDstFactor = 203
export const SrcAlphaFactor: BlendingDstFactor = 204
export const OneMinusSrcAlphaFactor: BlendingDstFactor = 205
export const DstAlphaFactor: BlendingDstFactor = 206
export const OneMinusDstAlphaFactor: BlendingDstFactor = 207
export const DstColorFactor: BlendingDstFactor = 208
export const OneMinusDstColorFactor: BlendingDstFactor = 209

// custom blending src factors
export enum BlendingSrcFactor {}
export const SrcAlphaSaturateFactor: BlendingSrcFactor = 210

// depth modes
export enum DepthModes {}
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
export enum Combine {}
export const MultiplyOperation: Combine = 0
export const MixOperation: Combine = 1
export const AddOperation: Combine = 2

// Tone Mapping modes
export enum ToneMapping {}
export const NoToneMapping: ToneMapping = 0
export const LinearToneMapping: ToneMapping = 1
export const ReinhardToneMapping: ToneMapping = 2
export const Uncharted2ToneMapping: ToneMapping = 3
export const CineonToneMapping: ToneMapping = 4
export const ACESFilmicToneMapping: ToneMapping = 5

// Mapping modes
export enum Mapping {}
export const UVMapping: Mapping = 300
export const CubeReflectionMapping: Mapping = 301
export const CubeRefractionMapping: Mapping = 302
export const EquirectangularReflectionMapping: Mapping = 303
export const EquirectangularRefractionMapping: Mapping = 304
export const SphericalReflectionMapping: Mapping = 305
export const CubeUVReflectionMapping: Mapping = 306
export const CubeUVRefractionMapping: Mapping = 307

// Wrapping modes
export enum Wrapping {}
export const RepeatWrapping: Wrapping = 1000
export const ClampToEdgeWrapping: Wrapping = 1001
export const MirroredRepeatWrapping: Wrapping = 1002

// Filters
export enum TextureFilter {}
export const NearestFilter: TextureFilter = 1003
export const NearestMipMapNearestFilter: TextureFilter = 1004
export const NearestMipMapLinearFilter: TextureFilter = 1005
export const LinearFilter: TextureFilter = 1006
export const LinearMipMapNearestFilter: TextureFilter = 1007
export const LinearMipMapLinearFilter: TextureFilter = 1008

// Data types
export enum TextureDataType {}
export const UnsignedByteType: TextureDataType = 1009
export const ByteType: TextureDataType = 1010
export const ShortType: TextureDataType = 1011
export const UnsignedShortType: TextureDataType = 1012
export const IntType: TextureDataType = 1013
export const UnsignedIntType: TextureDataType = 1014
export const FloatType: TextureDataType = 1015
export const HalfFloatType: TextureDataType = 1016

// Pixel types
export enum PixelType {}
export const UnsignedShort4444Type: PixelType = 1017
export const UnsignedShort5551Type: PixelType = 1018
export const UnsignedShort565Type: PixelType = 1019
export const UnsignedInt248Type: PixelType = 1020

// Pixel formats
export enum PixelFormat {}
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
export enum CompressedPixelFormat {}
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
export enum AnimationActionLoopStyles {}
export const LoopOnce: AnimationActionLoopStyles = 2200
export const LoopRepeat: AnimationActionLoopStyles = 2201
export const LoopPingPong: AnimationActionLoopStyles = 2202

// Interpolation
export enum InterpolationModes {}
export const InterpolateDiscrete: InterpolationModes = 2300
export const InterpolateLinear: InterpolationModes = 2301
export const InterpolateSmooth: InterpolationModes = 2302

// Interpolant ending modes
export enum InterpolationEndingModes {}
export const ZeroCurvatureEnding: InterpolationEndingModes = 2400
export const ZeroSlopeEnding: InterpolationEndingModes = 2401
export const WrapAroundEnding: InterpolationEndingModes = 2402

// Triangle Draw modes
export enum TrianglesDrawModes {}
export const TrianglesDrawMode: TrianglesDrawModes = 0
export const TriangleStripDrawMode: TrianglesDrawModes = 1
export const TriangleFanDrawMode: TrianglesDrawModes = 2

// Texture Encodings
export enum TextureEncoding {}
export const LinearEncoding: TextureEncoding = 3000
export const sRGBEncoding: TextureEncoding = 3001
export const GammaEncoding: TextureEncoding = 3007
export const RGBEEncoding: TextureEncoding = 3002
export const LogLuvEncoding: TextureEncoding = 3003
export const RGBM7Encoding: TextureEncoding = 3004
export const RGBM16Encoding: TextureEncoding = 3005
export const RGBDEncoding: TextureEncoding = 3006

// Depth packing strategies
export enum DepthPackingStrategies {}
export const BasicDepthPacking: DepthPackingStrategies = 3200
export const RGBADepthPacking: DepthPackingStrategies = 3201

// Normal Map types
export enum NormalMapTypes {}
export const TangentSpaceNormalMap: NormalMapTypes = 0
export const ObjectSpaceNormalMap: NormalMapTypes = 0
