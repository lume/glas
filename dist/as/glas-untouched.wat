(module
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_f32_=>_none (func (param i32 f32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $none_=>_none (func))
 (type $i32_=>_f32 (func (param i32) (result f32)))
 (type $i32_i32_f32_=>_i32 (func (param i32 i32 f32) (result i32)))
 (type $i32_f32_=>_i32 (func (param i32 f32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i32_f32_f32_f32_=>_i32 (func (param i32 f32 f32 f32) (result i32)))
 (type $i32_f32_f32_f32_i32_=>_i32 (func (param i32 f32 f32 f32 i32) (result i32)))
 (type $i32_i32_=>_f32 (func (param i32 i32) (result f32)))
 (type $f32_=>_f32 (func (param f32) (result f32)))
 (type $i32_i32_i32_i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32 i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_f32_=>_none (func (param i32 i32 f32)))
 (type $f32_f32_=>_f32 (func (param f32 f32) (result f32)))
 (type $i32_f32_f32_f32_f32_=>_i32 (func (param i32 f32 f32 f32 f32) (result i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $f32_=>_none (func (param f32)))
 (type $i32_i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $i32_i64_i32_=>_none (func (param i32 i64 i32)))
 (type $i64_i32_=>_i32 (func (param i64 i32) (result i32)))
 (type $i32_i64_i32_i32_=>_none (func (param i32 i64 i32 i32)))
 (type $f32_f32_f32_=>_f32 (func (param f32 f32 f32) (result f32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "imports" "log" (func $src/as/imports/log (param i32)))
 (global $~lib/math/NativeMath.PI f64 (f64.const 3.141592653589793))
 (global $~lib/math/NativeMathf.PI f32 (f32.const 3.1415927410125732))
 (global $src/as/math/MathUtils/DEG2RAD f32 (f32.const 0.01745329238474369))
 (global $src/as/math/MathUtils/RAD2DEG f32 (f32.const 57.2957763671875))
 (global $src/as/math/Vector4/min i32 (i32.const 0))
 (global $src/as/math/Vector4/max i32 (i32.const 0))
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/shared/runtime/Runtime.Stub i32 (i32.const 0))
 (global $~lib/shared/runtime/Runtime.Minimal i32 (i32.const 1))
 (global $~lib/shared/runtime/Runtime.Incremental i32 (i32.const 2))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/ASC_LOW_MEMORY_LIMIT i32 (i32.const 0))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $src/as/math/Color/hsl (mut i32) (i32.const 0))
 (global $src/as/math/Color/hslA (mut i32) (i32.const 0))
 (global $src/as/math/Color/hslB (mut i32) (i32.const 0))
 (global $src/as/math/Color/Colors.aliceblue (mut i32) (i32.const 15792383))
 (global $src/as/math/Color/Colors.antiquewhite (mut i32) (i32.const 16444375))
 (global $src/as/math/Color/Colors.aqua (mut i32) (i32.const 65535))
 (global $src/as/math/Color/Colors.aquamarine (mut i32) (i32.const 8388564))
 (global $src/as/math/Color/Colors.azure (mut i32) (i32.const 15794175))
 (global $src/as/math/Color/Colors.beige (mut i32) (i32.const 16119260))
 (global $src/as/math/Color/Colors.bisque (mut i32) (i32.const 16770244))
 (global $src/as/math/Color/Colors.black (mut i32) (i32.const 0))
 (global $src/as/math/Color/Colors.blanchedalmond (mut i32) (i32.const 16772045))
 (global $src/as/math/Color/Colors.blue (mut i32) (i32.const 255))
 (global $src/as/math/Color/Colors.blueviolet (mut i32) (i32.const 9055202))
 (global $src/as/math/Color/Colors.brown (mut i32) (i32.const 10824234))
 (global $src/as/math/Color/Colors.burlywood (mut i32) (i32.const 14596231))
 (global $src/as/math/Color/Colors.cadetblue (mut i32) (i32.const 6266528))
 (global $src/as/math/Color/Colors.chartreuse (mut i32) (i32.const 8388352))
 (global $src/as/math/Color/Colors.chocolate (mut i32) (i32.const 13789470))
 (global $src/as/math/Color/Colors.coral (mut i32) (i32.const 16744272))
 (global $src/as/math/Color/Colors.cornflowerblue (mut i32) (i32.const 6591981))
 (global $src/as/math/Color/Colors.cornsilk (mut i32) (i32.const 16775388))
 (global $src/as/math/Color/Colors.crimson (mut i32) (i32.const 14423100))
 (global $src/as/math/Color/Colors.cyan (mut i32) (i32.const 65535))
 (global $src/as/math/Color/Colors.darkblue (mut i32) (i32.const 139))
 (global $src/as/math/Color/Colors.darkcyan (mut i32) (i32.const 35723))
 (global $src/as/math/Color/Colors.darkgoldenrod (mut i32) (i32.const 12092939))
 (global $src/as/math/Color/Colors.darkgray (mut i32) (i32.const 11119017))
 (global $src/as/math/Color/Colors.darkgreen (mut i32) (i32.const 25600))
 (global $src/as/math/Color/Colors.darkgrey (mut i32) (i32.const 11119017))
 (global $src/as/math/Color/Colors.darkkhaki (mut i32) (i32.const 12433259))
 (global $src/as/math/Color/Colors.darkmagenta (mut i32) (i32.const 9109643))
 (global $src/as/math/Color/Colors.darkolivegreen (mut i32) (i32.const 5597999))
 (global $src/as/math/Color/Colors.darkorange (mut i32) (i32.const 16747520))
 (global $src/as/math/Color/Colors.darkorchid (mut i32) (i32.const 10040012))
 (global $src/as/math/Color/Colors.darkred (mut i32) (i32.const 9109504))
 (global $src/as/math/Color/Colors.darksalmon (mut i32) (i32.const 15308410))
 (global $src/as/math/Color/Colors.darkseagreen (mut i32) (i32.const 9419919))
 (global $src/as/math/Color/Colors.darkslateblue (mut i32) (i32.const 4734347))
 (global $src/as/math/Color/Colors.darkslategray (mut i32) (i32.const 3100495))
 (global $src/as/math/Color/Colors.darkslategrey (mut i32) (i32.const 3100495))
 (global $src/as/math/Color/Colors.darkturquoise (mut i32) (i32.const 52945))
 (global $src/as/math/Color/Colors.darkviolet (mut i32) (i32.const 9699539))
 (global $src/as/math/Color/Colors.deeppink (mut i32) (i32.const 16716947))
 (global $src/as/math/Color/Colors.deepskyblue (mut i32) (i32.const 49151))
 (global $src/as/math/Color/Colors.dimgray (mut i32) (i32.const 6908265))
 (global $src/as/math/Color/Colors.dimgrey (mut i32) (i32.const 6908265))
 (global $src/as/math/Color/Colors.dodgerblue (mut i32) (i32.const 2003199))
 (global $src/as/math/Color/Colors.firebrick (mut i32) (i32.const 11674146))
 (global $src/as/math/Color/Colors.floralwhite (mut i32) (i32.const 16775920))
 (global $src/as/math/Color/Colors.forestgreen (mut i32) (i32.const 2263842))
 (global $src/as/math/Color/Colors.fuchsia (mut i32) (i32.const 16711935))
 (global $src/as/math/Color/Colors.gainsboro (mut i32) (i32.const 14474460))
 (global $src/as/math/Color/Colors.ghostwhite (mut i32) (i32.const 16316671))
 (global $src/as/math/Color/Colors.gold (mut i32) (i32.const 16766720))
 (global $src/as/math/Color/Colors.goldenrod (mut i32) (i32.const 14329120))
 (global $src/as/math/Color/Colors.gray (mut i32) (i32.const 8421504))
 (global $src/as/math/Color/Colors.green (mut i32) (i32.const 32768))
 (global $src/as/math/Color/Colors.greenyellow (mut i32) (i32.const 11403055))
 (global $src/as/math/Color/Colors.grey (mut i32) (i32.const 8421504))
 (global $src/as/math/Color/Colors.honeydew (mut i32) (i32.const 15794160))
 (global $src/as/math/Color/Colors.hotpink (mut i32) (i32.const 16738740))
 (global $src/as/math/Color/Colors.indianred (mut i32) (i32.const 13458524))
 (global $src/as/math/Color/Colors.indigo (mut i32) (i32.const 4915330))
 (global $src/as/math/Color/Colors.ivory (mut i32) (i32.const 16777200))
 (global $src/as/math/Color/Colors.khaki (mut i32) (i32.const 15787660))
 (global $src/as/math/Color/Colors.lavender (mut i32) (i32.const 15132410))
 (global $src/as/math/Color/Colors.lavenderblush (mut i32) (i32.const 16773365))
 (global $src/as/math/Color/Colors.lawngreen (mut i32) (i32.const 8190976))
 (global $src/as/math/Color/Colors.lemonchiffon (mut i32) (i32.const 16775885))
 (global $src/as/math/Color/Colors.lightblue (mut i32) (i32.const 11393254))
 (global $src/as/math/Color/Colors.lightcoral (mut i32) (i32.const 15761536))
 (global $src/as/math/Color/Colors.lightcyan (mut i32) (i32.const 14745599))
 (global $src/as/math/Color/Colors.lightgoldenrodyellow (mut i32) (i32.const 16448210))
 (global $src/as/math/Color/Colors.lightgray (mut i32) (i32.const 13882323))
 (global $src/as/math/Color/Colors.lightgreen (mut i32) (i32.const 9498256))
 (global $src/as/math/Color/Colors.lightgrey (mut i32) (i32.const 13882323))
 (global $src/as/math/Color/Colors.lightpink (mut i32) (i32.const 16758465))
 (global $src/as/math/Color/Colors.lightsalmon (mut i32) (i32.const 16752762))
 (global $src/as/math/Color/Colors.lightseagreen (mut i32) (i32.const 2142890))
 (global $src/as/math/Color/Colors.lightskyblue (mut i32) (i32.const 8900346))
 (global $src/as/math/Color/Colors.lightslategray (mut i32) (i32.const 7833753))
 (global $src/as/math/Color/Colors.lightslategrey (mut i32) (i32.const 7833753))
 (global $src/as/math/Color/Colors.lightsteelblue (mut i32) (i32.const 11584734))
 (global $src/as/math/Color/Colors.lightyellow (mut i32) (i32.const 16777184))
 (global $src/as/math/Color/Colors.lime (mut i32) (i32.const 65280))
 (global $src/as/math/Color/Colors.limegreen (mut i32) (i32.const 3329330))
 (global $src/as/math/Color/Colors.linen (mut i32) (i32.const 16445670))
 (global $src/as/math/Color/Colors.magenta (mut i32) (i32.const 16711935))
 (global $src/as/math/Color/Colors.maroon (mut i32) (i32.const 8388608))
 (global $src/as/math/Color/Colors.mediumaquamarine (mut i32) (i32.const 6737322))
 (global $src/as/math/Color/Colors.mediumblue (mut i32) (i32.const 205))
 (global $src/as/math/Color/Colors.mediumorchid (mut i32) (i32.const 12211667))
 (global $src/as/math/Color/Colors.mediumpurple (mut i32) (i32.const 9662683))
 (global $src/as/math/Color/Colors.mediumseagreen (mut i32) (i32.const 3978097))
 (global $src/as/math/Color/Colors.mediumslateblue (mut i32) (i32.const 8087790))
 (global $src/as/math/Color/Colors.mediumspringgreen (mut i32) (i32.const 64154))
 (global $src/as/math/Color/Colors.mediumturquoise (mut i32) (i32.const 4772300))
 (global $src/as/math/Color/Colors.mediumvioletred (mut i32) (i32.const 13047173))
 (global $src/as/math/Color/Colors.midnightblue (mut i32) (i32.const 1644912))
 (global $src/as/math/Color/Colors.mintcream (mut i32) (i32.const 16121850))
 (global $src/as/math/Color/Colors.mistyrose (mut i32) (i32.const 16770273))
 (global $src/as/math/Color/Colors.moccasin (mut i32) (i32.const 16770229))
 (global $src/as/math/Color/Colors.navajowhite (mut i32) (i32.const 16768685))
 (global $src/as/math/Color/Colors.navy (mut i32) (i32.const 128))
 (global $src/as/math/Color/Colors.oldlace (mut i32) (i32.const 16643558))
 (global $src/as/math/Color/Colors.olive (mut i32) (i32.const 8421376))
 (global $src/as/math/Color/Colors.olivedrab (mut i32) (i32.const 7048739))
 (global $src/as/math/Color/Colors.orange (mut i32) (i32.const 16753920))
 (global $src/as/math/Color/Colors.orangered (mut i32) (i32.const 16729344))
 (global $src/as/math/Color/Colors.orchid (mut i32) (i32.const 14315734))
 (global $src/as/math/Color/Colors.palegoldenrod (mut i32) (i32.const 15657130))
 (global $src/as/math/Color/Colors.palegreen (mut i32) (i32.const 10025880))
 (global $src/as/math/Color/Colors.paleturquoise (mut i32) (i32.const 11529966))
 (global $src/as/math/Color/Colors.palevioletred (mut i32) (i32.const 14381203))
 (global $src/as/math/Color/Colors.papayawhip (mut i32) (i32.const 16773077))
 (global $src/as/math/Color/Colors.peachpuff (mut i32) (i32.const 16767673))
 (global $src/as/math/Color/Colors.peru (mut i32) (i32.const 13468991))
 (global $src/as/math/Color/Colors.pink (mut i32) (i32.const 16761035))
 (global $src/as/math/Color/Colors.plum (mut i32) (i32.const 14524637))
 (global $src/as/math/Color/Colors.powderblue (mut i32) (i32.const 11591910))
 (global $src/as/math/Color/Colors.purple (mut i32) (i32.const 8388736))
 (global $src/as/math/Color/Colors.rebeccapurple (mut i32) (i32.const 6697881))
 (global $src/as/math/Color/Colors.red (mut i32) (i32.const 16711680))
 (global $src/as/math/Color/Colors.rosybrown (mut i32) (i32.const 12357519))
 (global $src/as/math/Color/Colors.royalblue (mut i32) (i32.const 4286945))
 (global $src/as/math/Color/Colors.saddlebrown (mut i32) (i32.const 9127187))
 (global $src/as/math/Color/Colors.salmon (mut i32) (i32.const 16416882))
 (global $src/as/math/Color/Colors.sandybrown (mut i32) (i32.const 16032864))
 (global $src/as/math/Color/Colors.seagreen (mut i32) (i32.const 3050327))
 (global $src/as/math/Color/Colors.seashell (mut i32) (i32.const 16774638))
 (global $src/as/math/Color/Colors.sienna (mut i32) (i32.const 10506797))
 (global $src/as/math/Color/Colors.silver (mut i32) (i32.const 12632256))
 (global $src/as/math/Color/Colors.skyblue (mut i32) (i32.const 8900331))
 (global $src/as/math/Color/Colors.slateblue (mut i32) (i32.const 6970061))
 (global $src/as/math/Color/Colors.slategray (mut i32) (i32.const 7372944))
 (global $src/as/math/Color/Colors.slategrey (mut i32) (i32.const 7372944))
 (global $src/as/math/Color/Colors.snow (mut i32) (i32.const 16775930))
 (global $src/as/math/Color/Colors.springgreen (mut i32) (i32.const 65407))
 (global $src/as/math/Color/Colors.steelblue (mut i32) (i32.const 4620980))
 (global $src/as/math/Color/Colors.tan (mut i32) (i32.const 13808780))
 (global $src/as/math/Color/Colors.teal (mut i32) (i32.const 32896))
 (global $src/as/math/Color/Colors.thistle (mut i32) (i32.const 14204888))
 (global $src/as/math/Color/Colors.tomato (mut i32) (i32.const 16737095))
 (global $src/as/math/Color/Colors.turquoise (mut i32) (i32.const 4251856))
 (global $src/as/math/Color/Colors.violet (mut i32) (i32.const 15631086))
 (global $src/as/math/Color/Colors.wheat (mut i32) (i32.const 16113331))
 (global $src/as/math/Color/Colors.white (mut i32) (i32.const 16777215))
 (global $src/as/math/Color/Colors.whitesmoke (mut i32) (i32.const 16119285))
 (global $src/as/math/Color/Colors.yellow (mut i32) (i32.const 16776960))
 (global $src/as/math/Color/Colors.yellowgreen (mut i32) (i32.const 10145074))
 (global $src/as/core/BufferAttribute/ArrayType.Int8 i32 (i32.const 0))
 (global $src/as/core/BufferAttribute/ArrayType.Uint8 i32 (i32.const 1))
 (global $src/as/core/BufferAttribute/ArrayType.Uint8Clamped i32 (i32.const 2))
 (global $src/as/core/BufferAttribute/ArrayType.Int16 i32 (i32.const 3))
 (global $src/as/core/BufferAttribute/ArrayType.Uint16 i32 (i32.const 4))
 (global $src/as/core/BufferAttribute/ArrayType.Int32 i32 (i32.const 5))
 (global $src/as/core/BufferAttribute/ArrayType.Uint32 i32 (i32.const 6))
 (global $src/as/core/BufferAttribute/ArrayType.Float32 i32 (i32.const 7))
 (global $src/as/core/BufferAttribute/ArrayType.Float64 i32 (i32.const 8))
 (global $src/as/math/Euler/EulerRotationOrder.XYZ i32 (i32.const 0))
 (global $src/as/math/Euler/EulerRotationOrder.YZX i32 (i32.const 1))
 (global $src/as/math/Euler/EulerRotationOrder.ZXY i32 (i32.const 2))
 (global $src/as/math/Euler/EulerRotationOrder.XZY i32 (i32.const 3))
 (global $src/as/math/Euler/EulerRotationOrder.YXZ i32 (i32.const 4))
 (global $src/as/math/Euler/EulerRotationOrder.ZYX i32 (i32.const 5))
 (global $src/as/math/Euler/matrix (mut i32) (i32.const 0))
 (global $src/as/math/Euler/quaternion (mut i32) (i32.const 0))
 (global $src/as/math/Euler/Euler.DefaultOrder (mut i32) (i32.const 0))
 (global $src/as/core/Object3D/object3DId (mut i32) (i32.const 0))
 (global $src/as/core/Object3D/quaternion (mut i32) (i32.const 0))
 (global $src/as/core/Object3D/vector (mut i32) (i32.const 0))
 (global $src/as/core/Object3D/matrix (mut i32) (i32.const 0))
 (global $src/as/core/Object3D/target (mut i32) (i32.const 0))
 (global $src/as/core/Object3D/position (mut i32) (i32.const 0))
 (global $src/as/core/Object3D/scale (mut i32) (i32.const 0))
 (global $src/as/core/Object3D/vX (mut i32) (i32.const 0))
 (global $src/as/core/Object3D/vY (mut i32) (i32.const 0))
 (global $src/as/core/Object3D/vZ (mut i32) (i32.const 0))
 (global $src/as/core/Object3D/self (mut i32) (i32.const 0))
 (global $src/as/core/Object3D/Object3D.DefaultMatrixAutoUpdate (mut i32) (i32.const 1))
 (global $src/as/math/Box3/points (mut i32) (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $src/as/math/Sphere/box (mut i32) (i32.const 0))
 (global $src/as/math/Frustum/_sphere (mut i32) (i32.const 0))
 (global $src/as/math/Frustum/_vector (mut i32) (i32.const 0))
 (global $~lib/ASC_RUNTIME i32 (i32.const 2))
 (global $~lib/math/NativeMathf.sincos_sin (mut f32) (f32.const 0))
 (global $~lib/math/NativeMathf.sincos_cos (mut f32) (f32.const 0))
 (global $~lib/math/rempio2f_y (mut f64) (f64.const 0))
 (global $~lib/builtins/i32.MAX_VALUE i32 (i32.const 2147483647))
 (global $src/as/core/Layers/Layers i32 (i32.const 19))
 (global $src/as/core/Object3D/Object3D i32 (i32.const 11))
 (global $src/as/math/Box3/Box3 i32 (i32.const 21))
 (global $src/as/math/Color/HSL i32 (i32.const 4))
 (global $src/as/math/Color/Colors i32 (i32.const 25))
 (global $src/as/math/Color/Color i32 (i32.const 26))
 (global $src/as/math/Euler/Euler i32 (i32.const 18))
 (global $src/as/math/Frustum/Frustum i32 (i32.const 27))
 (global $~lib/rt/__rtti_base i32 (i32.const 4400))
 (global $~lib/memory/__data_end i32 (i32.const 4644))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 21028))
 (global $~lib/memory/__heap_base i32 (i32.const 21028))
 (memory $0 1)
 (data (i32.const 12) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00\00\00\00\00")
 (data (i32.const 76) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 144) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 176) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 204) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00\00\00\00\00\00\00\00\00")
 (data (i32.const 268) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (data (i32.const 320) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 348) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 412) "\\\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00@\00\00\00\00\00\80?\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80?\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80?\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80?\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 508) "\1c\00\00\00\00\00\00\00\00\00\00\00\t\00\00\00\08\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 540) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00x\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 572) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00y\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 604) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00z\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 636) "|\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00b\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00c\00o\00m\00p\00o\00n\00e\00n\00t\00 \00n\00a\00m\00e\00.\00 \00E\00x\00e\00c\00t\00e\00d\00 \00\"\00x\00\"\00,\00 \00\"\00y\00\"\00,\00 \00o\00r\00 \00\"\00z\00\"\00.\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 764) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data (i32.const 812) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00\00\00\00\00\00\00")
 (data (i32.const 876) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1e\00\00\00u\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00n\00u\00l\00l\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 940) "L\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00.\00\00\00s\00r\00c\00/\00a\00s\00/\00c\00o\00r\00e\00/\00O\00b\00j\00e\00c\00t\003\00D\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1024) ")\15DNn\83\f9\a2\c0\dd4\f5\d1W\'\fcA\90C<\99\95b\dba\c5\bb\de\abcQ\fe")
 (data (i32.const 1068) "\1c\00\00\00\00\00\00\00\00\00\00\00\t\00\00\00\08\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1100) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1132) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\10\00\00\00O\00b\00j\00e\00c\00t\003\00D\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1180) "\1c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1212) "\1c\00\00\00\00\00\00\00\00\00\00\00\t\00\00\00\08\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1244) "\1c\00\00\00\00\00\00\00\00\00\00\00\t\00\00\00\08\00\00\00\04\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1276) "\1c\00\00\00\00\00\00\00\00\00\00\00\t\00\00\00\08\00\00\00\05\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1308) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00\00\00")
 (data (i32.const 1356) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00$\00\00\00K\00e\00y\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1420) ",\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\16\00\00\00~\00l\00i\00b\00/\00m\00a\00p\00.\00t\00s\00\00\00\00\00\00\00")
 (data (i32.const 1468) "|\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1596) "\8c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00r\00\00\00O\00b\00j\00e\00c\00t\003\00D\00.\00a\00d\00d\00:\00 \00o\00b\00j\00e\00c\00t\00 \00c\00a\00n\00\'\00t\00 \00b\00e\00 \00a\00d\00d\00e\00d\00 \00a\00s\00 \00a\00 \00c\00h\00i\00l\00d\00 \00o\00f\00 \00i\00t\00s\00e\00l\00f\00.\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1744) "\be\f3\f8y\eca\f6?\190\96[\c6\fe\de\bf=\88\afJ\edq\f5?\a4\fc\d42h\0b\db\bf\b0\10\f0\f09\95\f4?{\b7\1f\n\8bA\d7\bf\85\03\b8\b0\95\c9\f3?{\cfm\1a\e9\9d\d3\bf\a5d\88\0c\19\0d\f3?1\b6\f2\f3\9b\1d\d0\bf\a0\8e\0b{\"^\f2?\f0z;\1b\1d|\c9\bf?4\1aJJ\bb\f1?\9f<\af\93\e3\f9\c2\bf\ba\e5\8a\f0X#\f1?\\\8dx\bf\cb`\b9\bf\a7\00\99A?\95\f0?\ce_G\b6\9do\aa\bf\00\00\00\00\00\00\f0?\00\00\00\00\00\00\00\00\acG\9a\fd\8c`\ee?=\f5$\9f\ca8\b3?\a0j\02\1f\b3\a4\ec?\ba\918T\a9v\c4?\e6\fcjW6 \eb?\d2\e4\c4J\0b\84\ce?-\aa\a1c\d1\c2\e9?\1ce\c6\f0E\06\d4?\edAx\03\e6\86\e8?\f8\9f\1b,\9c\8e\d8?bHS\f5\dcg\e7?\cc{\b1N\a4\e0\dc?")
 (data (i32.const 2000) "\00\00\00\00\00\00\f0?t\85\15\d3\b0\d9\ef?\0f\89\f9lX\b5\ef?Q[\12\d0\01\93\ef?{Q}<\b8r\ef?\aa\b9h1\87T\ef?8bunz8\ef?\e1\de\1f\f5\9d\1e\ef?\15\b71\n\fe\06\ef?\cb\a9:7\a7\f1\ee?\"4\12L\a6\de\ee?-\89a`\08\ce\ee?\'*6\d5\da\bf\ee?\82O\9dV+\b4\ee?)TH\dd\07\ab\ee?\85U:\b0~\a4\ee?\cd;\7ff\9e\a0\ee?t_\ec\e8u\9f\ee?\87\01\ebs\14\a1\ee?\13\ceL\99\89\a5\ee?\db\a0*B\e5\ac\ee?\e5\c5\cd\b07\b7\ee?\90\f0\a3\82\91\c4\ee?]%>\b2\03\d5\ee?\ad\d3Z\99\9f\e8\ee?G^\fb\f2v\ff\ee?\9cR\85\dd\9b\19\ef?i\90\ef\dc 7\ef?\87\a4\fb\dc\18X\ef?_\9b{3\97|\ef?\da\90\a4\a2\af\a4\ef?@En[v\d0\ef?")
 (data (i32.const 2268) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\0c\00\00\000\000\000\000\000\000\00")
 (data (i32.const 2300) "|\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2428) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s\00\00\00\00\00\00\00")
 (data (i32.const 2492) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\000\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 2524) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00")
 (data (i32.const 2924) "\1c\04\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 3980) "\\\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\00\00\00\00\00")
 (data (i32.const 4076) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\08\00\00\00r\00g\00b\00(\00\00\00\00\00")
 (data (i32.const 4108) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00,\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 4140) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00)\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 4172) "|\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00l\00\00\00E\00u\00l\00e\00r\00.\00s\00e\00t\00F\00r\00o\00m\00R\00o\00t\00a\00t\00i\00o\00n\00M\00a\00t\00r\00i\00x\00(\00)\00 \00g\00i\00v\00e\00n\00 \00u\00n\00s\00u\00p\00p\00o\00r\00t\00e\00d\00 \00o\00r\00d\00e\00r\00.\00")
 (data (i32.const 4300) "<\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00(\00\00\00s\00r\00c\00/\00a\00s\00/\00m\00a\00t\00h\00/\00E\00u\00l\00e\00r\00.\00t\00s\00\00\00\00\00")
 (data (i32.const 4364) "\1c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 4400) "\1e\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\19\00\00\00\00\00\00\02\t\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\0c\00\00\00\00\00\00\00\0d\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00\02A\00\00\00\00\00\00\10A\82\00\00\00\00\00\02A\00\00\00\00\00\00\00\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\02A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02A\00\00\00\00\00\00")
 (table $0 6 funcref)
 (elem $0 (i32.const 1) $src/as/math/Quaternion/Quaternion#constructor~anonymous|0 $src/as/core/Object3D/Object3D#constructor~anonymous|0 $src/as/math/Euler/Euler#constructor~anonymous|0 $src/as/core/Object3D/Object3D#constructor~anonymous|1 $src/as/core/Object3D/Object3D#constructor~anonymous|2)
 (export "Layers" (global $src/as/core/Layers/Layers))
 (export "Object3D" (global $src/as/core/Object3D/Object3D))
 (export "Object3D.DefaultMatrixAutoUpdate" (global $src/as/core/Object3D/Object3D.DefaultMatrixAutoUpdate))
 (export "Box3" (global $src/as/math/Box3/Box3))
 (export "HSL" (global $src/as/math/Color/HSL))
 (export "Colors" (global $src/as/math/Color/Colors))
 (export "Colors.aliceblue" (global $src/as/math/Color/Colors.aliceblue))
 (export "Colors.antiquewhite" (global $src/as/math/Color/Colors.antiquewhite))
 (export "Colors.aqua" (global $src/as/math/Color/Colors.aqua))
 (export "Colors.aquamarine" (global $src/as/math/Color/Colors.aquamarine))
 (export "Colors.azure" (global $src/as/math/Color/Colors.azure))
 (export "Colors.beige" (global $src/as/math/Color/Colors.beige))
 (export "Colors.bisque" (global $src/as/math/Color/Colors.bisque))
 (export "Colors.black" (global $src/as/math/Color/Colors.black))
 (export "Colors.blanchedalmond" (global $src/as/math/Color/Colors.blanchedalmond))
 (export "Colors.blue" (global $src/as/math/Color/Colors.blue))
 (export "Colors.blueviolet" (global $src/as/math/Color/Colors.blueviolet))
 (export "Colors.brown" (global $src/as/math/Color/Colors.brown))
 (export "Colors.burlywood" (global $src/as/math/Color/Colors.burlywood))
 (export "Colors.cadetblue" (global $src/as/math/Color/Colors.cadetblue))
 (export "Colors.chartreuse" (global $src/as/math/Color/Colors.chartreuse))
 (export "Colors.chocolate" (global $src/as/math/Color/Colors.chocolate))
 (export "Colors.coral" (global $src/as/math/Color/Colors.coral))
 (export "Colors.cornflowerblue" (global $src/as/math/Color/Colors.cornflowerblue))
 (export "Colors.cornsilk" (global $src/as/math/Color/Colors.cornsilk))
 (export "Colors.crimson" (global $src/as/math/Color/Colors.crimson))
 (export "Colors.cyan" (global $src/as/math/Color/Colors.cyan))
 (export "Colors.darkblue" (global $src/as/math/Color/Colors.darkblue))
 (export "Colors.darkcyan" (global $src/as/math/Color/Colors.darkcyan))
 (export "Colors.darkgoldenrod" (global $src/as/math/Color/Colors.darkgoldenrod))
 (export "Colors.darkgray" (global $src/as/math/Color/Colors.darkgray))
 (export "Colors.darkgreen" (global $src/as/math/Color/Colors.darkgreen))
 (export "Colors.darkgrey" (global $src/as/math/Color/Colors.darkgrey))
 (export "Colors.darkkhaki" (global $src/as/math/Color/Colors.darkkhaki))
 (export "Colors.darkmagenta" (global $src/as/math/Color/Colors.darkmagenta))
 (export "Colors.darkolivegreen" (global $src/as/math/Color/Colors.darkolivegreen))
 (export "Colors.darkorange" (global $src/as/math/Color/Colors.darkorange))
 (export "Colors.darkorchid" (global $src/as/math/Color/Colors.darkorchid))
 (export "Colors.darkred" (global $src/as/math/Color/Colors.darkred))
 (export "Colors.darksalmon" (global $src/as/math/Color/Colors.darksalmon))
 (export "Colors.darkseagreen" (global $src/as/math/Color/Colors.darkseagreen))
 (export "Colors.darkslateblue" (global $src/as/math/Color/Colors.darkslateblue))
 (export "Colors.darkslategray" (global $src/as/math/Color/Colors.darkslategray))
 (export "Colors.darkslategrey" (global $src/as/math/Color/Colors.darkslategrey))
 (export "Colors.darkturquoise" (global $src/as/math/Color/Colors.darkturquoise))
 (export "Colors.darkviolet" (global $src/as/math/Color/Colors.darkviolet))
 (export "Colors.deeppink" (global $src/as/math/Color/Colors.deeppink))
 (export "Colors.deepskyblue" (global $src/as/math/Color/Colors.deepskyblue))
 (export "Colors.dimgray" (global $src/as/math/Color/Colors.dimgray))
 (export "Colors.dimgrey" (global $src/as/math/Color/Colors.dimgrey))
 (export "Colors.dodgerblue" (global $src/as/math/Color/Colors.dodgerblue))
 (export "Colors.firebrick" (global $src/as/math/Color/Colors.firebrick))
 (export "Colors.floralwhite" (global $src/as/math/Color/Colors.floralwhite))
 (export "Colors.forestgreen" (global $src/as/math/Color/Colors.forestgreen))
 (export "Colors.fuchsia" (global $src/as/math/Color/Colors.fuchsia))
 (export "Colors.gainsboro" (global $src/as/math/Color/Colors.gainsboro))
 (export "Colors.ghostwhite" (global $src/as/math/Color/Colors.ghostwhite))
 (export "Colors.gold" (global $src/as/math/Color/Colors.gold))
 (export "Colors.goldenrod" (global $src/as/math/Color/Colors.goldenrod))
 (export "Colors.gray" (global $src/as/math/Color/Colors.gray))
 (export "Colors.green" (global $src/as/math/Color/Colors.green))
 (export "Colors.greenyellow" (global $src/as/math/Color/Colors.greenyellow))
 (export "Colors.grey" (global $src/as/math/Color/Colors.grey))
 (export "Colors.honeydew" (global $src/as/math/Color/Colors.honeydew))
 (export "Colors.hotpink" (global $src/as/math/Color/Colors.hotpink))
 (export "Colors.indianred" (global $src/as/math/Color/Colors.indianred))
 (export "Colors.indigo" (global $src/as/math/Color/Colors.indigo))
 (export "Colors.ivory" (global $src/as/math/Color/Colors.ivory))
 (export "Colors.khaki" (global $src/as/math/Color/Colors.khaki))
 (export "Colors.lavender" (global $src/as/math/Color/Colors.lavender))
 (export "Colors.lavenderblush" (global $src/as/math/Color/Colors.lavenderblush))
 (export "Colors.lawngreen" (global $src/as/math/Color/Colors.lawngreen))
 (export "Colors.lemonchiffon" (global $src/as/math/Color/Colors.lemonchiffon))
 (export "Colors.lightblue" (global $src/as/math/Color/Colors.lightblue))
 (export "Colors.lightcoral" (global $src/as/math/Color/Colors.lightcoral))
 (export "Colors.lightcyan" (global $src/as/math/Color/Colors.lightcyan))
 (export "Colors.lightgoldenrodyellow" (global $src/as/math/Color/Colors.lightgoldenrodyellow))
 (export "Colors.lightgray" (global $src/as/math/Color/Colors.lightgray))
 (export "Colors.lightgreen" (global $src/as/math/Color/Colors.lightgreen))
 (export "Colors.lightgrey" (global $src/as/math/Color/Colors.lightgrey))
 (export "Colors.lightpink" (global $src/as/math/Color/Colors.lightpink))
 (export "Colors.lightsalmon" (global $src/as/math/Color/Colors.lightsalmon))
 (export "Colors.lightseagreen" (global $src/as/math/Color/Colors.lightseagreen))
 (export "Colors.lightskyblue" (global $src/as/math/Color/Colors.lightskyblue))
 (export "Colors.lightslategray" (global $src/as/math/Color/Colors.lightslategray))
 (export "Colors.lightslategrey" (global $src/as/math/Color/Colors.lightslategrey))
 (export "Colors.lightsteelblue" (global $src/as/math/Color/Colors.lightsteelblue))
 (export "Colors.lightyellow" (global $src/as/math/Color/Colors.lightyellow))
 (export "Colors.lime" (global $src/as/math/Color/Colors.lime))
 (export "Colors.limegreen" (global $src/as/math/Color/Colors.limegreen))
 (export "Colors.linen" (global $src/as/math/Color/Colors.linen))
 (export "Colors.magenta" (global $src/as/math/Color/Colors.magenta))
 (export "Colors.maroon" (global $src/as/math/Color/Colors.maroon))
 (export "Colors.mediumaquamarine" (global $src/as/math/Color/Colors.mediumaquamarine))
 (export "Colors.mediumblue" (global $src/as/math/Color/Colors.mediumblue))
 (export "Colors.mediumorchid" (global $src/as/math/Color/Colors.mediumorchid))
 (export "Colors.mediumpurple" (global $src/as/math/Color/Colors.mediumpurple))
 (export "Colors.mediumseagreen" (global $src/as/math/Color/Colors.mediumseagreen))
 (export "Colors.mediumslateblue" (global $src/as/math/Color/Colors.mediumslateblue))
 (export "Colors.mediumspringgreen" (global $src/as/math/Color/Colors.mediumspringgreen))
 (export "Colors.mediumturquoise" (global $src/as/math/Color/Colors.mediumturquoise))
 (export "Colors.mediumvioletred" (global $src/as/math/Color/Colors.mediumvioletred))
 (export "Colors.midnightblue" (global $src/as/math/Color/Colors.midnightblue))
 (export "Colors.mintcream" (global $src/as/math/Color/Colors.mintcream))
 (export "Colors.mistyrose" (global $src/as/math/Color/Colors.mistyrose))
 (export "Colors.moccasin" (global $src/as/math/Color/Colors.moccasin))
 (export "Colors.navajowhite" (global $src/as/math/Color/Colors.navajowhite))
 (export "Colors.navy" (global $src/as/math/Color/Colors.navy))
 (export "Colors.oldlace" (global $src/as/math/Color/Colors.oldlace))
 (export "Colors.olive" (global $src/as/math/Color/Colors.olive))
 (export "Colors.olivedrab" (global $src/as/math/Color/Colors.olivedrab))
 (export "Colors.orange" (global $src/as/math/Color/Colors.orange))
 (export "Colors.orangered" (global $src/as/math/Color/Colors.orangered))
 (export "Colors.orchid" (global $src/as/math/Color/Colors.orchid))
 (export "Colors.palegoldenrod" (global $src/as/math/Color/Colors.palegoldenrod))
 (export "Colors.palegreen" (global $src/as/math/Color/Colors.palegreen))
 (export "Colors.paleturquoise" (global $src/as/math/Color/Colors.paleturquoise))
 (export "Colors.palevioletred" (global $src/as/math/Color/Colors.palevioletred))
 (export "Colors.papayawhip" (global $src/as/math/Color/Colors.papayawhip))
 (export "Colors.peachpuff" (global $src/as/math/Color/Colors.peachpuff))
 (export "Colors.peru" (global $src/as/math/Color/Colors.peru))
 (export "Colors.pink" (global $src/as/math/Color/Colors.pink))
 (export "Colors.plum" (global $src/as/math/Color/Colors.plum))
 (export "Colors.powderblue" (global $src/as/math/Color/Colors.powderblue))
 (export "Colors.purple" (global $src/as/math/Color/Colors.purple))
 (export "Colors.rebeccapurple" (global $src/as/math/Color/Colors.rebeccapurple))
 (export "Colors.red" (global $src/as/math/Color/Colors.red))
 (export "Colors.rosybrown" (global $src/as/math/Color/Colors.rosybrown))
 (export "Colors.royalblue" (global $src/as/math/Color/Colors.royalblue))
 (export "Colors.saddlebrown" (global $src/as/math/Color/Colors.saddlebrown))
 (export "Colors.salmon" (global $src/as/math/Color/Colors.salmon))
 (export "Colors.sandybrown" (global $src/as/math/Color/Colors.sandybrown))
 (export "Colors.seagreen" (global $src/as/math/Color/Colors.seagreen))
 (export "Colors.seashell" (global $src/as/math/Color/Colors.seashell))
 (export "Colors.sienna" (global $src/as/math/Color/Colors.sienna))
 (export "Colors.silver" (global $src/as/math/Color/Colors.silver))
 (export "Colors.skyblue" (global $src/as/math/Color/Colors.skyblue))
 (export "Colors.slateblue" (global $src/as/math/Color/Colors.slateblue))
 (export "Colors.slategray" (global $src/as/math/Color/Colors.slategray))
 (export "Colors.slategrey" (global $src/as/math/Color/Colors.slategrey))
 (export "Colors.snow" (global $src/as/math/Color/Colors.snow))
 (export "Colors.springgreen" (global $src/as/math/Color/Colors.springgreen))
 (export "Colors.steelblue" (global $src/as/math/Color/Colors.steelblue))
 (export "Colors.tan" (global $src/as/math/Color/Colors.tan))
 (export "Colors.teal" (global $src/as/math/Color/Colors.teal))
 (export "Colors.thistle" (global $src/as/math/Color/Colors.thistle))
 (export "Colors.tomato" (global $src/as/math/Color/Colors.tomato))
 (export "Colors.turquoise" (global $src/as/math/Color/Colors.turquoise))
 (export "Colors.violet" (global $src/as/math/Color/Colors.violet))
 (export "Colors.wheat" (global $src/as/math/Color/Colors.wheat))
 (export "Colors.white" (global $src/as/math/Color/Colors.white))
 (export "Colors.whitesmoke" (global $src/as/math/Color/Colors.whitesmoke))
 (export "Colors.yellow" (global $src/as/math/Color/Colors.yellow))
 (export "Colors.yellowgreen" (global $src/as/math/Color/Colors.yellowgreen))
 (export "Color" (global $src/as/math/Color/Color))
 (export "EulerRotationOrder.XYZ" (global $src/as/math/Euler/EulerRotationOrder.XYZ))
 (export "EulerRotationOrder.YZX" (global $src/as/math/Euler/EulerRotationOrder.YZX))
 (export "EulerRotationOrder.ZXY" (global $src/as/math/Euler/EulerRotationOrder.ZXY))
 (export "EulerRotationOrder.XZY" (global $src/as/math/Euler/EulerRotationOrder.XZY))
 (export "EulerRotationOrder.YXZ" (global $src/as/math/Euler/EulerRotationOrder.YXZ))
 (export "EulerRotationOrder.ZYX" (global $src/as/math/Euler/EulerRotationOrder.ZYX))
 (export "Euler" (global $src/as/math/Euler/Euler))
 (export "Euler.DefaultOrder" (global $src/as/math/Euler/Euler.DefaultOrder))
 (export "Frustum" (global $src/as/math/Frustum/Frustum))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "__setArgumentsLength" (func $~setArgumentsLength))
 (export "Layers#get:mask" (func $export:src/as/core/Layers/Layers#get:mask))
 (export "Layers#set:mask" (func $export:src/as/core/Layers/Layers#set:mask))
 (export "Layers#set" (func $export:src/as/core/Layers/Layers#set))
 (export "Layers#enable" (func $export:src/as/core/Layers/Layers#enable))
 (export "Layers#toggle" (func $export:src/as/core/Layers/Layers#toggle))
 (export "Layers#disable" (func $export:src/as/core/Layers/Layers#disable))
 (export "Layers#test" (func $export:src/as/core/Layers/Layers#test))
 (export "Layers#constructor" (func $export:src/as/core/Layers/Layers#constructor))
 (export "Object3D#addEventListener" (func $export:src/as/core/EventDispatcher/EventDispatcher#addEventListener))
 (export "Object3D#hasEventListener" (func $export:src/as/core/EventDispatcher/EventDispatcher#hasEventListener))
 (export "Object3D#removeEventListener" (func $export:src/as/core/EventDispatcher/EventDispatcher#removeEventListener))
 (export "Object3D#dispatchEvent" (func $export:src/as/core/EventDispatcher/EventDispatcher#dispatchEvent))
 (export "Object3D#get:id" (func $export:src/as/core/Object3D/Object3D#get:id))
 (export "Object3D#set:id" (func $export:src/as/core/Object3D/Object3D#set:id))
 (export "Object3D#get:name" (func $export:src/as/core/Object3D/Object3D#get:name))
 (export "Object3D#set:name" (func $export:src/as/core/Object3D/Object3D#set:name))
 (export "Object3D#get:type" (func $export:src/as/core/Object3D/Object3D#get:type))
 (export "Object3D#set:type" (func $export:src/as/core/Object3D/Object3D#set:type))
 (export "Object3D#get:parent" (func $export:src/as/core/Object3D/Object3D#get:parent))
 (export "Object3D#set:parent" (func $export:src/as/core/Object3D/Object3D#set:parent))
 (export "Object3D#get:children" (func $export:src/as/core/Object3D/Object3D#get:children))
 (export "Object3D#set:children" (func $export:src/as/core/Object3D/Object3D#set:children))
 (export "Object3D#get:position" (func $export:src/as/core/Object3D/Object3D#get:position))
 (export "Object3D#get:rotation" (func $export:src/as/core/Object3D/Object3D#get:rotation))
 (export "Object3D#get:quaternion" (func $export:src/as/core/Object3D/Object3D#get:quaternion))
 (export "Object3D#get:scale" (func $export:src/as/core/Object3D/Object3D#get:scale))
 (export "Object3D#get:modelViewMatrix" (func $export:src/as/core/Object3D/Object3D#get:modelViewMatrix))
 (export "Object3D#get:matrix" (func $export:src/as/core/Object3D/Object3D#get:matrix))
 (export "Object3D#set:matrix" (func $export:src/as/core/Object3D/Object3D#set:matrix))
 (export "Object3D#get:matrixWorld" (func $export:src/as/core/Object3D/Object3D#get:matrixWorld))
 (export "Object3D#set:matrixWorld" (func $export:src/as/core/Object3D/Object3D#set:matrixWorld))
 (export "Object3D#get:matrixAutoUpdate" (func $export:src/as/core/Object3D/Object3D#get:matrixAutoUpdate))
 (export "Object3D#set:matrixAutoUpdate" (func $export:src/as/core/Object3D/Object3D#set:matrixAutoUpdate))
 (export "Object3D#get:matrixWorldNeedsUpdate" (func $export:src/as/core/Object3D/Object3D#get:matrixWorldNeedsUpdate))
 (export "Object3D#set:matrixWorldNeedsUpdate" (func $export:src/as/core/Object3D/Object3D#set:matrixWorldNeedsUpdate))
 (export "Object3D#get:layers" (func $export:src/as/core/Object3D/Object3D#get:layers))
 (export "Object3D#set:layers" (func $export:src/as/core/Object3D/Object3D#set:layers))
 (export "Object3D#get:visible" (func $export:src/as/core/Object3D/Object3D#get:visible))
 (export "Object3D#set:visible" (func $export:src/as/core/Object3D/Object3D#set:visible))
 (export "Object3D#get:castShadow" (func $export:src/as/core/Object3D/Object3D#get:castShadow))
 (export "Object3D#set:castShadow" (func $export:src/as/core/Object3D/Object3D#set:castShadow))
 (export "Object3D#get:receiveShadow" (func $export:src/as/core/Object3D/Object3D#get:receiveShadow))
 (export "Object3D#set:receiveShadow" (func $export:src/as/core/Object3D/Object3D#set:receiveShadow))
 (export "Object3D#get:frustumCulled" (func $export:src/as/core/Object3D/Object3D#get:frustumCulled))
 (export "Object3D#set:frustumCulled" (func $export:src/as/core/Object3D/Object3D#set:frustumCulled))
 (export "Object3D#get:renderOrder" (func $export:src/as/core/Object3D/Object3D#get:renderOrder))
 (export "Object3D#set:renderOrder" (func $export:src/as/core/Object3D/Object3D#set:renderOrder))
 (export "Object3D#get:isObject3D" (func $export:src/as/core/Object3D/Object3D#get:isObject3D))
 (export "Object3D#get:isCamera" (func $export:src/as/core/Object3D/Object3D#get:isCamera))
 (export "Object3D#set:isCamera" (func $export:src/as/core/Object3D/Object3D#set:isCamera))
 (export "Object3D#get:isLight" (func $export:src/as/core/Object3D/Object3D#get:isLight))
 (export "Object3D#set:isLight" (func $export:src/as/core/Object3D/Object3D#set:isLight))
 (export "Object3D#constructor" (func $export:src/as/core/Object3D/Object3D#constructor))
 (export "Object3D#get:onBeforeRender" (func $export:src/as/core/Object3D/Object3D#get:onBeforeRender))
 (export "Object3D#set:onBeforeRender" (func $export:src/as/core/Object3D/Object3D#set:onBeforeRender))
 (export "Object3D#get:onAfterRender" (func $export:src/as/core/Object3D/Object3D#get:onAfterRender))
 (export "Object3D#set:onAfterRender" (func $export:src/as/core/Object3D/Object3D#set:onAfterRender))
 (export "Object3D#add" (func $export:src/as/core/Object3D/Object3D#add))
 (export "Object3D#remove" (func $export:src/as/core/Object3D/Object3D#remove))
 (export "Object3D#traverse" (func $export:src/as/core/Object3D/Object3D#traverse))
 (export "Object3D#updateMatrix" (func $export:src/as/core/Object3D/Object3D#updateMatrix))
 (export "Object3D#updateMatrixWorld" (func $export:src/as/core/Object3D/Object3D#updateMatrixWorld@varargs))
 (export "Box3#get:max" (func $export:src/as/math/Box3/Box3#get:max))
 (export "Box3#set:max" (func $export:src/as/math/Box3/Box3#set:max))
 (export "Box3#get:min" (func $export:src/as/math/Box3/Box3#get:min))
 (export "Box3#set:min" (func $export:src/as/math/Box3/Box3#set:min))
 (export "Box3#get:isBox3" (func $export:src/as/math/Box3/Box3#get:isBox3))
 (export "Box3#constructor" (func $export:src/as/math/Box3/Box3#constructor@varargs))
 (export "Box3#set" (func $export:src/as/math/Box3/Box3#set))
 (export "Box3#setFromPoints" (func $export:src/as/math/Box3/Box3#setFromPoints))
 (export "Box3#clone" (func $export:src/as/math/Box3/Box3#clone))
 (export "Box3#copy" (func $export:src/as/math/Box3/Box3#copy))
 (export "Box3#makeEmpty" (func $export:src/as/math/Box3/Box3#makeEmpty))
 (export "Box3#isEmpty" (func $export:src/as/math/Box3/Box3#isEmpty))
 (export "Box3#getCenter" (func $export:src/as/math/Box3/Box3#getCenter))
 (export "Box3#getSize" (func $export:src/as/math/Box3/Box3#getSize))
 (export "Box3#expandByPoint" (func $export:src/as/math/Box3/Box3#expandByPoint))
 (export "Box3#expandByScalar" (func $export:src/as/math/Box3/Box3#expandByScalar))
 (export "Box3#applyMatrix4" (func $export:src/as/math/Box3/Box3#applyMatrix4))
 (export "Box3#translate" (func $export:src/as/math/Box3/Box3#translate))
 (export "Box3#equals" (func $export:src/as/math/Box3/Box3#equals))
 (export "compareBox" (func $export:src/as/math/Box3/compareBox@varargs))
 (export "HSL#get:h" (func $export:src/as/math/Color/HSL#get:h))
 (export "HSL#set:h" (func $export:src/as/math/Color/HSL#set:h))
 (export "HSL#get:s" (func $export:src/as/math/Color/HSL#get:s))
 (export "HSL#set:s" (func $export:src/as/math/Color/HSL#set:s))
 (export "HSL#get:l" (func $export:src/as/math/Color/HSL#get:l))
 (export "HSL#set:l" (func $export:src/as/math/Color/HSL#set:l))
 (export "HSL#constructor" (func $export:src/as/math/Color/HSL#constructor))
 (export "Colors#constructor" (func $export:src/as/math/Color/Colors#constructor))
 (export "Color#get:r" (func $export:src/as/math/Color/Color#get:r))
 (export "Color#set:r" (func $export:src/as/math/Color/Color#set:r))
 (export "Color#get:g" (func $export:src/as/math/Color/Color#get:g))
 (export "Color#set:g" (func $export:src/as/math/Color/Color#set:g))
 (export "Color#get:b" (func $export:src/as/math/Color/Color#get:b))
 (export "Color#set:b" (func $export:src/as/math/Color/Color#set:b))
 (export "Color#constructor" (func $export:src/as/math/Color/Color#constructor@varargs))
 (export "Color#get:isColor" (func $export:src/as/math/Color/Color#get:isColor))
 (export "Color#setScalar" (func $export:src/as/math/Color/Color#setScalar))
 (export "Color#setHex" (func $export:src/as/math/Color/Color#setHex))
 (export "Color#setRGB" (func $export:src/as/math/Color/Color#setRGB))
 (export "Color#clone" (func $export:src/as/math/Color/Color#clone))
 (export "Color#copy" (func $export:src/as/math/Color/Color#copy))
 (export "Color#copyGammaToLinear" (func $export:src/as/math/Color/Color#copyGammaToLinear@varargs))
 (export "Color#copyLinearToGamma" (func $export:src/as/math/Color/Color#copyLinearToGamma@varargs))
 (export "Color#convertGammaToLinear" (func $export:src/as/math/Color/Color#convertGammaToLinear@varargs))
 (export "Color#convertLinearToGamma" (func $export:src/as/math/Color/Color#convertLinearToGamma@varargs))
 (export "Color#copySRGBToLinear" (func $export:src/as/math/Color/Color#copySRGBToLinear))
 (export "Color#copyLinearToSRGB" (func $export:src/as/math/Color/Color#copyLinearToSRGB))
 (export "Color#convertSRGBToLinear" (func $export:src/as/math/Color/Color#convertSRGBToLinear))
 (export "Color#convertLinearToSRGB" (func $export:src/as/math/Color/Color#convertLinearToSRGB))
 (export "Color#getHex" (func $export:src/as/math/Color/Color#getHex))
 (export "Color#getHexString" (func $export:src/as/math/Color/Color#getHexString))
 (export "Color#getStyle" (func $export:src/as/math/Color/Color#getStyle))
 (export "Color#add" (func $export:src/as/math/Color/Color#add))
 (export "Color#addColors" (func $export:src/as/math/Color/Color#addColors))
 (export "Color#addScalar" (func $export:src/as/math/Color/Color#addScalar))
 (export "Color#sub" (func $export:src/as/math/Color/Color#sub))
 (export "Color#multiply" (func $export:src/as/math/Color/Color#multiply))
 (export "Color#multiplyScalar" (func $export:src/as/math/Color/Color#multiplyScalar))
 (export "Color#lerp" (func $export:src/as/math/Color/Color#lerp))
 (export "Color#equals" (func $export:src/as/math/Color/Color#equals))
 (export "Color#fromArray" (func $export:src/as/math/Color/Color#fromArray@varargs))
 (export "Color#toArray" (func $export:src/as/math/Color/Color#toArray@varargs))
 (export "Color#toJSON" (func $export:src/as/math/Color/Color#toJSON))
 (export "Euler#get:isEuler" (func $export:src/as/math/Euler/Euler#get:isEuler))
 (export "Euler#get:_x" (func $export:src/as/math/Euler/Euler#get:_x))
 (export "Euler#set:_x" (func $export:src/as/math/Euler/Euler#set:_x))
 (export "Euler#get:_y" (func $export:src/as/math/Euler/Euler#get:_y))
 (export "Euler#set:_y" (func $export:src/as/math/Euler/Euler#set:_y))
 (export "Euler#get:_z" (func $export:src/as/math/Euler/Euler#get:_z))
 (export "Euler#set:_z" (func $export:src/as/math/Euler/Euler#set:_z))
 (export "Euler#get:_order" (func $export:src/as/math/Euler/Euler#get:_order))
 (export "Euler#set:_order" (func $export:src/as/math/Euler/Euler#set:_order))
 (export "Euler#constructor" (func $export:src/as/math/Euler/Euler#constructor@varargs))
 (export "Euler#get:x" (func $export:src/as/math/Euler/Euler#get:x))
 (export "Euler#set:x" (func $export:src/as/math/Euler/Euler#set:x))
 (export "Euler#get:y" (func $export:src/as/math/Euler/Euler#get:y))
 (export "Euler#set:y" (func $export:src/as/math/Euler/Euler#set:y))
 (export "Euler#get:z" (func $export:src/as/math/Euler/Euler#get:z))
 (export "Euler#set:z" (func $export:src/as/math/Euler/Euler#set:z))
 (export "Euler#get:order" (func $export:src/as/math/Euler/Euler#get:order))
 (export "Euler#set:order" (func $export:src/as/math/Euler/Euler#set:order))
 (export "Euler#get:onChangeCallback" (func $export:src/as/math/Euler/Euler#get:onChangeCallback))
 (export "Euler#set:onChangeCallback" (func $export:src/as/math/Euler/Euler#set:onChangeCallback))
 (export "Euler#set" (func $export:src/as/math/Euler/Euler#set@varargs))
 (export "Euler#clone" (func $export:src/as/math/Euler/Euler#clone))
 (export "Euler#copy" (func $export:src/as/math/Euler/Euler#copy))
 (export "Euler#setFromRotationMatrix" (func $export:src/as/math/Euler/Euler#setFromRotationMatrix@varargs))
 (export "Euler#setFromQuaternion" (func $export:src/as/math/Euler/Euler#setFromQuaternion@varargs))
 (export "Euler#setFromVector3" (func $export:src/as/math/Euler/Euler#setFromVector3@varargs))
 (export "Euler#equals" (func $export:src/as/math/Euler/Euler#equals))
 (export "Euler#toVector3" (func $export:src/as/math/Euler/Euler#toVector3@varargs))
 (export "Euler#onChange" (func $export:src/as/math/Euler/Euler#onChange))
 (export "eulerEquals" (func $export:src/as/math/Euler/eulerEquals@varargs))
 (export "Frustum#get:planes" (func $export:src/as/math/Frustum/Frustum#get:planes))
 (export "Frustum#set:planes" (func $export:src/as/math/Frustum/Frustum#set:planes))
 (export "Frustum#constructor" (func $export:src/as/math/Frustum/Frustum#constructor@varargs))
 (export "Frustum#set" (func $export:src/as/math/Frustum/Frustum#set))
 (export "Frustum#clone" (func $export:src/as/math/Frustum/Frustum#clone))
 (export "Frustum#copy" (func $export:src/as/math/Frustum/Frustum#copy))
 (export "Frustum#setFromProjectionMatrix" (func $export:src/as/math/Frustum/Frustum#setFromProjectionMatrix))
 (export "Frustum#intersectsSphere" (func $export:src/as/math/Frustum/Frustum#intersectsSphere))
 (export "Frustum#intersectsBox" (func $export:src/as/math/Frustum/Frustum#intersectsBox))
 (export "Frustum#containsPoint" (func $export:src/as/math/Frustum/Frustum#containsPoint))
 (export "log" (func $export:src/as/imports/log))
 (start $~start)
 (func $src/as/math/Color/HSL#set:h (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store
 )
 (func $src/as/math/Color/HSL#set:s (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=4
 )
 (func $src/as/math/Color/HSL#set:l (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=8
 )
 (func $~lib/rt/itcms/Object#set:nextWithColor (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/rt/itcms/Object#set:prev (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/rt/itcms/initLazy (param $0 i32) (result i32)
  local.get $0
  local.get $0
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $0
  local.get $0
  call $~lib/rt/itcms/Object#set:prev
  local.get $0
 )
 (func $~lib/rt/itcms/Object#get:next (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
 )
 (func $~lib/rt/itcms/Object#get:color (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.and
 )
 (func $~lib/rt/itcms/visitRoots (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/__visit_globals
  global.get $~lib/rt/itcms/pinSpace
  local.set $1
  local.get $1
  call $~lib/rt/itcms/Object#get:next
  local.set $2
  loop $while-continue|0
   local.get $2
   local.get $1
   i32.ne
   local.set $3
   local.get $3
   if
    i32.const 1
    drop
    local.get $2
    call $~lib/rt/itcms/Object#get:color
    i32.const 3
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 96
     i32.const 159
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.const 20
    i32.add
    local.get $0
    call $~lib/rt/__visit_members
    local.get $2
    call $~lib/rt/itcms/Object#get:next
    local.set $2
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#set:color (param $0 i32) (param $1 i32)
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $1
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/Object#set:next (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/Object#unlink (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/itcms/Object#get:next
  local.set $1
  local.get $1
  i32.const 0
  i32.eq
  if
   i32.const 1
   drop
   local.get $0
   i32.load offset=8
   i32.const 0
   i32.eq
   if (result i32)
    local.get $0
    global.get $~lib/memory/__heap_base
    i32.lt_u
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 96
    i32.const 127
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   return
  end
  local.get $0
  i32.load offset=8
  local.set $2
  i32.const 1
  drop
  local.get $2
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 131
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $2
  call $~lib/rt/itcms/Object#set:prev
  local.get $2
  local.get $1
  call $~lib/rt/itcms/Object#set:next
 )
 (func $~lib/rt/__typeinfo (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/rt/__rtti_base
  local.set $1
  local.get $0
  local.get $1
  i32.load
  i32.gt_u
  if
   i32.const 224
   i32.const 288
   i32.const 22
   i32.const 28
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  local.get $0
  i32.const 8
  i32.mul
  i32.add
  i32.load
 )
 (func $~lib/rt/itcms/Object#get:isPointerfree (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.load offset=12
  local.set $1
  local.get $1
  i32.const 1
  i32.le_u
  if (result i32)
   i32.const 1
  else
   local.get $1
   call $~lib/rt/__typeinfo
   i32.const 32
   i32.and
   i32.const 0
   i32.ne
  end
 )
 (func $~lib/rt/itcms/Object#linkTo (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  i32.load offset=8
  local.set $3
  local.get $0
  local.get $1
  local.get $2
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $0
  local.get $3
  call $~lib/rt/itcms/Object#set:prev
  local.get $3
  local.get $0
  call $~lib/rt/itcms/Object#set:next
  local.get $1
  local.get $0
  call $~lib/rt/itcms/Object#set:prev
 )
 (func $~lib/rt/itcms/Object#makeGray (param $0 i32)
  (local $1 i32)
  local.get $0
  global.get $~lib/rt/itcms/iter
  i32.eq
  if
   local.get $0
   i32.load offset=8
   local.tee $1
   i32.eqz
   if (result i32)
    i32.const 0
    i32.const 96
    i32.const 147
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   else
    local.get $1
   end
   global.set $~lib/rt/itcms/iter
  end
  local.get $0
  call $~lib/rt/itcms/Object#unlink
  local.get $0
  global.get $~lib/rt/itcms/toSpace
  local.get $0
  call $~lib/rt/itcms/Object#get:isPointerfree
  if (result i32)
   global.get $~lib/rt/itcms/white
   i32.eqz
  else
   i32.const 2
  end
  call $~lib/rt/itcms/Object#linkTo
 )
 (func $~lib/rt/itcms/__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  local.get $0
  i32.const 20
  i32.sub
  local.set $2
  i32.const 0
  drop
  local.get $2
  call $~lib/rt/itcms/Object#get:color
  global.get $~lib/rt/itcms/white
  i32.eq
  if
   local.get $2
   call $~lib/rt/itcms/Object#makeGray
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
 (func $~lib/rt/itcms/visitStack (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  local.set $1
  loop $while-continue|0
   local.get $1
   global.get $~lib/memory/__heap_base
   i32.lt_u
   local.set $2
   local.get $2
   if
    local.get $1
    i32.load
    local.get $0
    call $~lib/rt/itcms/__visit
    local.get $1
    i32.const 4
    i32.add
    local.set $1
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#get:size (param $0 i32) (result i32)
  i32.const 4
  local.get $0
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
 )
 (func $~lib/rt/tlsf/Root#set:flMap (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $~lib/rt/common/BLOCK#set:mmInfo (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $~lib/rt/tlsf/Block#set:prev (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/Block#set:next (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $1
  i32.load
  local.set $2
  i32.const 1
  drop
  local.get $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 268
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $3
  i32.const 1
  drop
  local.get $3
  i32.const 12
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 270
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $4
   local.get $3
   i32.const 4
   i32.shr_u
   local.set $5
  else
   local.get $3
   local.tee $6
   i32.const 1073741820
   local.tee $7
   local.get $6
   local.get $7
   i32.lt_u
   select
   local.set $6
   i32.const 31
   local.get $6
   i32.clz
   i32.sub
   local.set $4
   local.get $6
   local.get $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $5
   local.get $4
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $4
  end
  i32.const 1
  drop
  local.get $4
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $5
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 284
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=4
  local.set $8
  local.get $1
  i32.load offset=8
  local.set $9
  local.get $8
  if
   local.get $8
   local.get $9
   call $~lib/rt/tlsf/Block#set:next
  end
  local.get $9
  if
   local.get $9
   local.get $8
   call $~lib/rt/tlsf/Block#set:prev
  end
  local.get $1
  local.get $0
  local.set $10
  local.get $4
  local.set $6
  local.get $5
  local.set $7
  local.get $10
  local.get $6
  i32.const 4
  i32.shl
  local.get $7
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  i32.eq
  if
   local.get $0
   local.set $11
   local.get $4
   local.set $10
   local.get $5
   local.set $6
   local.get $9
   local.set $7
   local.get $11
   local.get $10
   i32.const 4
   i32.shl
   local.get $6
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $7
   i32.store offset=96
   local.get $9
   i32.eqz
   if
    local.get $0
    local.set $6
    local.get $4
    local.set $7
    local.get $6
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.set $6
    local.get $0
    local.set $7
    local.get $4
    local.set $11
    local.get $6
    i32.const 1
    local.get $5
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.tee $6
    local.set $10
    local.get $7
    local.get $11
    i32.const 2
    i32.shl
    i32.add
    local.get $10
    i32.store offset=4
    local.get $6
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const 1
     local.get $4
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     call $~lib/rt/tlsf/Root#set:flMap
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  i32.const 1
  drop
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 201
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.set $2
  i32.const 1
  drop
  local.get $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 203
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.set $3
  local.get $3
  i32.const 4
  i32.add
  local.get $3
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
  local.set $4
  local.get $4
  i32.load
  local.set $5
  local.get $5
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $4
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $2
   i32.const 4
   i32.add
   local.get $5
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.tee $2
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $1
   local.set $3
   local.get $3
   i32.const 4
   i32.add
   local.get $3
   i32.load
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.set $4
   local.get $4
   i32.load
   local.set $5
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $1
   local.set $3
   local.get $3
   i32.const 4
   i32.sub
   i32.load
   local.set $3
   local.get $3
   i32.load
   local.set $6
   i32.const 1
   drop
   local.get $6
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 221
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $3
   call $~lib/rt/tlsf/removeBlock
   local.get $3
   local.set $1
   local.get $1
   local.get $6
   i32.const 4
   i32.add
   local.get $2
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.tee $2
   call $~lib/rt/common/BLOCK#set:mmInfo
  end
  local.get $4
  local.get $5
  i32.const 2
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $2
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $7
  i32.const 1
  drop
  local.get $7
  i32.const 12
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 233
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  drop
  local.get $1
  i32.const 4
  i32.add
  local.get $7
  i32.add
  local.get $4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 234
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $7
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $8
   local.get $7
   i32.const 4
   i32.shr_u
   local.set $9
  else
   local.get $7
   local.tee $3
   i32.const 1073741820
   local.tee $6
   local.get $3
   local.get $6
   i32.lt_u
   select
   local.set $3
   i32.const 31
   local.get $3
   i32.clz
   i32.sub
   local.set $8
   local.get $3
   local.get $8
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $9
   local.get $8
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $8
  end
  i32.const 1
  drop
  local.get $8
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $9
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 251
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $10
  local.get $8
  local.set $3
  local.get $9
  local.set $6
  local.get $10
  local.get $3
  i32.const 4
  i32.shl
  local.get $6
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  local.set $11
  local.get $1
  i32.const 0
  call $~lib/rt/tlsf/Block#set:prev
  local.get $1
  local.get $11
  call $~lib/rt/tlsf/Block#set:next
  local.get $11
  if
   local.get $11
   local.get $1
   call $~lib/rt/tlsf/Block#set:prev
  end
  local.get $0
  local.set $12
  local.get $8
  local.set $10
  local.get $9
  local.set $3
  local.get $1
  local.set $6
  local.get $12
  local.get $10
  i32.const 4
  i32.shl
  local.get $3
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $6
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $8
  i32.shl
  i32.or
  call $~lib/rt/tlsf/Root#set:flMap
  local.get $0
  local.set $13
  local.get $8
  local.set $12
  local.get $0
  local.set $3
  local.get $8
  local.set $6
  local.get $3
  local.get $6
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const 1
  local.get $9
  i32.shl
  i32.or
  local.set $10
  local.get $13
  local.get $12
  i32.const 2
  i32.shl
  i32.add
  local.get $10
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  i32.const 1
  drop
  local.get $1
  local.get $2
  i32.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 377
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  i32.const 4
  i32.sub
  local.set $1
  local.get $2
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $2
  local.get $0
  local.set $3
  local.get $3
  i32.load offset=1568
  local.set $4
  i32.const 0
  local.set $5
  local.get $4
  if
   i32.const 1
   drop
   local.get $1
   local.get $4
   i32.const 4
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 384
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 16
   i32.sub
   local.get $4
   i32.eq
   if
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
    local.get $4
    i32.load
    local.set $5
   else
    nop
   end
  else
   i32.const 1
   drop
   local.get $1
   local.get $0
   i32.const 1572
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 397
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  local.get $1
  i32.sub
  local.set $6
  local.get $6
  i32.const 4
  i32.const 12
  i32.add
  i32.const 4
  i32.add
  i32.lt_u
  if
   i32.const 0
   return
  end
  local.get $6
  i32.const 2
  i32.const 4
  i32.mul
  i32.sub
  local.set $7
  local.get $1
  local.set $8
  local.get $8
  local.get $7
  i32.const 1
  i32.or
  local.get $5
  i32.const 2
  i32.and
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $8
  i32.const 0
  call $~lib/rt/tlsf/Block#set:prev
  local.get $8
  i32.const 0
  call $~lib/rt/tlsf/Block#set:next
  local.get $1
  i32.const 4
  i32.add
  local.get $7
  i32.add
  local.set $4
  local.get $4
  i32.const 0
  i32.const 2
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $0
  local.set $9
  local.get $4
  local.set $3
  local.get $9
  local.get $3
  i32.store offset=1568
  local.get $0
  local.get $8
  call $~lib/rt/tlsf/insertBlock
  i32.const 1
 )
 (func $~lib/rt/tlsf/initialize
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  i32.const 0
  drop
  global.get $~lib/memory/__heap_base
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $0
  memory.size
  local.set $1
  local.get $0
  i32.const 1572
  i32.add
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $2
  local.get $2
  local.get $1
  i32.gt_s
  if (result i32)
   local.get $2
   local.get $1
   i32.sub
   memory.grow
   i32.const 0
   i32.lt_s
  else
   i32.const 0
  end
  if
   unreachable
  end
  local.get $0
  local.set $3
  local.get $3
  i32.const 0
  call $~lib/rt/tlsf/Root#set:flMap
  local.get $3
  local.set $5
  i32.const 0
  local.set $4
  local.get $5
  local.get $4
  i32.store offset=1568
  i32.const 0
  local.set $5
  loop $for-loop|0
   local.get $5
   i32.const 23
   i32.lt_u
   local.set $4
   local.get $4
   if
    local.get $3
    local.set $8
    local.get $5
    local.set $7
    i32.const 0
    local.set $6
    local.get $8
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    local.get $6
    i32.store offset=4
    i32.const 0
    local.set $8
    loop $for-loop|1
     local.get $8
     i32.const 16
     i32.lt_u
     local.set $7
     local.get $7
     if
      local.get $3
      local.set $11
      local.get $5
      local.set $10
      local.get $8
      local.set $9
      i32.const 0
      local.set $6
      local.get $11
      local.get $10
      i32.const 4
      i32.shl
      local.get $9
      i32.add
      i32.const 2
      i32.shl
      i32.add
      local.get $6
      i32.store offset=96
      local.get $8
      i32.const 1
      i32.add
      local.set $8
      br $for-loop|1
     end
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  local.get $0
  i32.const 1572
  i32.add
  local.set $12
  i32.const 0
  drop
  local.get $3
  local.get $12
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  drop
  local.get $3
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/checkUsedBlock (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 4
  i32.sub
  local.set $1
  local.get $0
  i32.const 0
  i32.ne
  if (result i32)
   local.get $0
   i32.const 15
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.load
   i32.const 1
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 559
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
 )
 (func $~lib/rt/tlsf/freeBlock (param $0 i32) (param $1 i32)
  i32.const 0
  drop
  local.get $1
  local.get $1
  i32.load
  i32.const 1
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/__free (param $0 i32)
  local.get $0
  global.get $~lib/memory/__heap_base
  i32.lt_u
  if
   return
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  call $~lib/rt/tlsf/checkUsedBlock
  call $~lib/rt/tlsf/freeBlock
 )
 (func $~lib/rt/itcms/free (param $0 i32)
  local.get $0
  global.get $~lib/memory/__heap_base
  i32.lt_u
  if
   local.get $0
   i32.const 0
   call $~lib/rt/itcms/Object#set:nextWithColor
   local.get $0
   i32.const 0
   call $~lib/rt/itcms/Object#set:prev
  else
   global.get $~lib/rt/itcms/total
   local.get $0
   call $~lib/rt/itcms/Object#get:size
   i32.sub
   global.set $~lib/rt/itcms/total
   i32.const 0
   drop
   local.get $0
   i32.const 4
   i32.add
   call $~lib/rt/tlsf/__free
  end
 )
 (func $~lib/rt/itcms/step (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  block $break|0
   block $case2|0
    block $case1|0
     block $case0|0
      global.get $~lib/rt/itcms/state
      local.set $1
      local.get $1
      i32.const 0
      i32.eq
      br_if $case0|0
      local.get $1
      i32.const 1
      i32.eq
      br_if $case1|0
      local.get $1
      i32.const 2
      i32.eq
      br_if $case2|0
      br $break|0
     end
     i32.const 1
     global.set $~lib/rt/itcms/state
     i32.const 0
     global.set $~lib/rt/itcms/visitCount
     i32.const 0
     call $~lib/rt/itcms/visitRoots
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/iter
     global.get $~lib/rt/itcms/visitCount
     i32.const 1
     i32.mul
     return
    end
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.set $1
    global.get $~lib/rt/itcms/iter
    call $~lib/rt/itcms/Object#get:next
    local.set $0
    loop $while-continue|1
     local.get $0
     global.get $~lib/rt/itcms/toSpace
     i32.ne
     local.set $2
     local.get $2
     if
      local.get $0
      global.set $~lib/rt/itcms/iter
      local.get $0
      call $~lib/rt/itcms/Object#get:color
      local.get $1
      i32.ne
      if
       local.get $0
       local.get $1
       call $~lib/rt/itcms/Object#set:color
       i32.const 0
       global.set $~lib/rt/itcms/visitCount
       local.get $0
       i32.const 20
       i32.add
       i32.const 0
       call $~lib/rt/__visit_members
       global.get $~lib/rt/itcms/visitCount
       i32.const 1
       i32.mul
       return
      end
      local.get $0
      call $~lib/rt/itcms/Object#get:next
      local.set $0
      br $while-continue|1
     end
    end
    i32.const 0
    global.set $~lib/rt/itcms/visitCount
    i32.const 0
    call $~lib/rt/itcms/visitRoots
    global.get $~lib/rt/itcms/iter
    call $~lib/rt/itcms/Object#get:next
    local.set $0
    local.get $0
    global.get $~lib/rt/itcms/toSpace
    i32.eq
    if
     i32.const 0
     call $~lib/rt/itcms/visitStack
     global.get $~lib/rt/itcms/iter
     call $~lib/rt/itcms/Object#get:next
     local.set $0
     loop $while-continue|2
      local.get $0
      global.get $~lib/rt/itcms/toSpace
      i32.ne
      local.set $2
      local.get $2
      if
       local.get $0
       call $~lib/rt/itcms/Object#get:color
       local.get $1
       i32.ne
       if
        local.get $0
        local.get $1
        call $~lib/rt/itcms/Object#set:color
        local.get $0
        i32.const 20
        i32.add
        i32.const 0
        call $~lib/rt/__visit_members
       end
       local.get $0
       call $~lib/rt/itcms/Object#get:next
       local.set $0
       br $while-continue|2
      end
     end
     global.get $~lib/rt/itcms/fromSpace
     local.set $2
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/fromSpace
     local.get $2
     global.set $~lib/rt/itcms/toSpace
     local.get $1
     global.set $~lib/rt/itcms/white
     local.get $2
     call $~lib/rt/itcms/Object#get:next
     global.set $~lib/rt/itcms/iter
     i32.const 2
     global.set $~lib/rt/itcms/state
    end
    global.get $~lib/rt/itcms/visitCount
    i32.const 1
    i32.mul
    return
   end
   global.get $~lib/rt/itcms/iter
   local.set $0
   local.get $0
   global.get $~lib/rt/itcms/toSpace
   i32.ne
   if
    local.get $0
    call $~lib/rt/itcms/Object#get:next
    global.set $~lib/rt/itcms/iter
    i32.const 1
    drop
    local.get $0
    call $~lib/rt/itcms/Object#get:color
    global.get $~lib/rt/itcms/white
    i32.eqz
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 96
     i32.const 228
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    call $~lib/rt/itcms/free
    i32.const 10
    return
   end
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   call $~lib/rt/itcms/Object#set:nextWithColor
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   call $~lib/rt/itcms/Object#set:prev
   i32.const 0
   global.set $~lib/rt/itcms/state
   br $break|0
  end
  i32.const 0
 )
 (func $~lib/rt/itcms/interrupt
  (local $0 i32)
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 1024
  i32.const 200
  i32.mul
  i32.const 100
  i32.div_u
  local.set $0
  loop $do-loop|0
   local.get $0
   call $~lib/rt/itcms/step
   i32.sub
   local.set $0
   global.get $~lib/rt/itcms/state
   i32.const 0
   i32.eq
   if
    i32.const 0
    drop
    global.get $~lib/rt/itcms/total
    i64.extend_i32_u
    i32.const 200
    i64.extend_i32_u
    i64.mul
    i64.const 100
    i64.div_u
    i32.wrap_i64
    i32.const 1024
    i32.add
    global.set $~lib/rt/itcms/threshold
    i32.const 0
    drop
    return
   end
   local.get $0
   i32.const 0
   i32.gt_s
   br_if $do-loop|0
  end
  i32.const 0
  drop
  global.get $~lib/rt/itcms/total
  i32.const 1024
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.sub
  i32.const 1024
  i32.lt_u
  i32.mul
  i32.add
  global.set $~lib/rt/itcms/threshold
  i32.const 0
  drop
 )
 (func $~lib/rt/tlsf/computeSize (param $0 i32) (result i32)
  local.get $0
  i32.const 12
  i32.le_u
  if (result i32)
   i32.const 12
  else
   local.get $0
   i32.const 4
   i32.add
   i32.const 15
   i32.add
   i32.const 15
   i32.const -1
   i32.xor
   i32.and
   i32.const 4
   i32.sub
  end
 )
 (func $~lib/rt/tlsf/prepareSize (param $0 i32) (result i32)
  local.get $0
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 32
   i32.const 368
   i32.const 458
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/tlsf/computeSize
 )
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $2
   local.get $1
   i32.const 4
   i32.shr_u
   local.set $3
  else
   local.get $1
   i32.const 536870910
   i32.lt_u
   if (result i32)
    local.get $1
    i32.const 1
    i32.const 27
    local.get $1
    i32.clz
    i32.sub
    i32.shl
    i32.add
    i32.const 1
    i32.sub
   else
    local.get $1
   end
   local.set $4
   i32.const 31
   local.get $4
   i32.clz
   i32.sub
   local.set $2
   local.get $4
   local.get $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $3
   local.get $2
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $2
  end
  i32.const 1
  drop
  local.get $2
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $3
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 330
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $5
  local.get $2
  local.set $4
  local.get $5
  local.get $4
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const 0
  i32.const -1
  i32.xor
  local.get $3
  i32.shl
  i32.and
  local.set $6
  i32.const 0
  local.set $7
  local.get $6
  i32.eqz
  if
   local.get $0
   i32.load
   i32.const 0
   i32.const -1
   i32.xor
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.set $5
   local.get $5
   i32.eqz
   if
    i32.const 0
    local.set $7
   else
    local.get $5
    i32.ctz
    local.set $2
    local.get $0
    local.set $8
    local.get $2
    local.set $4
    local.get $8
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.set $6
    i32.const 1
    drop
    local.get $6
    i32.eqz
    if
     i32.const 0
     i32.const 368
     i32.const 343
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.set $9
    local.get $2
    local.set $8
    local.get $6
    i32.ctz
    local.set $4
    local.get $9
    local.get $8
    i32.const 4
    i32.shl
    local.get $4
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
    local.set $7
   end
  else
   local.get $0
   local.set $9
   local.get $2
   local.set $8
   local.get $6
   i32.ctz
   local.set $4
   local.get $9
   local.get $8
   i32.const 4
   i32.shl
   local.get $4
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
   local.set $7
  end
  local.get $7
 )
 (func $~lib/rt/tlsf/growMemory (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 0
  drop
  local.get $1
  i32.const 536870910
  i32.lt_u
  if
   local.get $1
   i32.const 1
   i32.const 27
   local.get $1
   i32.clz
   i32.sub
   i32.shl
   i32.const 1
   i32.sub
   i32.add
   local.set $1
  end
  memory.size
  local.set $2
  local.get $1
  i32.const 4
  local.get $2
  i32.const 16
  i32.shl
  i32.const 4
  i32.sub
  local.get $0
  local.set $3
  local.get $3
  i32.load offset=1568
  i32.ne
  i32.shl
  i32.add
  local.set $1
  local.get $1
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $4
  local.get $2
  local.tee $3
  local.get $4
  local.tee $5
  local.get $3
  local.get $5
  i32.gt_s
  select
  local.set $6
  local.get $6
  memory.grow
  i32.const 0
  i32.lt_s
  if
   local.get $4
   memory.grow
   i32.const 0
   i32.lt_s
   if
    unreachable
   end
  end
  memory.size
  local.set $7
  local.get $0
  local.get $2
  i32.const 16
  i32.shl
  local.get $7
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  drop
 )
 (func $~lib/rt/tlsf/prepareBlock (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.set $3
  i32.const 1
  drop
  local.get $2
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 357
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $2
  i32.sub
  local.set $4
  local.get $4
  i32.const 4
  i32.const 12
  i32.add
  i32.ge_u
  if
   local.get $1
   local.get $2
   local.get $3
   i32.const 2
   i32.and
   i32.or
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $1
   i32.const 4
   i32.add
   local.get $2
   i32.add
   local.set $5
   local.get $5
   local.get $4
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $0
   local.get $5
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $1
   local.get $3
   i32.const 1
   i32.const -1
   i32.xor
   i32.and
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $1
   local.set $5
   local.get $5
   i32.const 4
   i32.add
   local.get $5
   i32.load
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.get $1
   local.set $5
   local.get $5
   i32.const 4
   i32.add
   local.get $5
   i32.load
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   i32.load
   i32.const 2
   i32.const -1
   i32.xor
   i32.and
   call $~lib/rt/common/BLOCK#set:mmInfo
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/tlsf/prepareSize
  local.set $2
  local.get $0
  local.get $2
  call $~lib/rt/tlsf/searchBlock
  local.set $3
  local.get $3
  i32.eqz
  if
   local.get $0
   local.get $2
   call $~lib/rt/tlsf/growMemory
   local.get $0
   local.get $2
   call $~lib/rt/tlsf/searchBlock
   local.set $3
   i32.const 1
   drop
   local.get $3
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 496
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  local.get $3
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $2
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 498
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $3
  call $~lib/rt/tlsf/removeBlock
  local.get $0
  local.get $3
  local.get $2
  call $~lib/rt/tlsf/prepareBlock
  i32.const 0
  drop
  local.get $3
 )
 (func $~lib/rt/tlsf/__alloc (param $0 i32) (result i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
 )
 (func $~lib/rt/itcms/Object#set:rtId (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/rt/itcms/Object#set:rtSize (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $~lib/memory/memory.fill (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i32)
  block $~lib/util/memory/memset|inlined.0
   local.get $0
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   i32.const 0
   i32.const 1
   i32.gt_s
   drop
   local.get $3
   i32.eqz
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $3
   i32.add
   local.set $6
   local.get $5
   local.get $4
   i32.store8
   local.get $6
   i32.const 1
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 2
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $4
   i32.store8 offset=1
   local.get $5
   local.get $4
   i32.store8 offset=2
   local.get $6
   i32.const 2
   i32.sub
   local.get $4
   i32.store8
   local.get $6
   i32.const 3
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 6
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $4
   i32.store8 offset=3
   local.get $6
   i32.const 4
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   i32.const 0
   local.get $5
   i32.sub
   i32.const 3
   i32.and
   local.set $7
   local.get $5
   local.get $7
   i32.add
   local.set $5
   local.get $3
   local.get $7
   i32.sub
   local.set $3
   local.get $3
   i32.const -4
   i32.and
   local.set $3
   i32.const -1
   i32.const 255
   i32.div_u
   local.get $4
   i32.const 255
   i32.and
   i32.mul
   local.set $8
   local.get $5
   local.get $3
   i32.add
   local.set $6
   local.get $5
   local.get $8
   i32.store
   local.get $6
   i32.const 4
   i32.sub
   local.get $8
   i32.store
   local.get $3
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $8
   i32.store offset=4
   local.get $5
   local.get $8
   i32.store offset=8
   local.get $6
   i32.const 12
   i32.sub
   local.get $8
   i32.store
   local.get $6
   i32.const 8
   i32.sub
   local.get $8
   i32.store
   local.get $3
   i32.const 24
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $8
   i32.store offset=12
   local.get $5
   local.get $8
   i32.store offset=16
   local.get $5
   local.get $8
   i32.store offset=20
   local.get $5
   local.get $8
   i32.store offset=24
   local.get $6
   i32.const 28
   i32.sub
   local.get $8
   i32.store
   local.get $6
   i32.const 24
   i32.sub
   local.get $8
   i32.store
   local.get $6
   i32.const 20
   i32.sub
   local.get $8
   i32.store
   local.get $6
   i32.const 16
   i32.sub
   local.get $8
   i32.store
   i32.const 24
   local.get $5
   i32.const 4
   i32.and
   i32.add
   local.set $7
   local.get $5
   local.get $7
   i32.add
   local.set $5
   local.get $3
   local.get $7
   i32.sub
   local.set $3
   local.get $8
   i64.extend_i32_u
   local.get $8
   i64.extend_i32_u
   i64.const 32
   i64.shl
   i64.or
   local.set $9
   loop $while-continue|0
    local.get $3
    i32.const 32
    i32.ge_u
    local.set $10
    local.get $10
    if
     local.get $5
     local.get $9
     i64.store
     local.get $5
     local.get $9
     i64.store offset=8
     local.get $5
     local.get $9
     i64.store offset=16
     local.get $5
     local.get $9
     i64.store offset=24
     local.get $3
     i32.const 32
     i32.sub
     local.set $3
     local.get $5
     i32.const 32
     i32.add
     local.set $5
     br $while-continue|0
    end
   end
  end
 )
 (func $~lib/rt/itcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 32
   i32.const 96
   i32.const 260
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   call $~lib/rt/itcms/interrupt
  end
  i32.const 16
  local.get $0
  i32.add
  call $~lib/rt/tlsf/__alloc
  i32.const 4
  i32.sub
  local.set $2
  local.get $2
  local.get $1
  call $~lib/rt/itcms/Object#set:rtId
  local.get $2
  local.get $0
  call $~lib/rt/itcms/Object#set:rtSize
  local.get $2
  global.get $~lib/rt/itcms/fromSpace
  global.get $~lib/rt/itcms/white
  call $~lib/rt/itcms/Object#linkTo
  global.get $~lib/rt/itcms/total
  local.get $2
  call $~lib/rt/itcms/Object#get:size
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $2
  i32.const 20
  i32.add
  local.set $3
  local.get $3
  i32.const 0
  local.get $0
  call $~lib/memory/memory.fill
  local.get $3
 )
 (func $start:src/as/math/Color
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  memory.size
  i32.const 16
  i32.shl
  global.get $~lib/memory/__heap_base
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 144
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/pinSpace
  i32.const 176
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/toSpace
  i32.const 320
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/fromSpace
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $src/as/math/Color/HSL#constructor
  local.tee $0
  i32.store
  local.get $0
  f32.const 0
  call $src/as/math/Color/HSL#set:h
  local.get $0
  f32.const 0
  call $src/as/math/Color/HSL#set:s
  local.get $0
  f32.const 0
  call $src/as/math/Color/HSL#set:l
  local.get $0
  global.set $src/as/math/Color/hsl
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $src/as/math/Color/HSL#constructor
  local.tee $1
  i32.store offset=4
  local.get $1
  f32.const 0
  call $src/as/math/Color/HSL#set:h
  local.get $1
  f32.const 0
  call $src/as/math/Color/HSL#set:s
  local.get $1
  f32.const 0
  call $src/as/math/Color/HSL#set:l
  local.get $1
  global.set $src/as/math/Color/hslA
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $src/as/math/Color/HSL#constructor
  local.tee $2
  i32.store offset=8
  local.get $2
  f32.const 0
  call $src/as/math/Color/HSL#set:h
  local.get $2
  f32.const 0
  call $src/as/math/Color/HSL#set:s
  local.get $2
  f32.const 0
  call $src/as/math/Color/HSL#set:l
  local.get $2
  global.set $src/as/math/Color/hslB
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $start:src/as/core/BufferAttribute
  call $start:src/as/math/Color
 )
 (func $start:src/as/math/Matrix3
  call $start:src/as/core/BufferAttribute
 )
 (func $start:src/as/math/Vector3
  call $start:src/as/math/Matrix3
 )
 (func $start:src/as/math/Matrix4
  call $start:src/as/math/Vector3
 )
 (func $~lib/rt/itcms/__link (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.eqz
  if
   return
  end
  i32.const 1
  drop
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 294
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 20
  i32.sub
  local.set $3
  local.get $3
  call $~lib/rt/itcms/Object#get:color
  global.get $~lib/rt/itcms/white
  i32.eq
  if
   local.get $0
   i32.const 20
   i32.sub
   local.set $4
   local.get $4
   call $~lib/rt/itcms/Object#get:color
   local.set $5
   local.get $5
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.eq
   if
    local.get $2
    if
     local.get $4
     call $~lib/rt/itcms/Object#makeGray
    else
     local.get $3
     call $~lib/rt/itcms/Object#makeGray
    end
   else
    local.get $5
    i32.const 3
    i32.eq
    if (result i32)
     global.get $~lib/rt/itcms/state
     i32.const 1
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $3
     call $~lib/rt/itcms/Object#makeGray
    end
   end
  end
 )
 (func $src/as/math/Matrix4/Matrix4#set:elements (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/util/memory/memcpy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  loop $while-continue|0
   local.get $2
   if (result i32)
    local.get $1
    i32.const 3
    i32.and
   else
    i32.const 0
   end
   local.set $5
   local.get $5
   if
    local.get $0
    local.tee $6
    i32.const 1
    i32.add
    local.set $0
    local.get $6
    local.get $1
    local.tee $6
    i32.const 1
    i32.add
    local.set $1
    local.get $6
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.const 3
  i32.and
  i32.const 0
  i32.eq
  if
   loop $while-continue|1
    local.get $2
    i32.const 16
    i32.ge_u
    local.set $5
    local.get $5
    if
     local.get $0
     local.get $1
     i32.load
     i32.store
     local.get $0
     i32.const 4
     i32.add
     local.get $1
     i32.const 4
     i32.add
     i32.load
     i32.store
     local.get $0
     i32.const 8
     i32.add
     local.get $1
     i32.const 8
     i32.add
     i32.load
     i32.store
     local.get $0
     i32.const 12
     i32.add
     local.get $1
     i32.const 12
     i32.add
     i32.load
     i32.store
     local.get $1
     i32.const 16
     i32.add
     local.set $1
     local.get $0
     i32.const 16
     i32.add
     local.set $0
     local.get $2
     i32.const 16
     i32.sub
     local.set $2
     br $while-continue|1
    end
   end
   local.get $2
   i32.const 8
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    i32.const 4
    i32.add
    local.get $1
    i32.const 4
    i32.add
    i32.load
    i32.store
    local.get $0
    i32.const 8
    i32.add
    local.set $0
    local.get $1
    i32.const 8
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 4
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    i32.const 4
    i32.add
    local.set $0
    local.get $1
    i32.const 4
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 2
   i32.and
   if
    local.get $0
    local.get $1
    i32.load16_u
    i32.store16
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    local.get $1
    i32.const 2
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 1
   i32.and
   if
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
    i32.load8_u
    i32.store8
   end
   return
  end
  local.get $2
  i32.const 32
  i32.ge_u
  if
   block $break|2
    block $case2|2
     block $case1|2
      block $case0|2
       local.get $0
       i32.const 3
       i32.and
       local.set $5
       local.get $5
       i32.const 1
       i32.eq
       br_if $case0|2
       local.get $5
       i32.const 2
       i32.eq
       br_if $case1|2
       local.get $5
       i32.const 3
       i32.eq
       br_if $case2|2
       br $break|2
      end
      local.get $1
      i32.load
      local.set $3
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 3
      i32.sub
      local.set $2
      loop $while-continue|3
       local.get $2
       i32.const 17
       i32.ge_u
       local.set $5
       local.get $5
       if
        local.get $1
        i32.const 1
        i32.add
        i32.load
        local.set $4
        local.get $0
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $4
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 5
        i32.add
        i32.load
        local.set $3
        local.get $0
        i32.const 4
        i32.add
        local.get $4
        i32.const 24
        i32.shr_u
        local.get $3
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 9
        i32.add
        i32.load
        local.set $4
        local.get $0
        i32.const 8
        i32.add
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $4
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 13
        i32.add
        i32.load
        local.set $3
        local.get $0
        i32.const 12
        i32.add
        local.get $4
        i32.const 24
        i32.shr_u
        local.get $3
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $1
        i32.const 16
        i32.add
        local.set $1
        local.get $0
        i32.const 16
        i32.add
        local.set $0
        local.get $2
        i32.const 16
        i32.sub
        local.set $2
        br $while-continue|3
       end
      end
      br $break|2
     end
     local.get $1
     i32.load
     local.set $3
     local.get $0
     local.tee $5
     i32.const 1
     i32.add
     local.set $0
     local.get $5
     local.get $1
     local.tee $5
     i32.const 1
     i32.add
     local.set $1
     local.get $5
     i32.load8_u
     i32.store8
     local.get $0
     local.tee $5
     i32.const 1
     i32.add
     local.set $0
     local.get $5
     local.get $1
     local.tee $5
     i32.const 1
     i32.add
     local.set $1
     local.get $5
     i32.load8_u
     i32.store8
     local.get $2
     i32.const 2
     i32.sub
     local.set $2
     loop $while-continue|4
      local.get $2
      i32.const 18
      i32.ge_u
      local.set $5
      local.get $5
      if
       local.get $1
       i32.const 2
       i32.add
       i32.load
       local.set $4
       local.get $0
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $4
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 6
       i32.add
       i32.load
       local.set $3
       local.get $0
       i32.const 4
       i32.add
       local.get $4
       i32.const 16
       i32.shr_u
       local.get $3
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 10
       i32.add
       i32.load
       local.set $4
       local.get $0
       i32.const 8
       i32.add
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $4
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 14
       i32.add
       i32.load
       local.set $3
       local.get $0
       i32.const 12
       i32.add
       local.get $4
       i32.const 16
       i32.shr_u
       local.get $3
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $1
       i32.const 16
       i32.add
       local.set $1
       local.get $0
       i32.const 16
       i32.add
       local.set $0
       local.get $2
       i32.const 16
       i32.sub
       local.set $2
       br $while-continue|4
      end
     end
     br $break|2
    end
    local.get $1
    i32.load
    local.set $3
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    loop $while-continue|5
     local.get $2
     i32.const 19
     i32.ge_u
     local.set $5
     local.get $5
     if
      local.get $1
      i32.const 3
      i32.add
      i32.load
      local.set $4
      local.get $0
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $4
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 7
      i32.add
      i32.load
      local.set $3
      local.get $0
      i32.const 4
      i32.add
      local.get $4
      i32.const 8
      i32.shr_u
      local.get $3
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 11
      i32.add
      i32.load
      local.set $4
      local.get $0
      i32.const 8
      i32.add
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $4
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 15
      i32.add
      i32.load
      local.set $3
      local.get $0
      i32.const 12
      i32.add
      local.get $4
      i32.const 8
      i32.shr_u
      local.get $3
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $1
      i32.const 16
      i32.add
      local.set $1
      local.get $0
      i32.const 16
      i32.add
      local.set $0
      local.get $2
      i32.const 16
      i32.sub
      local.set $2
      br $while-continue|5
     end
    end
    br $break|2
   end
  end
  local.get $2
  i32.const 16
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 8
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 4
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/memory/memory.copy (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $0
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $5
   local.get $4
   i32.eq
   if
    br $~lib/util/memory/memmove|inlined.0
   end
   i32.const 0
   i32.const 1
   i32.lt_s
   drop
   local.get $4
   local.get $5
   i32.sub
   local.get $3
   i32.sub
   i32.const 0
   local.get $3
   i32.const 1
   i32.shl
   i32.sub
   i32.le_u
   if
    local.get $5
    local.get $4
    local.get $3
    call $~lib/util/memory/memcpy
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $5
   local.get $4
   i32.lt_u
   if
    i32.const 0
    i32.const 2
    i32.lt_s
    drop
    local.get $4
    i32.const 7
    i32.and
    local.get $5
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|0
      local.get $5
      i32.const 7
      i32.and
      local.set $6
      local.get $6
      if
       local.get $3
       i32.eqz
       if
        br $~lib/util/memory/memmove|inlined.0
       end
       local.get $3
       i32.const 1
       i32.sub
       local.set $3
       local.get $5
       local.tee $7
       i32.const 1
       i32.add
       local.set $5
       local.get $7
       local.get $4
       local.tee $7
       i32.const 1
       i32.add
       local.set $4
       local.get $7
       i32.load8_u
       i32.store8
       br $while-continue|0
      end
     end
     loop $while-continue|1
      local.get $3
      i32.const 8
      i32.ge_u
      local.set $6
      local.get $6
      if
       local.get $5
       local.get $4
       i64.load
       i64.store
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
       local.get $5
       i32.const 8
       i32.add
       local.set $5
       local.get $4
       i32.const 8
       i32.add
       local.set $4
       br $while-continue|1
      end
     end
    end
    loop $while-continue|2
     local.get $3
     local.set $6
     local.get $6
     if
      local.get $5
      local.tee $7
      i32.const 1
      i32.add
      local.set $5
      local.get $7
      local.get $4
      local.tee $7
      i32.const 1
      i32.add
      local.set $4
      local.get $7
      i32.load8_u
      i32.store8
      local.get $3
      i32.const 1
      i32.sub
      local.set $3
      br $while-continue|2
     end
    end
   else
    i32.const 0
    i32.const 2
    i32.lt_s
    drop
    local.get $4
    i32.const 7
    i32.and
    local.get $5
    i32.const 7
    i32.and
    i32.eq
    if
     loop $while-continue|3
      local.get $5
      local.get $3
      i32.add
      i32.const 7
      i32.and
      local.set $6
      local.get $6
      if
       local.get $3
       i32.eqz
       if
        br $~lib/util/memory/memmove|inlined.0
       end
       local.get $5
       local.get $3
       i32.const 1
       i32.sub
       local.tee $3
       i32.add
       local.get $4
       local.get $3
       i32.add
       i32.load8_u
       i32.store8
       br $while-continue|3
      end
     end
     loop $while-continue|4
      local.get $3
      i32.const 8
      i32.ge_u
      local.set $6
      local.get $6
      if
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
       local.get $5
       local.get $3
       i32.add
       local.get $4
       local.get $3
       i32.add
       i64.load
       i64.store
       br $while-continue|4
      end
     end
    end
    loop $while-continue|5
     local.get $3
     local.set $6
     local.get $6
     if
      local.get $5
      local.get $3
      i32.const 1
      i32.sub
      local.tee $3
      i32.add
      local.get $4
      local.get $3
      i32.add
      i32.load8_u
      i32.store8
      br $while-continue|5
     end
    end
   end
  end
 )
 (func $~lib/rt/__newBuffer (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $0
  local.get $1
  call $~lib/rt/itcms/__new
  local.set $3
  local.get $2
  if
   local.get $3
   local.get $2
   local.get $0
   call $~lib/memory/memory.copy
  end
  local.get $3
 )
 (func $src/as/math/Quaternion/Quaternion#set:_x (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store
 )
 (func $src/as/math/Quaternion/Quaternion#set:_y (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=4
 )
 (func $src/as/math/Quaternion/Quaternion#set:_z (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=8
 )
 (func $src/as/math/Quaternion/Quaternion#set:_w (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=12
 )
 (func $src/as/math/Quaternion/Quaternion#set:isQuaternion (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8 offset=16
 )
 (func $src/as/math/Quaternion/Quaternion#set:onChangeCallback (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=20
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/as/math/Quaternion/Quaternion#constructor~anonymous|0
  nop
 )
 (func $start:src/as/math/Euler
  call $start:src/as/math/Matrix4
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  global.set $src/as/math/Euler/matrix
  i32.const 0
  f32.const 0
  f32.const 0
  f32.const 0
  f32.const 1
  call $src/as/math/Quaternion/Quaternion#constructor
  global.set $src/as/math/Euler/quaternion
  global.get $src/as/math/Euler/EulerRotationOrder.XYZ
  global.set $src/as/math/Euler/Euler.DefaultOrder
 )
 (func $start:src/as/math/Quaternion
  call $start:src/as/math/Euler
 )
 (func $src/as/math/Vector3/Vector3#set:x (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store
 )
 (func $src/as/math/Vector3/Vector3#set:y (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=4
 )
 (func $src/as/math/Vector3/Vector3#set:z (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=8
 )
 (func $src/as/math/Vector3/Vector3#set:isVector3 (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8 offset=12
 )
 (func $src/as/math/Vector3/Vector3#set:__xChar (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $~lib/string/String#get:length (param $0 i32) (result i32)
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
 )
 (func $~lib/string/String#charCodeAt (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  call $~lib/string/String#get:length
  i32.ge_u
  if
   i32.const -1
   return
  end
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u
 )
 (func $src/as/math/Vector3/Vector3#set:__yChar (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=20
 )
 (func $src/as/math/Vector3/Vector3#set:__zChar (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=24
 )
 (func $src/as/math/Vector3/Vector3#set:__invalidNameMsg (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=28
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $start:src/as/core/Object3D
  call $start:src/as/math/Quaternion
  i32.const 0
  f32.const 0
  f32.const 0
  f32.const 0
  f32.const 1
  call $src/as/math/Quaternion/Quaternion#constructor
  global.set $src/as/core/Object3D/quaternion
  i32.const 0
  f32.const 0
  f32.const 0
  f32.const 0
  call $src/as/math/Vector3/Vector3#constructor
  global.set $src/as/core/Object3D/vector
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  global.set $src/as/core/Object3D/matrix
  i32.const 0
  f32.const 0
  f32.const 0
  f32.const 0
  call $src/as/math/Vector3/Vector3#constructor
  global.set $src/as/core/Object3D/target
  i32.const 0
  f32.const 0
  f32.const 0
  f32.const 0
  call $src/as/math/Vector3/Vector3#constructor
  global.set $src/as/core/Object3D/position
  i32.const 0
  f32.const 0
  f32.const 0
  f32.const 0
  call $src/as/math/Vector3/Vector3#constructor
  global.set $src/as/core/Object3D/scale
  i32.const 0
  f32.const 1
  f32.const 0
  f32.const 0
  call $src/as/math/Vector3/Vector3#constructor
  global.set $src/as/core/Object3D/vX
  i32.const 0
  f32.const 0
  f32.const 1
  f32.const 0
  call $src/as/math/Vector3/Vector3#constructor
  global.set $src/as/core/Object3D/vY
  i32.const 0
  f32.const 0
  f32.const 0
  f32.const 1
  call $src/as/math/Vector3/Vector3#constructor
  global.set $src/as/core/Object3D/vZ
 )
 (func $start:src/as/core/index
  call $start:src/as/core/Object3D
 )
 (func $~lib/array/Array<src/as/math/Vector3/Vector3>#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
  i32.const 1
  drop
  local.get $0
  local.get $2
  i32.const 1
  call $~lib/rt/itcms/__link
 )
 (func $start:src/as/math/Box3
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 2
  i32.const 20
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.const 0
  f32.const 0
  f32.const 0
  f32.const 0
  call $src/as/math/Vector3/Vector3#constructor
  call $~lib/array/Array<src/as/math/Vector3/Vector3>#__uset
  local.get $0
  i32.const 1
  i32.const 0
  f32.const 0
  f32.const 0
  f32.const 0
  call $src/as/math/Vector3/Vector3#constructor
  call $~lib/array/Array<src/as/math/Vector3/Vector3>#__uset
  local.get $0
  i32.const 2
  i32.const 0
  f32.const 0
  f32.const 0
  f32.const 0
  call $src/as/math/Vector3/Vector3#constructor
  call $~lib/array/Array<src/as/math/Vector3/Vector3>#__uset
  local.get $0
  i32.const 3
  i32.const 0
  f32.const 0
  f32.const 0
  f32.const 0
  call $src/as/math/Vector3/Vector3#constructor
  call $~lib/array/Array<src/as/math/Vector3/Vector3>#__uset
  local.get $0
  i32.const 4
  i32.const 0
  f32.const 0
  f32.const 0
  f32.const 0
  call $src/as/math/Vector3/Vector3#constructor
  call $~lib/array/Array<src/as/math/Vector3/Vector3>#__uset
  local.get $0
  i32.const 5
  i32.const 0
  f32.const 0
  f32.const 0
  f32.const 0
  call $src/as/math/Vector3/Vector3#constructor
  call $~lib/array/Array<src/as/math/Vector3/Vector3>#__uset
  local.get $0
  i32.const 6
  i32.const 0
  f32.const 0
  f32.const 0
  f32.const 0
  call $src/as/math/Vector3/Vector3#constructor
  call $~lib/array/Array<src/as/math/Vector3/Vector3>#__uset
  local.get $0
  i32.const 7
  i32.const 0
  f32.const 0
  f32.const 0
  f32.const 0
  call $src/as/math/Vector3/Vector3#constructor
  call $~lib/array/Array<src/as/math/Vector3/Vector3>#__uset
  local.get $0
  global.set $src/as/math/Box3/points
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/as/math/Box3/Box3#set:min (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/as/math/Box3/Box3#set:max (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/as/math/Box3/Box3#set:isBox3 (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8 offset=8
 )
 (func $start:src/as/math/Sphere
  i32.const 0
  i32.const 0
  i32.const 0
  global.set $~argumentsLength
  i32.const 0
  call $src/as/math/Box3/Box3#constructor@varargs
  global.set $src/as/math/Sphere/box
 )
 (func $src/as/math/Sphere/Sphere#set:center (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/as/math/Sphere/Sphere#set:radius (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=4
 )
 (func $start:src/as/math/Frustum
  call $start:src/as/math/Sphere
  i32.const 0
  i32.const 0
  i32.const 0
  global.set $~argumentsLength
  f32.const 0
  call $src/as/math/Sphere/Sphere#constructor@varargs
  global.set $src/as/math/Frustum/_sphere
  i32.const 0
  f32.const 0
  f32.const 0
  f32.const 0
  call $src/as/math/Vector3/Vector3#constructor
  global.set $src/as/math/Frustum/_vector
 )
 (func $start:src/as/math/index
  call $start:src/as/math/Box3
  call $start:src/as/math/Frustum
 )
 (func $start:src/as/index
  call $start:src/as/core/index
  call $start:src/as/math/index
 )
 (func $src/as/core/Layers/Layers#set:mask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $src/as/core/Layers/Layers#get:mask (param $0 i32) (result i32)
  local.get $0
  i32.load
 )
 (func $src/as/core/Layers/Layers#set (param $0 i32) (param $1 i32)
  local.get $0
  i32.const 1
  local.get $1
  i32.shl
  i32.const 0
  i32.or
  call $src/as/core/Layers/Layers#set:mask
 )
 (func $src/as/core/Layers/Layers#enable (param $0 i32) (param $1 i32)
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $1
  i32.shl
  i32.const 0
  i32.or
  i32.or
  call $src/as/core/Layers/Layers#set:mask
 )
 (func $src/as/core/Layers/Layers#toggle (param $0 i32) (param $1 i32)
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $1
  i32.shl
  i32.const 0
  i32.or
  i32.xor
  call $src/as/core/Layers/Layers#set:mask
 )
 (func $src/as/core/Layers/Layers#disable (param $0 i32) (param $1 i32)
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $1
  i32.shl
  i32.const 0
  i32.or
  i32.const -1
  i32.xor
  i32.and
  call $src/as/core/Layers/Layers#set:mask
 )
 (func $src/as/core/Layers/Layers#test (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load
  local.get $1
  i32.load
  i32.and
  i32.const 0
  i32.ne
 )
 (func $src/as/core/EventDispatcher/EventDispatcher#set:_listeners (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>#set:buckets (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>#set:bucketsMask (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/map/Map<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>#set:entries (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/map/Map<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>#set:entriesCapacity (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/map/Map<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>#set:entriesOffset (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $~lib/map/Map<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>#set:entriesCount (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=20
 )
 (func $src/as/math/Euler/Euler#get:order (param $0 i32) (result i32)
  local.get $0
  i32.load offset=16
 )
 (func $~lib/math/NativeMathf.sincos (param $0 f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  (local $8 f32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 f32)
  (local $13 i32)
  (local $14 i64)
  (local $15 i32)
  (local $16 i64)
  (local $17 i64)
  (local $18 i64)
  (local $19 i64)
  (local $20 i64)
  (local $21 i64)
  (local $22 i64)
  (local $23 i32)
  (local $24 i32)
  (local $25 f64)
  (local $26 f32)
  (local $27 f32)
  (local $28 f32)
  (local $29 f32)
  local.get $0
  i32.reinterpret_f32
  local.set $1
  local.get $1
  i32.const 31
  i32.shr_u
  local.set $2
  local.get $1
  i32.const 2147483647
  i32.and
  local.set $1
  local.get $1
  i32.const 1061752794
  i32.le_u
  if
   local.get $1
   i32.const 964689920
   i32.lt_u
   if
    local.get $0
    global.set $~lib/math/NativeMathf.sincos_sin
    f32.const 1
    global.set $~lib/math/NativeMathf.sincos_cos
    return
   end
   local.get $0
   f64.promote_f32
   local.set $3
   local.get $3
   local.get $3
   f64.mul
   local.set $4
   local.get $4
   local.get $4
   f64.mul
   local.set $5
   f64.const -1.9839334836096632e-04
   local.get $4
   f64.const 2.718311493989822e-06
   f64.mul
   f64.add
   local.set $6
   local.get $4
   local.get $3
   f64.mul
   local.set $7
   local.get $3
   local.get $7
   f64.const -0.16666666641626524
   local.get $4
   f64.const 0.008333329385889463
   f64.mul
   f64.add
   f64.mul
   f64.add
   local.get $7
   local.get $5
   f64.mul
   local.get $6
   f64.mul
   f64.add
   f32.demote_f64
   global.set $~lib/math/NativeMathf.sincos_sin
   local.get $0
   f64.promote_f32
   local.set $3
   local.get $3
   local.get $3
   f64.mul
   local.set $7
   local.get $7
   local.get $7
   f64.mul
   local.set $6
   f64.const -0.001388676377460993
   local.get $7
   f64.const 2.439044879627741e-05
   f64.mul
   f64.add
   local.set $5
   f32.const 1
   f64.promote_f32
   local.get $7
   f64.const -0.499999997251031
   f64.mul
   f64.add
   local.get $6
   f64.const 0.04166662332373906
   f64.mul
   f64.add
   local.get $6
   local.get $7
   f64.mul
   local.get $5
   f64.mul
   f64.add
   f32.demote_f64
   global.set $~lib/math/NativeMathf.sincos_cos
   return
  end
  i32.const 0
  i32.const 1
  i32.lt_s
  drop
  local.get $1
  i32.const 1081824209
  i32.le_u
  if
   local.get $1
   i32.const 1075235811
   i32.le_u
   if
    local.get $2
    if
     local.get $0
     f64.promote_f32
     f64.const 1.5707963267948966
     f64.add
     local.set $4
     local.get $4
     local.get $4
     f64.mul
     local.set $5
     local.get $5
     local.get $5
     f64.mul
     local.set $6
     f64.const -0.001388676377460993
     local.get $5
     f64.const 2.439044879627741e-05
     f64.mul
     f64.add
     local.set $7
     f32.const 1
     f64.promote_f32
     local.get $5
     f64.const -0.499999997251031
     f64.mul
     f64.add
     local.get $6
     f64.const 0.04166662332373906
     f64.mul
     f64.add
     local.get $6
     local.get $5
     f64.mul
     local.get $7
     f64.mul
     f64.add
     f32.demote_f64
     f32.neg
     global.set $~lib/math/NativeMathf.sincos_sin
     local.get $0
     f64.promote_f32
     f64.const 1.5707963267948966
     f64.add
     local.set $3
     local.get $3
     local.get $3
     f64.mul
     local.set $7
     local.get $7
     local.get $7
     f64.mul
     local.set $6
     f64.const -1.9839334836096632e-04
     local.get $7
     f64.const 2.718311493989822e-06
     f64.mul
     f64.add
     local.set $5
     local.get $7
     local.get $3
     f64.mul
     local.set $4
     local.get $3
     local.get $4
     f64.const -0.16666666641626524
     local.get $7
     f64.const 0.008333329385889463
     f64.mul
     f64.add
     f64.mul
     f64.add
     local.get $4
     local.get $6
     f64.mul
     local.get $5
     f64.mul
     f64.add
     f32.demote_f64
     global.set $~lib/math/NativeMathf.sincos_cos
    else
     f64.const 1.5707963267948966
     local.get $0
     f64.promote_f32
     f64.sub
     local.set $3
     local.get $3
     local.get $3
     f64.mul
     local.set $4
     local.get $4
     local.get $4
     f64.mul
     local.set $5
     f64.const -0.001388676377460993
     local.get $4
     f64.const 2.439044879627741e-05
     f64.mul
     f64.add
     local.set $6
     f32.const 1
     f64.promote_f32
     local.get $4
     f64.const -0.499999997251031
     f64.mul
     f64.add
     local.get $5
     f64.const 0.04166662332373906
     f64.mul
     f64.add
     local.get $5
     local.get $4
     f64.mul
     local.get $6
     f64.mul
     f64.add
     f32.demote_f64
     global.set $~lib/math/NativeMathf.sincos_sin
     f64.const 1.5707963267948966
     local.get $0
     f64.promote_f32
     f64.sub
     local.set $7
     local.get $7
     local.get $7
     f64.mul
     local.set $6
     local.get $6
     local.get $6
     f64.mul
     local.set $5
     f64.const -1.9839334836096632e-04
     local.get $6
     f64.const 2.718311493989822e-06
     f64.mul
     f64.add
     local.set $4
     local.get $6
     local.get $7
     f64.mul
     local.set $3
     local.get $7
     local.get $3
     f64.const -0.16666666641626524
     local.get $6
     f64.const 0.008333329385889463
     f64.mul
     f64.add
     f64.mul
     f64.add
     local.get $3
     local.get $5
     f64.mul
     local.get $4
     f64.mul
     f64.add
     f32.demote_f64
     global.set $~lib/math/NativeMathf.sincos_cos
    end
    return
   end
   local.get $2
   if (result f64)
    local.get $0
    f64.promote_f32
    f64.const 3.141592653589793
    f64.add
   else
    local.get $0
    f64.promote_f32
    f64.const 3.141592653589793
    f64.sub
   end
   local.set $7
   local.get $7
   local.get $7
   f64.mul
   local.set $3
   local.get $3
   local.get $3
   f64.mul
   local.set $4
   f64.const -1.9839334836096632e-04
   local.get $3
   f64.const 2.718311493989822e-06
   f64.mul
   f64.add
   local.set $5
   local.get $3
   local.get $7
   f64.mul
   local.set $6
   local.get $7
   local.get $6
   f64.const -0.16666666641626524
   local.get $3
   f64.const 0.008333329385889463
   f64.mul
   f64.add
   f64.mul
   f64.add
   local.get $6
   local.get $4
   f64.mul
   local.get $5
   f64.mul
   f64.add
   f32.demote_f64
   f32.neg
   global.set $~lib/math/NativeMathf.sincos_sin
   local.get $2
   if (result f64)
    local.get $0
    f64.promote_f32
    f64.const 3.141592653589793
    f64.add
   else
    local.get $0
    f64.promote_f32
    f64.const 3.141592653589793
    f64.sub
   end
   local.set $7
   local.get $7
   local.get $7
   f64.mul
   local.set $6
   local.get $6
   local.get $6
   f64.mul
   local.set $5
   f64.const -0.001388676377460993
   local.get $6
   f64.const 2.439044879627741e-05
   f64.mul
   f64.add
   local.set $4
   f32.const 1
   f64.promote_f32
   local.get $6
   f64.const -0.499999997251031
   f64.mul
   f64.add
   local.get $5
   f64.const 0.04166662332373906
   f64.mul
   f64.add
   local.get $5
   local.get $6
   f64.mul
   local.get $4
   f64.mul
   f64.add
   f32.demote_f64
   f32.neg
   global.set $~lib/math/NativeMathf.sincos_cos
   return
  end
  local.get $1
  i32.const 1088565717
  i32.le_u
  if
   local.get $1
   i32.const 1085271519
   i32.le_u
   if
    local.get $2
    if
     local.get $0
     f64.promote_f32
     f64.const 4.71238898038469
     f64.add
     local.set $3
     local.get $3
     local.get $3
     f64.mul
     local.set $4
     local.get $4
     local.get $4
     f64.mul
     local.set $5
     f64.const -0.001388676377460993
     local.get $4
     f64.const 2.439044879627741e-05
     f64.mul
     f64.add
     local.set $6
     f32.const 1
     f64.promote_f32
     local.get $4
     f64.const -0.499999997251031
     f64.mul
     f64.add
     local.get $5
     f64.const 0.04166662332373906
     f64.mul
     f64.add
     local.get $5
     local.get $4
     f64.mul
     local.get $6
     f64.mul
     f64.add
     f32.demote_f64
     global.set $~lib/math/NativeMathf.sincos_sin
     local.get $0
     f64.promote_f32
     f64.const 4.71238898038469
     f64.add
     local.set $7
     local.get $7
     local.get $7
     f64.mul
     local.set $6
     local.get $6
     local.get $6
     f64.mul
     local.set $5
     f64.const -1.9839334836096632e-04
     local.get $6
     f64.const 2.718311493989822e-06
     f64.mul
     f64.add
     local.set $4
     local.get $6
     local.get $7
     f64.mul
     local.set $3
     local.get $7
     local.get $3
     f64.const -0.16666666641626524
     local.get $6
     f64.const 0.008333329385889463
     f64.mul
     f64.add
     f64.mul
     f64.add
     local.get $3
     local.get $5
     f64.mul
     local.get $4
     f64.mul
     f64.add
     f32.demote_f64
     f32.neg
     global.set $~lib/math/NativeMathf.sincos_cos
    else
     local.get $0
     f64.promote_f32
     f64.const 4.71238898038469
     f64.sub
     local.set $7
     local.get $7
     local.get $7
     f64.mul
     local.set $3
     local.get $3
     local.get $3
     f64.mul
     local.set $4
     f64.const -0.001388676377460993
     local.get $3
     f64.const 2.439044879627741e-05
     f64.mul
     f64.add
     local.set $5
     f32.const 1
     f64.promote_f32
     local.get $3
     f64.const -0.499999997251031
     f64.mul
     f64.add
     local.get $4
     f64.const 0.04166662332373906
     f64.mul
     f64.add
     local.get $4
     local.get $3
     f64.mul
     local.get $5
     f64.mul
     f64.add
     f32.demote_f64
     f32.neg
     global.set $~lib/math/NativeMathf.sincos_sin
     local.get $0
     f64.promote_f32
     f64.const 4.71238898038469
     f64.sub
     local.set $6
     local.get $6
     local.get $6
     f64.mul
     local.set $5
     local.get $5
     local.get $5
     f64.mul
     local.set $4
     f64.const -1.9839334836096632e-04
     local.get $5
     f64.const 2.718311493989822e-06
     f64.mul
     f64.add
     local.set $3
     local.get $5
     local.get $6
     f64.mul
     local.set $7
     local.get $6
     local.get $7
     f64.const -0.16666666641626524
     local.get $5
     f64.const 0.008333329385889463
     f64.mul
     f64.add
     f64.mul
     f64.add
     local.get $7
     local.get $4
     f64.mul
     local.get $3
     f64.mul
     f64.add
     f32.demote_f64
     global.set $~lib/math/NativeMathf.sincos_cos
    end
    return
   end
   local.get $2
   if (result f64)
    local.get $0
    f64.promote_f32
    f64.const 6.283185307179586
    f64.add
   else
    local.get $0
    f64.promote_f32
    f64.const 6.283185307179586
    f64.sub
   end
   local.set $6
   local.get $6
   local.get $6
   f64.mul
   local.set $7
   local.get $7
   local.get $7
   f64.mul
   local.set $3
   f64.const -1.9839334836096632e-04
   local.get $7
   f64.const 2.718311493989822e-06
   f64.mul
   f64.add
   local.set $4
   local.get $7
   local.get $6
   f64.mul
   local.set $5
   local.get $6
   local.get $5
   f64.const -0.16666666641626524
   local.get $7
   f64.const 0.008333329385889463
   f64.mul
   f64.add
   f64.mul
   f64.add
   local.get $5
   local.get $3
   f64.mul
   local.get $4
   f64.mul
   f64.add
   f32.demote_f64
   global.set $~lib/math/NativeMathf.sincos_sin
   local.get $2
   if (result f64)
    local.get $0
    f64.promote_f32
    f64.const 6.283185307179586
    f64.add
   else
    local.get $0
    f64.promote_f32
    f64.const 6.283185307179586
    f64.sub
   end
   local.set $6
   local.get $6
   local.get $6
   f64.mul
   local.set $5
   local.get $5
   local.get $5
   f64.mul
   local.set $4
   f64.const -0.001388676377460993
   local.get $5
   f64.const 2.439044879627741e-05
   f64.mul
   f64.add
   local.set $3
   f32.const 1
   f64.promote_f32
   local.get $5
   f64.const -0.499999997251031
   f64.mul
   f64.add
   local.get $4
   f64.const 0.04166662332373906
   f64.mul
   f64.add
   local.get $4
   local.get $5
   f64.mul
   local.get $3
   f64.mul
   f64.add
   f32.demote_f64
   global.set $~lib/math/NativeMathf.sincos_cos
   return
  end
  local.get $1
  i32.const 2139095040
  i32.ge_u
  if
   local.get $0
   local.get $0
   f32.sub
   local.set $8
   local.get $8
   global.set $~lib/math/NativeMathf.sincos_sin
   local.get $8
   global.set $~lib/math/NativeMathf.sincos_cos
   return
  end
  block $~lib/math/rempio2f|inlined.0 (result i32)
   local.get $0
   local.set $8
   local.get $1
   local.set $10
   local.get $2
   local.set $9
   local.get $10
   i32.const 1305022427
   i32.lt_u
   if
    local.get $8
    f64.promote_f32
    f64.const 0.6366197723675814
    f64.mul
    f64.nearest
    local.set $3
    local.get $8
    f64.promote_f32
    local.get $3
    f64.const 1.5707963109016418
    f64.mul
    f64.sub
    local.get $3
    f64.const 1.5893254773528196e-08
    f64.mul
    f64.sub
    global.set $~lib/math/rempio2f_y
    local.get $3
    i32.trunc_f64_s
    br $~lib/math/rempio2f|inlined.0
   end
   local.get $8
   local.set $12
   local.get $10
   local.set $11
   local.get $11
   i32.const 23
   i32.shr_s
   i32.const 152
   i32.sub
   local.set $13
   local.get $13
   i32.const 63
   i32.and
   i64.extend_i32_s
   local.set $14
   i32.const 1024
   local.get $13
   i32.const 6
   i32.shr_s
   i32.const 3
   i32.shl
   i32.add
   local.set $15
   local.get $15
   i64.load
   local.set $16
   local.get $15
   i64.load offset=8
   local.set $17
   local.get $14
   i64.const 32
   i64.gt_u
   if
    local.get $15
    i64.load offset=16
    local.set $19
    local.get $19
    i64.const 96
    local.get $14
    i64.sub
    i64.shr_u
    local.set $18
    local.get $18
    local.get $17
    local.get $14
    i64.const 32
    i64.sub
    i64.shl
    i64.or
    local.set $18
   else
    local.get $17
    i64.const 32
    local.get $14
    i64.sub
    i64.shr_u
    local.set $18
   end
   local.get $17
   i64.const 64
   local.get $14
   i64.sub
   i64.shr_u
   local.get $16
   local.get $14
   i64.shl
   i64.or
   local.set $19
   local.get $11
   i32.const 8388607
   i32.and
   i32.const 8388608
   i32.or
   i64.extend_i32_s
   local.set $20
   local.get $20
   local.get $19
   i64.mul
   local.get $20
   local.get $18
   i64.mul
   i64.const 32
   i64.shr_u
   i64.add
   local.set $21
   local.get $21
   i64.const 2
   i64.shl
   local.set $22
   local.get $21
   i64.const 62
   i64.shr_u
   local.get $22
   i64.const 63
   i64.shr_u
   i64.add
   i32.wrap_i64
   local.set $23
   f64.const 8.515303950216386e-20
   local.get $12
   f64.promote_f32
   f64.copysign
   local.get $22
   f64.convert_i64_s
   f64.mul
   global.set $~lib/math/rempio2f_y
   local.get $23
   local.set $23
   i32.const 0
   local.get $23
   i32.sub
   local.get $23
   local.get $9
   select
  end
  local.set $24
  global.get $~lib/math/rempio2f_y
  local.set $25
  local.get $25
  local.set $7
  local.get $7
  local.get $7
  f64.mul
  local.set $3
  local.get $3
  local.get $3
  f64.mul
  local.set $4
  f64.const -1.9839334836096632e-04
  local.get $3
  f64.const 2.718311493989822e-06
  f64.mul
  f64.add
  local.set $5
  local.get $3
  local.get $7
  f64.mul
  local.set $6
  local.get $7
  local.get $6
  f64.const -0.16666666641626524
  local.get $3
  f64.const 0.008333329385889463
  f64.mul
  f64.add
  f64.mul
  f64.add
  local.get $6
  local.get $4
  f64.mul
  local.get $5
  f64.mul
  f64.add
  f32.demote_f64
  local.set $26
  local.get $25
  local.set $7
  local.get $7
  local.get $7
  f64.mul
  local.set $6
  local.get $6
  local.get $6
  f64.mul
  local.set $5
  f64.const -0.001388676377460993
  local.get $6
  f64.const 2.439044879627741e-05
  f64.mul
  f64.add
  local.set $4
  f32.const 1
  f64.promote_f32
  local.get $6
  f64.const -0.499999997251031
  f64.mul
  f64.add
  local.get $5
  f64.const 0.04166662332373906
  f64.mul
  f64.add
  local.get $5
  local.get $6
  f64.mul
  local.get $4
  f64.mul
  f64.add
  f32.demote_f64
  local.set $27
  local.get $26
  local.set $28
  local.get $27
  local.set $29
  local.get $24
  i32.const 1
  i32.and
  if
   local.get $27
   local.set $28
   local.get $26
   f32.neg
   local.set $29
  end
  local.get $24
  i32.const 2
  i32.and
  if
   local.get $28
   f32.neg
   local.set $28
   local.get $29
   f32.neg
   local.set $29
  end
  local.get $28
  global.set $~lib/math/NativeMathf.sincos_sin
  local.get $29
  global.set $~lib/math/NativeMathf.sincos_cos
 )
 (func $src/as/math/Quaternion/Quaternion#setFromEuler (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 f32)
  (local $4 f32)
  (local $5 f32)
  (local $6 i32)
  (local $7 f32)
  (local $8 f32)
  (local $9 f32)
  (local $10 f32)
  (local $11 f32)
  (local $12 f32)
  local.get $1
  f32.load offset=4
  local.set $3
  local.get $1
  f32.load offset=8
  local.set $4
  local.get $1
  f32.load offset=12
  local.set $5
  local.get $1
  call $src/as/math/Euler/Euler#get:order
  local.set $6
  local.get $3
  f32.const 2
  f32.div
  call $~lib/math/NativeMathf.sincos
  global.get $~lib/math/NativeMathf.sincos_cos
  local.set $7
  global.get $~lib/math/NativeMathf.sincos_sin
  local.set $8
  local.get $4
  f32.const 2
  f32.div
  call $~lib/math/NativeMathf.sincos
  global.get $~lib/math/NativeMathf.sincos_cos
  local.set $9
  global.get $~lib/math/NativeMathf.sincos_sin
  local.set $10
  local.get $5
  f32.const 2
  f32.div
  call $~lib/math/NativeMathf.sincos
  global.get $~lib/math/NativeMathf.sincos_cos
  local.set $11
  global.get $~lib/math/NativeMathf.sincos_sin
  local.set $12
  local.get $6
  global.get $src/as/math/Euler/EulerRotationOrder.XYZ
  i32.eq
  if
   local.get $0
   local.get $8
   local.get $9
   f32.mul
   local.get $11
   f32.mul
   local.get $7
   local.get $10
   f32.mul
   local.get $12
   f32.mul
   f32.add
   call $src/as/math/Quaternion/Quaternion#set:_x
   local.get $0
   local.get $7
   local.get $10
   f32.mul
   local.get $11
   f32.mul
   local.get $8
   local.get $9
   f32.mul
   local.get $12
   f32.mul
   f32.sub
   call $src/as/math/Quaternion/Quaternion#set:_y
   local.get $0
   local.get $7
   local.get $9
   f32.mul
   local.get $12
   f32.mul
   local.get $8
   local.get $10
   f32.mul
   local.get $11
   f32.mul
   f32.add
   call $src/as/math/Quaternion/Quaternion#set:_z
   local.get $0
   local.get $7
   local.get $9
   f32.mul
   local.get $11
   f32.mul
   local.get $8
   local.get $10
   f32.mul
   local.get $12
   f32.mul
   f32.sub
   call $src/as/math/Quaternion/Quaternion#set:_w
  else
   local.get $6
   global.get $src/as/math/Euler/EulerRotationOrder.YXZ
   i32.eq
   if
    local.get $0
    local.get $8
    local.get $9
    f32.mul
    local.get $11
    f32.mul
    local.get $7
    local.get $10
    f32.mul
    local.get $12
    f32.mul
    f32.add
    call $src/as/math/Quaternion/Quaternion#set:_x
    local.get $0
    local.get $7
    local.get $10
    f32.mul
    local.get $11
    f32.mul
    local.get $8
    local.get $9
    f32.mul
    local.get $12
    f32.mul
    f32.sub
    call $src/as/math/Quaternion/Quaternion#set:_y
    local.get $0
    local.get $7
    local.get $9
    f32.mul
    local.get $12
    f32.mul
    local.get $8
    local.get $10
    f32.mul
    local.get $11
    f32.mul
    f32.sub
    call $src/as/math/Quaternion/Quaternion#set:_z
    local.get $0
    local.get $7
    local.get $9
    f32.mul
    local.get $11
    f32.mul
    local.get $8
    local.get $10
    f32.mul
    local.get $12
    f32.mul
    f32.add
    call $src/as/math/Quaternion/Quaternion#set:_w
   else
    local.get $6
    global.get $src/as/math/Euler/EulerRotationOrder.ZXY
    i32.eq
    if
     local.get $0
     local.get $8
     local.get $9
     f32.mul
     local.get $11
     f32.mul
     local.get $7
     local.get $10
     f32.mul
     local.get $12
     f32.mul
     f32.sub
     call $src/as/math/Quaternion/Quaternion#set:_x
     local.get $0
     local.get $7
     local.get $10
     f32.mul
     local.get $11
     f32.mul
     local.get $8
     local.get $9
     f32.mul
     local.get $12
     f32.mul
     f32.add
     call $src/as/math/Quaternion/Quaternion#set:_y
     local.get $0
     local.get $7
     local.get $9
     f32.mul
     local.get $12
     f32.mul
     local.get $8
     local.get $10
     f32.mul
     local.get $11
     f32.mul
     f32.add
     call $src/as/math/Quaternion/Quaternion#set:_z
     local.get $0
     local.get $7
     local.get $9
     f32.mul
     local.get $11
     f32.mul
     local.get $8
     local.get $10
     f32.mul
     local.get $12
     f32.mul
     f32.sub
     call $src/as/math/Quaternion/Quaternion#set:_w
    else
     local.get $6
     global.get $src/as/math/Euler/EulerRotationOrder.ZYX
     i32.eq
     if
      local.get $0
      local.get $8
      local.get $9
      f32.mul
      local.get $11
      f32.mul
      local.get $7
      local.get $10
      f32.mul
      local.get $12
      f32.mul
      f32.sub
      call $src/as/math/Quaternion/Quaternion#set:_x
      local.get $0
      local.get $7
      local.get $10
      f32.mul
      local.get $11
      f32.mul
      local.get $8
      local.get $9
      f32.mul
      local.get $12
      f32.mul
      f32.add
      call $src/as/math/Quaternion/Quaternion#set:_y
      local.get $0
      local.get $7
      local.get $9
      f32.mul
      local.get $12
      f32.mul
      local.get $8
      local.get $10
      f32.mul
      local.get $11
      f32.mul
      f32.sub
      call $src/as/math/Quaternion/Quaternion#set:_z
      local.get $0
      local.get $7
      local.get $9
      f32.mul
      local.get $11
      f32.mul
      local.get $8
      local.get $10
      f32.mul
      local.get $12
      f32.mul
      f32.add
      call $src/as/math/Quaternion/Quaternion#set:_w
     else
      local.get $6
      global.get $src/as/math/Euler/EulerRotationOrder.YZX
      i32.eq
      if
       local.get $0
       local.get $8
       local.get $9
       f32.mul
       local.get $11
       f32.mul
       local.get $7
       local.get $10
       f32.mul
       local.get $12
       f32.mul
       f32.add
       call $src/as/math/Quaternion/Quaternion#set:_x
       local.get $0
       local.get $7
       local.get $10
       f32.mul
       local.get $11
       f32.mul
       local.get $8
       local.get $9
       f32.mul
       local.get $12
       f32.mul
       f32.add
       call $src/as/math/Quaternion/Quaternion#set:_y
       local.get $0
       local.get $7
       local.get $9
       f32.mul
       local.get $12
       f32.mul
       local.get $8
       local.get $10
       f32.mul
       local.get $11
       f32.mul
       f32.sub
       call $src/as/math/Quaternion/Quaternion#set:_z
       local.get $0
       local.get $7
       local.get $9
       f32.mul
       local.get $11
       f32.mul
       local.get $8
       local.get $10
       f32.mul
       local.get $12
       f32.mul
       f32.sub
       call $src/as/math/Quaternion/Quaternion#set:_w
      else
       local.get $6
       global.get $src/as/math/Euler/EulerRotationOrder.XZY
       i32.eq
       if
        local.get $0
        local.get $8
        local.get $9
        f32.mul
        local.get $11
        f32.mul
        local.get $7
        local.get $10
        f32.mul
        local.get $12
        f32.mul
        f32.sub
        call $src/as/math/Quaternion/Quaternion#set:_x
        local.get $0
        local.get $7
        local.get $10
        f32.mul
        local.get $11
        f32.mul
        local.get $8
        local.get $9
        f32.mul
        local.get $12
        f32.mul
        f32.sub
        call $src/as/math/Quaternion/Quaternion#set:_y
        local.get $0
        local.get $7
        local.get $9
        f32.mul
        local.get $12
        f32.mul
        local.get $8
        local.get $10
        f32.mul
        local.get $11
        f32.mul
        f32.add
        call $src/as/math/Quaternion/Quaternion#set:_z
        local.get $0
        local.get $7
        local.get $9
        f32.mul
        local.get $11
        f32.mul
        local.get $8
        local.get $10
        f32.mul
        local.get $12
        f32.mul
        f32.add
        call $src/as/math/Quaternion/Quaternion#set:_w
       end
      end
     end
    end
   end
  end
  local.get $2
  if
   i32.const 0
   global.set $~argumentsLength
   local.get $0
   i32.load offset=20
   i32.load
   call_indirect $0 (type $none_=>_none)
  end
  local.get $0
 )
 (func $src/as/math/Euler/Euler#set:onChangeCallback (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=20
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/as/math/Euler/Euler#onChange (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $src/as/math/Euler/Euler#set:onChangeCallback
  local.get $0
 )
 (func $src/as/core/Object3D/Object3D#set:id (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $src/as/core/Object3D/Object3D#set:name (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/as/core/Object3D/Object3D#set:type (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/as/core/Object3D/Object3D#set:parent (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/as/core/Object3D/Object3D#set:children (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=20
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/as/core/Object3D/Object3D#set:position (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=24
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/as/core/Object3D/Object3D#set:rotation (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=28
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/as/math/Euler/Euler#set:_x (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=4
 )
 (func $src/as/math/Euler/Euler#set:_y (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=8
 )
 (func $src/as/math/Euler/Euler#set:_z (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=12
 )
 (func $src/as/math/Euler/Euler#set:_order (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=16
 )
 (func $src/as/math/Euler/Euler#set:isEuler (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8
 )
 (func $src/as/math/Euler/Euler#constructor~anonymous|0
  nop
 )
 (func $src/as/core/Object3D/Object3D#set:quaternion (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=32
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/as/core/Object3D/Object3D#set:scale (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=36
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/as/core/Object3D/Object3D#set:modelViewMatrix (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=40
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/as/core/Object3D/Object3D#set:matrix (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=44
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/as/core/Object3D/Object3D#set:matrixWorld (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=48
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/as/core/Object3D/Object3D#set:matrixAutoUpdate (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8 offset=52
 )
 (func $src/as/core/Object3D/Object3D#set:matrixWorldNeedsUpdate (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8 offset=53
 )
 (func $src/as/core/Object3D/Object3D#set:layers (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=56
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/as/core/Object3D/Object3D#set:visible (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8 offset=60
 )
 (func $src/as/core/Object3D/Object3D#set:castShadow (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8 offset=61
 )
 (func $src/as/core/Object3D/Object3D#set:receiveShadow (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8 offset=62
 )
 (func $src/as/core/Object3D/Object3D#set:frustumCulled (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8 offset=63
 )
 (func $src/as/core/Object3D/Object3D#set:renderOrder (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=64
 )
 (func $src/as/core/Object3D/Object3D#set:isObject3D (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8 offset=68
 )
 (func $src/as/core/Object3D/Object3D#set:isCamera (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8 offset=69
 )
 (func $src/as/core/Object3D/Object3D#set:isLight (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8 offset=70
 )
 (func $src/as/core/Object3D/Object3D#set:onBeforeRender (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=72
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/as/core/Object3D/Object3D#constructor~anonymous|1
  nop
 )
 (func $src/as/core/Object3D/Object3D#set:onAfterRender (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=76
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/as/core/Object3D/Object3D#constructor~anonymous|2
  nop
 )
 (func $src/as/core/EventDispatcher/EventDispatcher#get:_listeners (param $0 i32) (result i32)
  local.get $0
  i32.load
 )
 (func $~lib/util/hash/HASH<~lib/string/String> (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  i32.const 1
  drop
  block $~lib/util/hash/hashStr|inlined.0 (result i32)
   local.get $0
   local.set $1
   local.get $1
   i32.const 0
   i32.eq
   if
    i32.const 0
    br $~lib/util/hash/hashStr|inlined.0
   end
   local.get $1
   call $~lib/string/String#get:length
   i32.const 1
   i32.shl
   local.set $2
   local.get $2
   local.set $3
   local.get $1
   local.set $4
   local.get $3
   i32.const 16
   i32.ge_u
   if
    i32.const 0
    i32.const -1640531535
    i32.add
    i32.const -2048144777
    i32.add
    local.set $5
    i32.const 0
    i32.const -2048144777
    i32.add
    local.set $6
    i32.const 0
    local.set $7
    i32.const 0
    i32.const -1640531535
    i32.sub
    local.set $8
    local.get $3
    local.get $4
    i32.add
    i32.const 16
    i32.sub
    local.set $9
    loop $while-continue|0
     local.get $4
     local.get $9
     i32.le_u
     local.set $10
     local.get $10
     if
      local.get $5
      local.set $12
      local.get $4
      i32.load
      local.set $11
      local.get $12
      local.get $11
      i32.const -2048144777
      i32.mul
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $5
      local.get $6
      local.set $12
      local.get $4
      i32.load offset=4
      local.set $11
      local.get $12
      local.get $11
      i32.const -2048144777
      i32.mul
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $6
      local.get $7
      local.set $12
      local.get $4
      i32.load offset=8
      local.set $11
      local.get $12
      local.get $11
      i32.const -2048144777
      i32.mul
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $7
      local.get $8
      local.set $12
      local.get $4
      i32.load offset=12
      local.set $11
      local.get $12
      local.get $11
      i32.const -2048144777
      i32.mul
      i32.add
      i32.const 13
      i32.rotl
      i32.const -1640531535
      i32.mul
      local.set $8
      local.get $4
      i32.const 16
      i32.add
      local.set $4
      br $while-continue|0
     end
    end
    local.get $2
    local.get $5
    i32.const 1
    i32.rotl
    local.get $6
    i32.const 7
    i32.rotl
    i32.add
    local.get $7
    i32.const 12
    i32.rotl
    i32.add
    local.get $8
    i32.const 18
    i32.rotl
    i32.add
    i32.add
    local.set $2
   else
    local.get $2
    i32.const 0
    i32.const 374761393
    i32.add
    i32.add
    local.set $2
   end
   local.get $1
   local.get $3
   i32.add
   i32.const 4
   i32.sub
   local.set $9
   loop $while-continue|1
    local.get $4
    local.get $9
    i32.le_u
    local.set $8
    local.get $8
    if
     local.get $2
     local.get $4
     i32.load
     i32.const -1028477379
     i32.mul
     i32.add
     local.set $2
     local.get $2
     i32.const 17
     i32.rotl
     i32.const 668265263
     i32.mul
     local.set $2
     local.get $4
     i32.const 4
     i32.add
     local.set $4
     br $while-continue|1
    end
   end
   local.get $1
   local.get $3
   i32.add
   local.set $9
   loop $while-continue|2
    local.get $4
    local.get $9
    i32.lt_u
    local.set $8
    local.get $8
    if
     local.get $2
     local.get $4
     i32.load8_u
     i32.const 374761393
     i32.mul
     i32.add
     local.set $2
     local.get $2
     i32.const 11
     i32.rotl
     i32.const -1640531535
     i32.mul
     local.set $2
     local.get $4
     i32.const 1
     i32.add
     local.set $4
     br $while-continue|2
    end
   end
   local.get $2
   local.get $2
   i32.const 15
   i32.shr_u
   i32.xor
   local.set $2
   local.get $2
   i32.const -2048144777
   i32.mul
   local.set $2
   local.get $2
   local.get $2
   i32.const 13
   i32.shr_u
   i32.xor
   local.set $2
   local.get $2
   i32.const -1028477379
   i32.mul
   local.set $2
   local.get $2
   local.get $2
   i32.const 16
   i32.shr_u
   i32.xor
   local.set $2
   local.get $2
  end
  return
 )
 (func $~lib/util/string/compareImpl (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $5
  local.get $2
  local.get $3
  i32.const 1
  i32.shl
  i32.add
  local.set $6
  i32.const 0
  i32.const 2
  i32.lt_s
  drop
  local.get $4
  i32.const 4
  i32.ge_u
  if (result i32)
   local.get $5
   i32.const 7
   i32.and
   local.get $6
   i32.const 7
   i32.and
   i32.or
   i32.eqz
  else
   i32.const 0
  end
  if
   block $do-break|0
    loop $do-loop|0
     local.get $5
     i64.load
     local.get $6
     i64.load
     i64.ne
     if
      br $do-break|0
     end
     local.get $5
     i32.const 8
     i32.add
     local.set $5
     local.get $6
     i32.const 8
     i32.add
     local.set $6
     local.get $4
     i32.const 4
     i32.sub
     local.set $4
     local.get $4
     i32.const 4
     i32.ge_u
     br_if $do-loop|0
    end
   end
  end
  loop $while-continue|1
   local.get $4
   local.tee $7
   i32.const 1
   i32.sub
   local.set $4
   local.get $7
   local.set $7
   local.get $7
   if
    local.get $5
    i32.load16_u
    local.set $8
    local.get $6
    i32.load16_u
    local.set $9
    local.get $8
    local.get $9
    i32.ne
    if
     local.get $8
     local.get $9
     i32.sub
     return
    end
    local.get $5
    i32.const 2
    i32.add
    local.set $5
    local.get $6
    i32.const 2
    i32.add
    local.set $6
    br $while-continue|1
   end
  end
  i32.const 0
 )
 (func $~lib/string/String.__eq (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  i32.eq
  if
   i32.const 1
   return
  end
  local.get $0
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.const 0
   i32.eq
  end
  if
   i32.const 0
   return
  end
  local.get $0
  call $~lib/string/String#get:length
  local.set $2
  local.get $2
  local.get $1
  call $~lib/string/String#get:length
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.const 0
  local.get $1
  i32.const 0
  local.get $2
  call $~lib/util/string/compareImpl
  i32.eqz
 )
 (func $~lib/map/Map<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>#has (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/HASH<~lib/string/String>
  call $~lib/map/Map<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/array/Array<src/as/core/EventDispatcher/Listener>#set:buffer (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<src/as/core/EventDispatcher/Listener>#set:dataStart (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/array/Array<src/as/core/EventDispatcher/Listener>#set:byteLength (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/array/Array<src/as/core/EventDispatcher/Listener>#set:length_ (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/map/MapEntry<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>#set:value (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/map/MapEntry<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>#set:key (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
 )
 (func $~lib/map/MapEntry<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>#set:taggedNext (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=8
 )
 (func $~lib/map/Map<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>#rehash (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $2
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $3
  i32.store
  local.get $2
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  local.get $4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.tee $5
  i32.store offset=4
  local.get $0
  i32.load offset=8
  local.set $6
  local.get $6
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $7
  local.get $5
  local.set $8
  loop $while-continue|0
   local.get $6
   local.get $7
   i32.ne
   local.set $9
   local.get $9
   if
    local.get $6
    local.set $10
    local.get $10
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     local.get $8
     local.set $11
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.load
     local.tee $12
     i32.store offset=8
     local.get $11
     local.get $12
     call $~lib/map/MapEntry<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>#set:key
     local.get $11
     local.get $10
     i32.load offset=4
     call $~lib/map/MapEntry<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>#set:value
     local.get $12
     call $~lib/util/hash/HASH<~lib/string/String>
     local.get $1
     i32.and
     local.set $13
     local.get $3
     local.get $13
     i32.const 4
     i32.mul
     i32.add
     local.set $14
     local.get $11
     local.get $14
     i32.load
     call $~lib/map/MapEntry<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>#set:taggedNext
     local.get $14
     local.get $8
     i32.store
     local.get $8
     i32.const 12
     i32.add
     local.set $8
    end
    local.get $6
    i32.const 12
    i32.add
    local.set $6
    br $while-continue|0
   end
  end
  local.get $0
  local.get $3
  call $~lib/map/Map<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>#set:buckets
  local.get $0
  local.get $1
  call $~lib/map/Map<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>#set:bucketsMask
  local.get $0
  local.get $5
  call $~lib/map/Map<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>#set:entries
  local.get $0
  local.get $4
  call $~lib/map/Map<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>#set:entriesCapacity
  local.get $0
  local.get $0
  i32.load offset=20
  call $~lib/map/Map<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>#set:entriesOffset
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/map/Map<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>#get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  local.get $1
  call $~lib/util/hash/HASH<~lib/string/String>
  call $~lib/map/Map<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>#find
  local.set $2
  local.get $2
  i32.eqz
  if
   i32.const 1376
   i32.const 1440
   i32.const 105
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.load offset=4
 )
 (func $~lib/array/Array<src/as/core/EventDispatcher/Listener>#indexOf (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=12
  local.set $3
  local.get $3
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $2
   local.get $3
   i32.ge_s
  end
  if
   i32.const -1
   return
  end
  local.get $2
  i32.const 0
  i32.lt_s
  if
   local.get $3
   local.get $2
   i32.add
   local.tee $4
   i32.const 0
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
   local.set $2
  end
  local.get $0
  i32.load offset=4
  local.set $6
  loop $while-continue|0
   local.get $2
   local.get $3
   i32.lt_s
   local.set $4
   local.get $4
   if
    local.get $6
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $1
    i32.eq
    if
     local.get $2
     return
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  i32.const -1
 )
 (func $~lib/rt/itcms/__renew (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.const 20
  i32.sub
  local.set $2
  local.get $1
  local.get $2
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.sub
  i32.le_u
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/Object#set:rtSize
   local.get $0
   return
  end
  local.get $1
  local.get $2
  i32.load offset=12
  call $~lib/rt/itcms/__new
  local.set $3
  local.get $3
  local.get $0
  local.get $1
  local.tee $4
  local.get $2
  i32.load offset=16
  local.tee $5
  local.get $4
  local.get $5
  i32.lt_u
  select
  call $~lib/memory/memory.copy
  local.get $3
 )
 (func $~lib/array/ensureCapacity (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.load offset=8
  local.set $4
  local.get $1
  local.get $4
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   local.get $1
   i32.const 1073741820
   local.get $2
   i32.shr_u
   i32.gt_u
   if
    i32.const 784
    i32.const 1328
    i32.const 19
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load
   local.set $5
   local.get $1
   local.tee $6
   i32.const 8
   local.tee $7
   local.get $6
   local.get $7
   i32.gt_u
   select
   local.get $2
   i32.shl
   local.set $6
   local.get $3
   if
    local.get $4
    i32.const 1
    i32.shl
    local.tee $7
    i32.const 1073741820
    local.tee $8
    local.get $7
    local.get $8
    i32.lt_u
    select
    local.tee $8
    local.get $6
    local.tee $7
    local.get $8
    local.get $7
    i32.gt_u
    select
    local.set $6
   end
   local.get $5
   local.get $6
   call $~lib/rt/itcms/__renew
   local.set $8
   i32.const 2
   global.get $~lib/shared/runtime/Runtime.Incremental
   i32.ne
   drop
   local.get $8
   local.get $5
   i32.ne
   if
    local.get $0
    local.get $8
    i32.store
    local.get $0
    local.get $8
    i32.store offset=4
    local.get $0
    local.get $8
    i32.const 0
    call $~lib/rt/itcms/__link
   end
   local.get $0
   local.get $6
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<src/as/core/EventDispatcher/Listener>#push (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.const 2
  i32.const 1
  call $~lib/array/ensureCapacity
  i32.const 1
  drop
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 1
  call $~lib/rt/itcms/__link
  local.get $0
  local.get $3
  call $~lib/array/Array<src/as/core/EventDispatcher/Listener>#set:length_
  local.get $3
 )
 (func $~lib/array/Array<src/as/core/EventDispatcher/Listener>#includes (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  i32.const 0
  drop
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<src/as/core/EventDispatcher/Listener>#indexOf
  i32.const 0
  i32.ge_s
  return
 )
 (func $src/as/core/EventDispatcher/EventDispatcher#removeEventListener (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  local.tee $3
  i32.store
  local.get $3
  local.get $1
  call $~lib/map/Map<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>#has
  if
   global.get $~lib/memory/__stack_pointer
   local.get $3
   local.get $1
   call $~lib/map/Map<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>#get
   local.tee $4
   i32.store offset=4
   local.get $4
   local.get $2
   i32.const 0
   call $~lib/array/Array<src/as/core/EventDispatcher/Listener>#indexOf
   local.set $5
   local.get $5
   i32.const -1
   i32.ne
   if
    local.get $4
    local.get $5
    i32.const 1
    call $~lib/array/Array<src/as/core/EventDispatcher/Listener>#splice
    drop
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/as/core/Event/Event#set:target (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<src/as/core/EventDispatcher/Listener>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $src/as/core/EventDispatcher/Listener#onEvent (param $0 i32) (param $1 i32)
  nop
 )
 (func $src/as/core/Object3D/Object3D#get:id (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
 )
 (func $src/as/core/Object3D/Object3D#get:name (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
 )
 (func $src/as/core/Object3D/Object3D#get:type (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $src/as/core/Object3D/Object3D#get:parent (param $0 i32) (result i32)
  local.get $0
  i32.load offset=16
 )
 (func $src/as/core/Object3D/Object3D#get:children (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $src/as/core/Object3D/Object3D#get:position (param $0 i32) (result i32)
  local.get $0
  i32.load offset=24
 )
 (func $src/as/core/Object3D/Object3D#get:rotation (param $0 i32) (result i32)
  local.get $0
  i32.load offset=28
 )
 (func $src/as/core/Object3D/Object3D#get:quaternion (param $0 i32) (result i32)
  local.get $0
  i32.load offset=32
 )
 (func $src/as/core/Object3D/Object3D#get:scale (param $0 i32) (result i32)
  local.get $0
  i32.load offset=36
 )
 (func $src/as/core/Object3D/Object3D#get:modelViewMatrix (param $0 i32) (result i32)
  local.get $0
  i32.load offset=40
 )
 (func $src/as/core/Object3D/Object3D#get:matrix (param $0 i32) (result i32)
  local.get $0
  i32.load offset=44
 )
 (func $src/as/core/Object3D/Object3D#get:matrixWorld (param $0 i32) (result i32)
  local.get $0
  i32.load offset=48
 )
 (func $src/as/core/Object3D/Object3D#get:matrixAutoUpdate (param $0 i32) (result i32)
  local.get $0
  i32.load8_u offset=52
 )
 (func $src/as/core/Object3D/Object3D#get:matrixWorldNeedsUpdate (param $0 i32) (result i32)
  local.get $0
  i32.load8_u offset=53
 )
 (func $src/as/core/Object3D/Object3D#get:layers (param $0 i32) (result i32)
  local.get $0
  i32.load offset=56
 )
 (func $src/as/core/Object3D/Object3D#get:visible (param $0 i32) (result i32)
  local.get $0
  i32.load8_u offset=60
 )
 (func $src/as/core/Object3D/Object3D#get:castShadow (param $0 i32) (result i32)
  local.get $0
  i32.load8_u offset=61
 )
 (func $src/as/core/Object3D/Object3D#get:receiveShadow (param $0 i32) (result i32)
  local.get $0
  i32.load8_u offset=62
 )
 (func $src/as/core/Object3D/Object3D#get:frustumCulled (param $0 i32) (result i32)
  local.get $0
  i32.load8_u offset=63
 )
 (func $src/as/core/Object3D/Object3D#get:renderOrder (param $0 i32) (result f32)
  local.get $0
  f32.load offset=64
 )
 (func $src/as/core/Object3D/Object3D#get:isObject3D (param $0 i32) (result i32)
  local.get $0
  i32.load8_u offset=68
 )
 (func $src/as/core/Object3D/Object3D#get:isCamera (param $0 i32) (result i32)
  local.get $0
  i32.load8_u offset=69
 )
 (func $src/as/core/Object3D/Object3D#get:isLight (param $0 i32) (result i32)
  local.get $0
  i32.load8_u offset=70
 )
 (func $src/as/core/Object3D/Object3D#get:onBeforeRender (param $0 i32) (result i32)
  local.get $0
  i32.load offset=72
 )
 (func $src/as/core/Object3D/Object3D#get:onAfterRender (param $0 i32) (result i32)
  local.get $0
  i32.load offset=76
 )
 (func $~lib/array/Array<src/as/core/Object3D/Object3D>#indexOf (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=12
  local.set $3
  local.get $3
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $2
   local.get $3
   i32.ge_s
  end
  if
   i32.const -1
   return
  end
  local.get $2
  i32.const 0
  i32.lt_s
  if
   local.get $3
   local.get $2
   i32.add
   local.tee $4
   i32.const 0
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
   local.set $2
  end
  local.get $0
  i32.load offset=4
  local.set $6
  loop $while-continue|0
   local.get $2
   local.get $3
   i32.lt_s
   local.set $4
   local.get $4
   if
    local.get $6
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $1
    i32.eq
    if
     local.get $2
     return
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  i32.const -1
 )
 (func $~lib/array/Array<src/as/core/Object3D/Object3D>#set:length_ (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $src/as/core/Object3D/Object3D#remove (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $src/as/core/Object3D/Object3D#__remove
  local.get $0
 )
 (func $~lib/array/Array<src/as/core/Object3D/Object3D>#push (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=12
  local.set $2
  local.get $2
  i32.const 1
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.const 2
  i32.const 1
  call $~lib/array/ensureCapacity
  i32.const 1
  drop
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 1
  call $~lib/rt/itcms/__link
  local.get $0
  local.get $3
  call $~lib/array/Array<src/as/core/Object3D/Object3D>#set:length_
  local.get $3
 )
 (func $src/as/core/Object3D/Object3D#add (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $src/as/core/Object3D/Object3D#__add
  local.get $0
 )
 (func $~lib/array/Array<src/as/core/Object3D/Object3D>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<f32>#set:length_ (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store offset=12
 )
 (func $~lib/array/Array<f32>#__uset (param $0 i32) (param $1 i32) (param $2 f32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  f32.store
  i32.const 0
  drop
 )
 (func $~lib/array/Array<f32>#__set (param $0 i32) (param $1 i32) (param $2 f32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 224
    i32.const 1328
    i32.const 130
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.const 2
   i32.const 1
   call $~lib/array/ensureCapacity
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   call $~lib/array/Array<f32>#set:length_
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<f32>#__uset
 )
 (func $~lib/array/Array<f32>#__get (param $0 i32) (param $1 i32) (result f32)
  (local $2 f32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 224
   i32.const 1328
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  f32.load
  local.set $2
  i32.const 0
  drop
  local.get $2
 )
 (func $src/as/math/Box3/Box3#get:max (param $0 i32) (result i32)
  local.get $0
  i32.load
 )
 (func $src/as/math/Box3/Box3#get:min (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
 )
 (func $src/as/math/Box3/Box3#get:isBox3 (param $0 i32) (result i32)
  local.get $0
  i32.load8_u offset=8
 )
 (func $src/as/math/Vector3/Vector3#copy (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  f32.load
  call $src/as/math/Vector3/Vector3#set:x
  local.get $0
  local.get $1
  f32.load offset=4
  call $src/as/math/Vector3/Vector3#set:y
  local.get $0
  local.get $1
  f32.load offset=8
  call $src/as/math/Vector3/Vector3#set:z
  local.get $0
 )
 (func $src/as/math/Vector3/Vector3#get:z (param $0 i32) (result f32)
  local.get $0
  f32.load offset=8
 )
 (func $src/as/math/Vector3/Vector3#get:y (param $0 i32) (result f32)
  local.get $0
  f32.load offset=4
 )
 (func $~lib/array/Array<src/as/math/Vector3/Vector3>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $src/as/math/Vector3/Vector3#min (param $0 i32) (param $1 i32) (result i32)
  (local $2 f32)
  (local $3 f32)
  local.get $0
  local.get $0
  f32.load
  local.set $3
  local.get $1
  f32.load
  local.set $2
  local.get $3
  local.get $2
  f32.min
  call $src/as/math/Vector3/Vector3#set:x
  local.get $0
  local.get $0
  f32.load offset=4
  local.set $3
  local.get $1
  f32.load offset=4
  local.set $2
  local.get $3
  local.get $2
  f32.min
  call $src/as/math/Vector3/Vector3#set:y
  local.get $0
  local.get $0
  f32.load offset=8
  local.set $3
  local.get $1
  f32.load offset=8
  local.set $2
  local.get $3
  local.get $2
  f32.min
  call $src/as/math/Vector3/Vector3#set:z
  local.get $0
 )
 (func $src/as/math/Vector3/Vector3#max (param $0 i32) (param $1 i32) (result i32)
  (local $2 f32)
  (local $3 f32)
  local.get $0
  local.get $0
  f32.load
  local.set $3
  local.get $1
  f32.load
  local.set $2
  local.get $3
  local.get $2
  f32.max
  call $src/as/math/Vector3/Vector3#set:x
  local.get $0
  local.get $0
  f32.load offset=4
  local.set $3
  local.get $1
  f32.load offset=4
  local.set $2
  local.get $3
  local.get $2
  f32.max
  call $src/as/math/Vector3/Vector3#set:y
  local.get $0
  local.get $0
  f32.load offset=8
  local.set $3
  local.get $1
  f32.load offset=8
  local.set $2
  local.get $3
  local.get $2
  f32.max
  call $src/as/math/Vector3/Vector3#set:z
  local.get $0
 )
 (func $src/as/math/Box3/Box3#isEmpty (param $0 i32) (result i32)
  local.get $0
  i32.load
  f32.load
  local.get $0
  i32.load offset=4
  f32.load
  f32.lt
  if (result i32)
   i32.const 1
  else
   local.get $0
   i32.load
   f32.load offset=4
   local.get $0
   i32.load offset=4
   f32.load offset=4
   f32.lt
  end
  if (result i32)
   i32.const 1
  else
   local.get $0
   i32.load
   f32.load offset=8
   local.get $0
   i32.load offset=4
   f32.load offset=8
   f32.lt
  end
 )
 (func $src/as/math/Vector3/Vector3#set (param $0 i32) (param $1 f32) (param $2 f32) (param $3 f32) (result i32)
  local.get $0
  local.get $1
  call $src/as/math/Vector3/Vector3#set:x
  local.get $0
  local.get $2
  call $src/as/math/Vector3/Vector3#set:y
  local.get $0
  local.get $3
  call $src/as/math/Vector3/Vector3#set:z
  local.get $0
 )
 (func $src/as/math/Vector3/Vector3#addVectors (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  local.get $1
  f32.load
  local.get $2
  f32.load
  f32.add
  call $src/as/math/Vector3/Vector3#set:x
  local.get $0
  local.get $1
  f32.load offset=4
  local.get $2
  f32.load offset=4
  f32.add
  call $src/as/math/Vector3/Vector3#set:y
  local.get $0
  local.get $1
  f32.load offset=8
  local.get $2
  f32.load offset=8
  f32.add
  call $src/as/math/Vector3/Vector3#set:z
  local.get $0
 )
 (func $src/as/math/Vector3/Vector3#multiplyScalar (param $0 i32) (param $1 f32) (result i32)
  local.get $0
  local.get $0
  f32.load
  local.get $1
  f32.mul
  call $src/as/math/Vector3/Vector3#set:x
  local.get $0
  local.get $0
  f32.load offset=4
  local.get $1
  f32.mul
  call $src/as/math/Vector3/Vector3#set:y
  local.get $0
  local.get $0
  f32.load offset=8
  local.get $1
  f32.mul
  call $src/as/math/Vector3/Vector3#set:z
  local.get $0
 )
 (func $src/as/math/Vector3/Vector3#subVectors (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  local.get $1
  f32.load
  local.get $2
  f32.load
  f32.sub
  call $src/as/math/Vector3/Vector3#set:x
  local.get $0
  local.get $1
  f32.load offset=4
  local.get $2
  f32.load offset=4
  f32.sub
  call $src/as/math/Vector3/Vector3#set:y
  local.get $0
  local.get $1
  f32.load offset=8
  local.get $2
  f32.load offset=8
  f32.sub
  call $src/as/math/Vector3/Vector3#set:z
  local.get $0
 )
 (func $src/as/math/Vector3/Vector3#addScalar (param $0 i32) (param $1 f32) (result i32)
  local.get $0
  local.get $0
  f32.load
  local.get $1
  f32.add
  call $src/as/math/Vector3/Vector3#set:x
  local.get $0
  local.get $0
  f32.load offset=4
  local.get $1
  f32.add
  call $src/as/math/Vector3/Vector3#set:y
  local.get $0
  local.get $0
  f32.load offset=8
  local.get $1
  f32.add
  call $src/as/math/Vector3/Vector3#set:z
  local.get $0
 )
 (func $src/as/math/Vector3/Vector3#add (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $0
  f32.load
  local.get $1
  f32.load
  f32.add
  call $src/as/math/Vector3/Vector3#set:x
  local.get $0
  local.get $0
  f32.load offset=4
  local.get $1
  f32.load offset=4
  f32.add
  call $src/as/math/Vector3/Vector3#set:y
  local.get $0
  local.get $0
  f32.load offset=8
  local.get $1
  f32.load offset=8
  f32.add
  call $src/as/math/Vector3/Vector3#set:z
  local.get $0
 )
 (func $src/as/math/Vector3/Vector3#equals (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  f32.load
  local.get $0
  f32.load
  f32.eq
  if (result i32)
   local.get $1
   f32.load offset=4
   local.get $0
   f32.load offset=4
   f32.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   f32.load offset=8
   local.get $0
   f32.load offset=8
   f32.eq
  else
   i32.const 0
  end
 )
 (func $src/as/math/Vector3/Vector3#distanceToSquared (param $0 i32) (param $1 i32) (result f32)
  (local $2 f32)
  (local $3 f32)
  (local $4 f32)
  local.get $0
  f32.load
  local.get $1
  f32.load
  f32.sub
  local.set $2
  local.get $0
  f32.load offset=4
  local.get $1
  f32.load offset=4
  f32.sub
  local.set $3
  local.get $0
  f32.load offset=8
  local.get $1
  f32.load offset=8
  f32.sub
  local.set $4
  local.get $2
  local.get $2
  f32.mul
  local.get $3
  local.get $3
  f32.mul
  f32.add
  local.get $4
  local.get $4
  f32.mul
  f32.add
 )
 (func $src/as/math/Vector3/Vector3#distanceTo (param $0 i32) (param $1 i32) (result f32)
  (local $2 f32)
  local.get $0
  local.get $1
  call $src/as/math/Vector3/Vector3#distanceToSquared
  local.set $2
  local.get $2
  f32.sqrt
 )
 (func $src/as/math/Color/HSL#get:h (param $0 i32) (result f32)
  local.get $0
  f32.load
 )
 (func $src/as/math/Color/HSL#get:s (param $0 i32) (result f32)
  local.get $0
  f32.load offset=4
 )
 (func $src/as/math/Color/HSL#get:l (param $0 i32) (result f32)
  local.get $0
  f32.load offset=8
 )
 (func $src/as/math/Color/Color#set:r (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store
 )
 (func $src/as/math/Color/Color#set:g (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=4
 )
 (func $src/as/math/Color/Color#set:b (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=8
 )
 (func $src/as/math/Color/Color#setRGB (param $0 i32) (param $1 f32) (param $2 f32) (param $3 f32) (result i32)
  local.get $0
  local.get $1
  call $src/as/math/Color/Color#set:r
  local.get $0
  local.get $2
  call $src/as/math/Color/Color#set:g
  local.get $0
  local.get $3
  call $src/as/math/Color/Color#set:b
  local.get $0
 )
 (func $src/as/math/Color/Color#set:isColor (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store8 offset=12
 )
 (func $src/as/math/Color/Color#get:r (param $0 i32) (result f32)
  local.get $0
  f32.load
 )
 (func $src/as/math/Color/Color#get:g (param $0 i32) (result f32)
  local.get $0
  f32.load offset=4
 )
 (func $src/as/math/Color/Color#get:b (param $0 i32) (result f32)
  local.get $0
  f32.load offset=8
 )
 (func $src/as/math/Color/Color#get:isColor (param $0 i32) (result i32)
  local.get $0
  i32.load8_u offset=12
 )
 (func $src/as/math/Color/Color#setScalar (param $0 i32) (param $1 f32) (result i32)
  local.get $0
  local.get $1
  call $src/as/math/Color/Color#set:r
  local.get $0
  local.get $1
  call $src/as/math/Color/Color#set:g
  local.get $0
  local.get $1
  call $src/as/math/Color/Color#set:b
  local.get $0
 )
 (func $src/as/math/Color/Color#setHex (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.const 16
  i32.shr_s
  i32.const 255
  i32.and
  f32.convert_i32_s
  f32.const 255
  f32.div
  call $src/as/math/Color/Color#set:r
  local.get $0
  local.get $1
  i32.const 8
  i32.shr_s
  i32.const 255
  i32.and
  f32.convert_i32_s
  f32.const 255
  f32.div
  call $src/as/math/Color/Color#set:g
  local.get $0
  local.get $1
  i32.const 0
  i32.shr_s
  i32.const 255
  i32.and
  f32.convert_i32_s
  f32.const 255
  f32.div
  call $src/as/math/Color/Color#set:b
  local.get $0
 )
 (func $src/as/math/Color/Color#clone (param $0 i32) (result i32)
  i32.const 0
  local.get $0
  f32.load
  local.get $0
  f32.load offset=4
  local.get $0
  f32.load offset=8
  call $src/as/math/Color/Color#constructor
 )
 (func $src/as/math/Color/Color#copy (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  f32.load
  call $src/as/math/Color/Color#set:r
  local.get $0
  local.get $1
  f32.load offset=4
  call $src/as/math/Color/Color#set:g
  local.get $0
  local.get $1
  f32.load offset=8
  call $src/as/math/Color/Color#set:b
  local.get $0
 )
 (func $~lib/math/NativeMathf.pow (param $0 f32) (param $1 f32) (result f32)
  (local $2 f32)
  (local $3 f32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 f32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 f64)
  (local $16 f64)
  (local $17 f64)
  (local $18 f64)
  (local $19 f64)
  (local $20 f64)
  (local $21 f64)
  (local $22 f64)
  (local $23 i64)
  (local $24 i64)
  local.get $1
  f32.abs
  f32.const 2
  f32.le
  if
   local.get $1
   f32.const 2
   f32.eq
   if
    local.get $0
    local.get $0
    f32.mul
    return
   end
   local.get $1
   f32.const 0.5
   f32.eq
   if
    local.get $0
    f32.sqrt
    f32.abs
    f32.const inf
    local.get $0
    f32.const inf
    f32.neg
    f32.ne
    select
    return
   end
   local.get $1
   f32.const -1
   f32.eq
   if
    f32.const 1
    local.get $0
    f32.div
    return
   end
   local.get $1
   f32.const 1
   f32.eq
   if
    local.get $0
    return
   end
   local.get $1
   f32.const 0
   f32.eq
   if
    f32.const 1
    return
   end
  end
  i32.const 0
  i32.const 1
  i32.lt_s
  drop
  block $~lib/util/math/powf_lut|inlined.0 (result f32)
   local.get $0
   local.set $3
   local.get $1
   local.set $2
   i32.const 0
   local.set $4
   local.get $3
   i32.reinterpret_f32
   local.set $5
   local.get $2
   i32.reinterpret_f32
   local.set $6
   i32.const 0
   local.set $7
   local.get $5
   i32.const 8388608
   i32.sub
   i32.const 2139095040
   i32.const 8388608
   i32.sub
   i32.ge_u
   local.get $6
   local.set $8
   local.get $8
   i32.const 1
   i32.shl
   i32.const 1
   i32.sub
   i32.const 2139095040
   i32.const 1
   i32.shl
   i32.const 1
   i32.sub
   i32.ge_u
   i32.const 0
   i32.ne
   local.tee $7
   i32.or
   if
    local.get $7
    if
     local.get $6
     i32.const 1
     i32.shl
     i32.const 0
     i32.eq
     if
      f32.const 1
      br $~lib/util/math/powf_lut|inlined.0
     end
     local.get $5
     i32.const 1065353216
     i32.eq
     if
      f32.const nan:0x400000
      br $~lib/util/math/powf_lut|inlined.0
     end
     local.get $5
     i32.const 1
     i32.shl
     i32.const 2139095040
     i32.const 1
     i32.shl
     i32.gt_u
     if (result i32)
      i32.const 1
     else
      local.get $6
      i32.const 1
      i32.shl
      i32.const 2139095040
      i32.const 1
      i32.shl
      i32.gt_u
     end
     if
      local.get $3
      local.get $2
      f32.add
      br $~lib/util/math/powf_lut|inlined.0
     end
     local.get $5
     i32.const 1
     i32.shl
     i32.const 1065353216
     i32.const 1
     i32.shl
     i32.eq
     if
      f32.const nan:0x400000
      br $~lib/util/math/powf_lut|inlined.0
     end
     local.get $5
     i32.const 1
     i32.shl
     i32.const 1065353216
     i32.const 1
     i32.shl
     i32.lt_u
     local.get $6
     i32.const 31
     i32.shr_u
     i32.eqz
     i32.eq
     if
      f32.const 0
      br $~lib/util/math/powf_lut|inlined.0
     end
     local.get $2
     local.get $2
     f32.mul
     br $~lib/util/math/powf_lut|inlined.0
    end
    local.get $5
    local.set $8
    local.get $8
    i32.const 1
    i32.shl
    i32.const 1
    i32.sub
    i32.const 2139095040
    i32.const 1
    i32.shl
    i32.const 1
    i32.sub
    i32.ge_u
    if
     local.get $3
     local.get $3
     f32.mul
     local.set $9
     local.get $5
     i32.const 31
     i32.shr_u
     if (result i32)
      block $~lib/util/math/checkintf|inlined.0 (result i32)
       local.get $6
       local.set $8
       local.get $8
       i32.const 23
       i32.shr_u
       i32.const 255
       i32.and
       local.set $10
       local.get $10
       i32.const 127
       i32.lt_u
       if
        i32.const 0
        br $~lib/util/math/checkintf|inlined.0
       end
       local.get $10
       i32.const 127
       i32.const 23
       i32.add
       i32.gt_u
       if
        i32.const 2
        br $~lib/util/math/checkintf|inlined.0
       end
       i32.const 1
       i32.const 127
       i32.const 23
       i32.add
       local.get $10
       i32.sub
       i32.shl
       local.set $10
       local.get $8
       local.get $10
       i32.const 1
       i32.sub
       i32.and
       if
        i32.const 0
        br $~lib/util/math/checkintf|inlined.0
       end
       local.get $8
       local.get $10
       i32.and
       if
        i32.const 1
        br $~lib/util/math/checkintf|inlined.0
       end
       i32.const 2
      end
      i32.const 1
      i32.eq
     else
      i32.const 0
     end
     if
      local.get $9
      f32.neg
      local.set $9
     end
     local.get $6
     i32.const 31
     i32.shr_u
     if (result f32)
      f32.const 1
      local.get $9
      f32.div
     else
      local.get $9
     end
     br $~lib/util/math/powf_lut|inlined.0
    end
    local.get $5
    i32.const 31
    i32.shr_u
    if
     block $~lib/util/math/checkintf|inlined.1 (result i32)
      local.get $6
      local.set $8
      local.get $8
      i32.const 23
      i32.shr_u
      i32.const 255
      i32.and
      local.set $10
      local.get $10
      i32.const 127
      i32.lt_u
      if
       i32.const 0
       br $~lib/util/math/checkintf|inlined.1
      end
      local.get $10
      i32.const 127
      i32.const 23
      i32.add
      i32.gt_u
      if
       i32.const 2
       br $~lib/util/math/checkintf|inlined.1
      end
      i32.const 1
      i32.const 127
      i32.const 23
      i32.add
      local.get $10
      i32.sub
      i32.shl
      local.set $10
      local.get $8
      local.get $10
      i32.const 1
      i32.sub
      i32.and
      if
       i32.const 0
       br $~lib/util/math/checkintf|inlined.1
      end
      local.get $8
      local.get $10
      i32.and
      if
       i32.const 1
       br $~lib/util/math/checkintf|inlined.1
      end
      i32.const 2
     end
     local.set $10
     local.get $10
     i32.const 0
     i32.eq
     if
      local.get $3
      local.get $3
      f32.sub
      local.get $3
      local.get $3
      f32.sub
      f32.div
      br $~lib/util/math/powf_lut|inlined.0
     end
     local.get $10
     i32.const 1
     i32.eq
     if
      i32.const 65536
      local.set $4
     end
     local.get $5
     i32.const 2147483647
     i32.and
     local.set $5
    end
    local.get $5
    i32.const 8388608
    i32.lt_u
    if
     local.get $3
     f32.const 8388608
     f32.mul
     i32.reinterpret_f32
     local.set $5
     local.get $5
     i32.const 2147483647
     i32.and
     local.set $5
     local.get $5
     i32.const 23
     i32.const 23
     i32.shl
     i32.sub
     local.set $5
    end
   end
   local.get $5
   local.set $8
   local.get $8
   i32.const 1060306944
   i32.sub
   local.set $10
   local.get $10
   i32.const 23
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 15
   i32.and
   local.set $11
   local.get $10
   i32.const -8388608
   i32.and
   local.set $12
   local.get $8
   local.get $12
   i32.sub
   local.set $13
   local.get $12
   i32.const 23
   i32.shr_s
   local.set $14
   i32.const 1744
   local.get $11
   i32.const 1
   i32.const 3
   i32.add
   i32.shl
   i32.add
   f64.load
   local.set $15
   i32.const 1744
   local.get $11
   i32.const 1
   i32.const 3
   i32.add
   i32.shl
   i32.add
   f64.load offset=8
   local.set $16
   local.get $13
   f32.reinterpret_i32
   f64.promote_f32
   local.set $17
   local.get $17
   local.get $15
   f64.mul
   f64.const 1
   f64.sub
   local.set $18
   local.get $16
   local.get $14
   f64.convert_i32_s
   f64.add
   local.set $19
   f64.const 0.288457581109214
   local.get $18
   f64.mul
   f64.const -0.36092606229713164
   f64.add
   local.set $20
   f64.const 0.480898481472577
   local.get $18
   f64.mul
   f64.const -0.7213474675006291
   f64.add
   local.set $21
   f64.const 1.4426950408774342
   local.get $18
   f64.mul
   local.get $19
   f64.add
   local.set $22
   local.get $18
   local.get $18
   f64.mul
   local.set $18
   local.get $22
   local.get $21
   local.get $18
   f64.mul
   f64.add
   local.set $22
   local.get $20
   local.get $18
   local.get $18
   f64.mul
   f64.mul
   local.get $22
   f64.add
   local.set $20
   local.get $20
   local.set $22
   local.get $2
   f64.promote_f32
   local.get $22
   f64.mul
   local.set $21
   local.get $21
   i64.reinterpret_f64
   i64.const 47
   i64.shr_u
   i64.const 65535
   i64.and
   i64.const 32959
   i64.ge_u
   if
    local.get $21
    f64.const 127.99999995700433
    f64.gt
    if
     local.get $4
     local.set $8
     local.get $8
     local.set $10
     i32.const 1879048192
     f32.reinterpret_i32
     local.set $9
     local.get $9
     f32.neg
     local.get $9
     local.get $10
     select
     local.get $9
     f32.mul
     br $~lib/util/math/powf_lut|inlined.0
    end
    local.get $21
    f64.const -150
    f64.le
    if
     local.get $4
     local.set $11
     local.get $11
     local.set $12
     i32.const 268435456
     f32.reinterpret_i32
     local.set $9
     local.get $9
     f32.neg
     local.get $9
     local.get $12
     select
     local.get $9
     f32.mul
     br $~lib/util/math/powf_lut|inlined.0
    end
   end
   local.get $21
   local.set $15
   local.get $4
   local.set $13
   local.get $15
   f64.const 211106232532992
   f64.add
   local.set $20
   local.get $20
   i64.reinterpret_f64
   local.set $23
   local.get $15
   local.get $20
   f64.const 211106232532992
   f64.sub
   f64.sub
   local.set $19
   i32.const 2000
   local.get $23
   i32.wrap_i64
   i32.const 31
   i32.and
   i32.const 3
   i32.shl
   i32.add
   i64.load
   local.set $24
   local.get $24
   local.get $23
   local.get $13
   i64.extend_i32_u
   i64.add
   i64.const 52
   i32.const 5
   i64.extend_i32_s
   i64.sub
   i64.shl
   i64.add
   local.set $24
   local.get $24
   f64.reinterpret_i64
   local.set $16
   f64.const 0.05550361559341535
   local.get $19
   f64.mul
   f64.const 0.2402284522445722
   f64.add
   local.set $18
   f64.const 0.6931471806916203
   local.get $19
   f64.mul
   f64.const 1
   f64.add
   local.set $17
   local.get $17
   local.get $18
   local.get $19
   local.get $19
   f64.mul
   f64.mul
   f64.add
   local.set $17
   local.get $17
   local.get $16
   f64.mul
   local.set $17
   local.get $17
   f32.demote_f64
  end
  return
 )
 (func $src/as/math/Color/Color#copyGammaToLinear (param $0 i32) (param $1 i32) (param $2 f32) (result i32)
  local.get $0
  local.get $1
  f32.load
  local.get $2
  call $~lib/math/NativeMathf.pow
  call $src/as/math/Color/Color#set:r
  local.get $0
  local.get $1
  f32.load offset=4
  local.get $2
  call $~lib/math/NativeMathf.pow
  call $src/as/math/Color/Color#set:g
  local.get $0
  local.get $1
  f32.load offset=8
  local.get $2
  call $~lib/math/NativeMathf.pow
  call $src/as/math/Color/Color#set:b
  local.get $0
 )
 (func $src/as/math/Color/Color#copyLinearToGamma (param $0 i32) (param $1 i32) (param $2 f32) (result i32)
  (local $3 f32)
  local.get $2
  f32.const 0
  f32.gt
  if (result f32)
   f32.const 1
   local.get $2
   f32.div
  else
   f32.const 1
  end
  local.set $3
  local.get $0
  local.get $1
  f32.load
  local.get $3
  call $~lib/math/NativeMathf.pow
  call $src/as/math/Color/Color#set:r
  local.get $0
  local.get $1
  f32.load offset=4
  local.get $3
  call $~lib/math/NativeMathf.pow
  call $src/as/math/Color/Color#set:g
  local.get $0
  local.get $1
  f32.load offset=8
  local.get $3
  call $~lib/math/NativeMathf.pow
  call $src/as/math/Color/Color#set:b
  local.get $0
 )
 (func $src/as/math/Color/Color#convertGammaToLinear (param $0 i32) (param $1 f32) (result i32)
  local.get $0
  local.get $0
  local.get $1
  call $src/as/math/Color/Color#copyGammaToLinear
  drop
  local.get $0
 )
 (func $src/as/math/Color/Color#convertLinearToGamma (param $0 i32) (param $1 f32) (result i32)
  local.get $0
  local.get $0
  local.get $1
  call $src/as/math/Color/Color#copyLinearToGamma
  drop
  local.get $0
 )
 (func $src/as/math/Color/SRGBToLinear (param $0 f32) (result f32)
  local.get $0
  f32.const 0.040449999272823334
  f32.lt
  if (result f32)
   local.get $0
   f32.const 0.07739938050508499
   f32.mul
  else
   local.get $0
   f32.const 0.9478672742843628
   f32.mul
   f32.const 0.05213269963860512
   f32.add
   f32.const 2.4000000953674316
   call $~lib/math/NativeMathf.pow
  end
 )
 (func $src/as/math/Color/Color#copySRGBToLinear (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  f32.load
  call $src/as/math/Color/SRGBToLinear
  call $src/as/math/Color/Color#set:r
  local.get $0
  local.get $1
  f32.load offset=4
  call $src/as/math/Color/SRGBToLinear
  call $src/as/math/Color/Color#set:g
  local.get $0
  local.get $1
  f32.load offset=8
  call $src/as/math/Color/SRGBToLinear
  call $src/as/math/Color/Color#set:b
  local.get $0
 )
 (func $src/as/math/Color/LinearToSRGB (param $0 f32) (result f32)
  local.get $0
  f32.const 3.1308000907301903e-03
  f32.lt
  if (result f32)
   local.get $0
   f32.const 12.920000076293945
   f32.mul
  else
   f32.const 1.0549999475479126
   local.get $0
   f32.const 0.41666001081466675
   call $~lib/math/NativeMathf.pow
   f32.mul
   f32.const 0.054999999701976776
   f32.sub
  end
 )
 (func $src/as/math/Color/Color#copyLinearToSRGB (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  f32.load
  call $src/as/math/Color/LinearToSRGB
  call $src/as/math/Color/Color#set:r
  local.get $0
  local.get $1
  f32.load offset=4
  call $src/as/math/Color/LinearToSRGB
  call $src/as/math/Color/Color#set:g
  local.get $0
  local.get $1
  f32.load offset=8
  call $src/as/math/Color/LinearToSRGB
  call $src/as/math/Color/Color#set:b
  local.get $0
 )
 (func $src/as/math/Color/Color#convertSRGBToLinear (param $0 i32) (result i32)
  local.get $0
  local.get $0
  call $src/as/math/Color/Color#copySRGBToLinear
  drop
  local.get $0
 )
 (func $src/as/math/Color/Color#convertLinearToSRGB (param $0 i32) (result i32)
  local.get $0
  local.get $0
  call $src/as/math/Color/Color#copyLinearToSRGB
  drop
  local.get $0
 )
 (func $src/as/math/Color/Color#getHex (param $0 i32) (result i32)
  local.get $0
  f32.load
  f32.const 255
  f32.mul
  i32.trunc_f32_s
  i32.const 16
  i32.shl
  local.get $0
  f32.load offset=4
  f32.const 255
  f32.mul
  i32.trunc_f32_s
  i32.const 8
  i32.shl
  i32.xor
  local.get $0
  f32.load offset=8
  f32.const 255
  f32.mul
  i32.trunc_f32_s
  i32.const 0
  i32.shl
  i32.xor
 )
 (func $~lib/util/number/decimalCount32 (param $0 i32) (result i32)
  local.get $0
  i32.const 100000
  i32.lt_u
  if
   local.get $0
   i32.const 100
   i32.lt_u
   if
    i32.const 1
    local.get $0
    i32.const 10
    i32.ge_u
    i32.add
    return
   else
    i32.const 3
    local.get $0
    i32.const 10000
    i32.ge_u
    i32.add
    local.get $0
    i32.const 1000
    i32.ge_u
    i32.add
    return
   end
   unreachable
  else
   local.get $0
   i32.const 10000000
   i32.lt_u
   if
    i32.const 6
    local.get $0
    i32.const 1000000
    i32.ge_u
    i32.add
    return
   else
    i32.const 8
    local.get $0
    i32.const 1000000000
    i32.ge_u
    i32.add
    local.get $0
    i32.const 100000000
    i32.ge_u
    i32.add
    return
   end
   unreachable
  end
  unreachable
 )
 (func $~lib/util/number/utoa32_dec_lut (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  (local $10 i32)
  (local $11 i32)
  loop $while-continue|0
   local.get $1
   i32.const 10000
   i32.ge_u
   local.set $3
   local.get $3
   if
    local.get $1
    i32.const 10000
    i32.div_u
    local.set $4
    local.get $1
    i32.const 10000
    i32.rem_u
    local.set $5
    local.get $4
    local.set $1
    local.get $5
    i32.const 100
    i32.div_u
    local.set $6
    local.get $5
    i32.const 100
    i32.rem_u
    local.set $7
    i32.const 2524
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $8
    i32.const 2524
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $9
    local.get $2
    i32.const 4
    i32.sub
    local.set $2
    local.get $0
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    local.get $8
    local.get $9
    i64.const 32
    i64.shl
    i64.or
    i64.store
    br $while-continue|0
   end
  end
  local.get $1
  i32.const 100
  i32.ge_u
  if
   local.get $1
   i32.const 100
   i32.div_u
   local.set $3
   local.get $1
   i32.const 100
   i32.rem_u
   local.set $10
   local.get $3
   local.set $1
   local.get $2
   i32.const 2
   i32.sub
   local.set $2
   i32.const 2524
   local.get $10
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.set $11
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $11
   i32.store
  end
  local.get $1
  i32.const 10
  i32.ge_u
  if
   local.get $2
   i32.const 2
   i32.sub
   local.set $2
   i32.const 2524
   local.get $1
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.set $11
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $11
   i32.store
  else
   local.get $2
   i32.const 1
   i32.sub
   local.set $2
   i32.const 48
   local.get $1
   i32.add
   local.set $11
   local.get $0
   local.get $2
   i32.const 1
   i32.shl
   i32.add
   local.get $11
   i32.store16
  end
 )
 (func $~lib/util/number/utoa_hex_lut (param $0 i32) (param $1 i64) (param $2 i32)
  (local $3 i32)
  loop $while-continue|0
   local.get $2
   i32.const 2
   i32.ge_u
   local.set $3
   local.get $3
   if
    local.get $2
    i32.const 2
    i32.sub
    local.set $2
    local.get $0
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    i32.const 2944
    local.get $1
    i32.wrap_i64
    i32.const 255
    i32.and
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.store
    local.get $1
    i64.const 8
    i64.shr_u
    local.set $1
    br $while-continue|0
   end
  end
  local.get $2
  i32.const 1
  i32.and
  if
   local.get $0
   i32.const 2944
   local.get $1
   i32.wrap_i64
   i32.const 6
   i32.shl
   i32.add
   i32.load16_u
   i32.store16
  end
 )
 (func $~lib/util/number/ulog_base (param $0 i64) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i32)
  local.get $1
  local.set $2
  local.get $2
  i32.popcnt
  i32.const 1
  i32.eq
  if
   i32.const 63
   local.get $0
   i64.clz
   i32.wrap_i64
   i32.sub
   i32.const 31
   local.get $1
   i32.clz
   i32.sub
   i32.div_u
   i32.const 1
   i32.add
   return
  end
  local.get $1
  i64.extend_i32_s
  local.set $3
  local.get $3
  local.set $4
  i32.const 1
  local.set $5
  loop $while-continue|0
   local.get $0
   local.get $4
   i64.ge_u
   local.set $2
   local.get $2
   if
    local.get $0
    local.get $4
    i64.div_u
    local.set $0
    local.get $4
    local.get $4
    i64.mul
    local.set $4
    local.get $5
    i32.const 1
    i32.shl
    local.set $5
    br $while-continue|0
   end
  end
  loop $while-continue|1
   local.get $0
   i64.const 1
   i64.ge_u
   local.set $2
   local.get $2
   if
    local.get $0
    local.get $3
    i64.div_u
    local.set $0
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $while-continue|1
   end
  end
  local.get $5
  i32.const 1
  i32.sub
 )
 (func $~lib/util/number/utoa64_any_core (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  local.get $3
  i64.extend_i32_s
  local.set $4
  local.get $3
  local.get $3
  i32.const 1
  i32.sub
  i32.and
  i32.const 0
  i32.eq
  if
   local.get $3
   i32.ctz
   i32.const 7
   i32.and
   i64.extend_i32_s
   local.set $5
   local.get $4
   i64.const 1
   i64.sub
   local.set $6
   loop $do-loop|0
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    local.get $0
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    i32.const 4000
    local.get $1
    local.get $6
    i64.and
    i32.wrap_i64
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u
    i32.store16
    local.get $1
    local.get $5
    i64.shr_u
    local.set $1
    local.get $1
    i64.const 0
    i64.ne
    br_if $do-loop|0
   end
  else
   loop $do-loop|1
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    local.get $1
    local.get $4
    i64.div_u
    local.set $6
    local.get $0
    local.get $2
    i32.const 1
    i32.shl
    i32.add
    i32.const 4000
    local.get $1
    local.get $6
    local.get $4
    i64.mul
    i64.sub
    i32.wrap_i64
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u
    i32.store16
    local.get $6
    local.set $1
    local.get $1
    i64.const 0
    i64.ne
    br_if $do-loop|1
   end
  end
 )
 (func $~lib/number/I32#toString (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/util/number/itoa32
 )
 (func $~lib/string/String.__concat (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $~lib/string/String#concat
 )
 (func $src/as/math/Color/Color#add (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $0
  f32.load
  local.get $1
  f32.load
  f32.add
  call $src/as/math/Color/Color#set:r
  local.get $0
  local.get $0
  f32.load offset=4
  local.get $1
  f32.load offset=4
  f32.add
  call $src/as/math/Color/Color#set:g
  local.get $0
  local.get $0
  f32.load offset=8
  local.get $1
  f32.load offset=8
  f32.add
  call $src/as/math/Color/Color#set:b
  local.get $0
 )
 (func $src/as/math/Color/Color#addColors (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  local.get $1
  f32.load
  local.get $2
  f32.load
  f32.add
  call $src/as/math/Color/Color#set:r
  local.get $0
  local.get $1
  f32.load offset=4
  local.get $2
  f32.load offset=4
  f32.add
  call $src/as/math/Color/Color#set:g
  local.get $0
  local.get $1
  f32.load offset=8
  local.get $2
  f32.load offset=8
  f32.add
  call $src/as/math/Color/Color#set:b
  local.get $0
 )
 (func $src/as/math/Color/Color#addScalar (param $0 i32) (param $1 f32) (result i32)
  local.get $0
  local.get $0
  f32.load
  local.get $1
  f32.add
  call $src/as/math/Color/Color#set:r
  local.get $0
  local.get $0
  f32.load offset=4
  local.get $1
  f32.add
  call $src/as/math/Color/Color#set:g
  local.get $0
  local.get $0
  f32.load offset=8
  local.get $1
  f32.add
  call $src/as/math/Color/Color#set:b
  local.get $0
 )
 (func $src/as/math/Color/Color#sub (param $0 i32) (param $1 i32) (result i32)
  (local $2 f32)
  (local $3 f32)
  local.get $0
  f32.const 0
  local.set $3
  local.get $0
  f32.load
  local.get $1
  f32.load
  f32.sub
  local.set $2
  local.get $3
  local.get $2
  f32.max
  call $src/as/math/Color/Color#set:r
  local.get $0
  f32.const 0
  local.set $3
  local.get $0
  f32.load offset=4
  local.get $1
  f32.load offset=4
  f32.sub
  local.set $2
  local.get $3
  local.get $2
  f32.max
  call $src/as/math/Color/Color#set:g
  local.get $0
  f32.const 0
  local.set $3
  local.get $0
  f32.load offset=8
  local.get $1
  f32.load offset=8
  f32.sub
  local.set $2
  local.get $3
  local.get $2
  f32.max
  call $src/as/math/Color/Color#set:b
  local.get $0
 )
 (func $src/as/math/Color/Color#multiply (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $0
  f32.load
  local.get $1
  f32.load
  f32.mul
  call $src/as/math/Color/Color#set:r
  local.get $0
  local.get $0
  f32.load offset=4
  local.get $1
  f32.load offset=4
  f32.mul
  call $src/as/math/Color/Color#set:g
  local.get $0
  local.get $0
  f32.load offset=8
  local.get $1
  f32.load offset=8
  f32.mul
  call $src/as/math/Color/Color#set:b
  local.get $0
 )
 (func $src/as/math/Color/Color#multiplyScalar (param $0 i32) (param $1 f32) (result i32)
  local.get $0
  local.get $0
  f32.load
  local.get $1
  f32.mul
  call $src/as/math/Color/Color#set:r
  local.get $0
  local.get $0
  f32.load offset=4
  local.get $1
  f32.mul
  call $src/as/math/Color/Color#set:g
  local.get $0
  local.get $0
  f32.load offset=8
  local.get $1
  f32.mul
  call $src/as/math/Color/Color#set:b
  local.get $0
 )
 (func $src/as/math/Color/Color#lerp (param $0 i32) (param $1 i32) (param $2 f32) (result i32)
  local.get $0
  local.get $0
  f32.load
  local.get $1
  f32.load
  local.get $0
  f32.load
  f32.sub
  local.get $2
  f32.mul
  f32.add
  call $src/as/math/Color/Color#set:r
  local.get $0
  local.get $0
  f32.load offset=4
  local.get $1
  f32.load offset=4
  local.get $0
  f32.load offset=4
  f32.sub
  local.get $2
  f32.mul
  f32.add
  call $src/as/math/Color/Color#set:g
  local.get $0
  local.get $0
  f32.load offset=8
  local.get $1
  f32.load offset=8
  local.get $0
  f32.load offset=8
  f32.sub
  local.get $2
  f32.mul
  f32.add
  call $src/as/math/Color/Color#set:b
  local.get $0
 )
 (func $src/as/math/Color/Color#equals (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  f32.load
  local.get $0
  f32.load
  f32.eq
  if (result i32)
   local.get $1
   f32.load offset=4
   local.get $0
   f32.load offset=4
   f32.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   f32.load offset=8
   local.get $0
   f32.load offset=8
   f32.eq
  else
   i32.const 0
  end
 )
 (func $src/as/math/Color/Color#fromArray (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<f32>#__get
  call $src/as/math/Color/Color#set:r
  local.get $0
  local.get $1
  local.get $2
  i32.const 1
  i32.add
  call $~lib/array/Array<f32>#__get
  call $src/as/math/Color/Color#set:g
  local.get $0
  local.get $1
  local.get $2
  i32.const 2
  i32.add
  call $~lib/array/Array<f32>#__get
  call $src/as/math/Color/Color#set:b
  local.get $0
 )
 (func $src/as/math/Color/Color#toArray (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $1
  local.get $2
  local.get $0
  f32.load
  call $~lib/array/Array<f32>#__set
  local.get $1
  local.get $2
  i32.const 1
  i32.add
  local.get $0
  f32.load offset=4
  call $~lib/array/Array<f32>#__set
  local.get $1
  local.get $2
  i32.const 2
  i32.add
  local.get $0
  f32.load offset=8
  call $~lib/array/Array<f32>#__set
  local.get $1
 )
 (func $src/as/math/Color/Color#toJSON (param $0 i32) (result i32)
  local.get $0
  call $src/as/math/Color/Color#getHex
 )
 (func $src/as/math/Euler/Euler#get:isEuler (param $0 i32) (result i32)
  local.get $0
  i32.load8_u
 )
 (func $src/as/math/Euler/Euler#get:_x (param $0 i32) (result f32)
  local.get $0
  f32.load offset=4
 )
 (func $src/as/math/Euler/Euler#get:_y (param $0 i32) (result f32)
  local.get $0
  f32.load offset=8
 )
 (func $src/as/math/Euler/Euler#get:_z (param $0 i32) (result f32)
  local.get $0
  f32.load offset=12
 )
 (func $src/as/math/Euler/Euler#get:_order (param $0 i32) (result i32)
  local.get $0
  i32.load offset=16
 )
 (func $src/as/math/Euler/Euler#get:x (param $0 i32) (result f32)
  local.get $0
  f32.load offset=4
 )
 (func $src/as/math/Euler/Euler#set:x (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  call $src/as/math/Euler/Euler#set:_x
  i32.const 0
  global.set $~argumentsLength
  local.get $0
  i32.load offset=20
  i32.load
  call_indirect $0 (type $none_=>_none)
 )
 (func $src/as/math/Euler/Euler#get:y (param $0 i32) (result f32)
  local.get $0
  f32.load offset=8
 )
 (func $src/as/math/Euler/Euler#set:y (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  call $src/as/math/Euler/Euler#set:_y
  i32.const 0
  global.set $~argumentsLength
  local.get $0
  i32.load offset=20
  i32.load
  call_indirect $0 (type $none_=>_none)
 )
 (func $src/as/math/Euler/Euler#get:z (param $0 i32) (result f32)
  local.get $0
  f32.load offset=12
 )
 (func $src/as/math/Euler/Euler#set:z (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  call $src/as/math/Euler/Euler#set:_z
  i32.const 0
  global.set $~argumentsLength
  local.get $0
  i32.load offset=20
  i32.load
  call_indirect $0 (type $none_=>_none)
 )
 (func $src/as/math/Euler/Euler#set:order (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $src/as/math/Euler/Euler#set:_order
  i32.const 0
  global.set $~argumentsLength
  local.get $0
  i32.load offset=20
  i32.load
  call_indirect $0 (type $none_=>_none)
 )
 (func $src/as/math/Euler/Euler#get:onChangeCallback (param $0 i32) (result i32)
  local.get $0
  i32.load offset=20
 )
 (func $src/as/math/Euler/Euler#set (param $0 i32) (param $1 f32) (param $2 f32) (param $3 f32) (param $4 i32) (result i32)
  local.get $0
  local.get $1
  call $src/as/math/Euler/Euler#set:_x
  local.get $0
  local.get $2
  call $src/as/math/Euler/Euler#set:_y
  local.get $0
  local.get $3
  call $src/as/math/Euler/Euler#set:_z
  local.get $0
  local.get $4
  call $src/as/math/Euler/Euler#set:_order
  i32.const 0
  global.set $~argumentsLength
  local.get $0
  i32.load offset=20
  i32.load
  call_indirect $0 (type $none_=>_none)
  local.get $0
 )
 (func $src/as/math/Euler/Euler#clone (param $0 i32) (result i32)
  i32.const 0
  local.get $0
  f32.load offset=4
  local.get $0
  f32.load offset=8
  local.get $0
  f32.load offset=12
  local.get $0
  i32.load offset=16
  call $src/as/math/Euler/Euler#constructor
 )
 (func $src/as/math/Euler/Euler#copy (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  f32.load offset=4
  call $src/as/math/Euler/Euler#set:_x
  local.get $0
  local.get $1
  f32.load offset=8
  call $src/as/math/Euler/Euler#set:_y
  local.get $0
  local.get $1
  f32.load offset=12
  call $src/as/math/Euler/Euler#set:_z
  local.get $0
  local.get $1
  i32.load offset=16
  call $src/as/math/Euler/Euler#set:_order
  i32.const 0
  global.set $~argumentsLength
  local.get $0
  i32.load offset=20
  i32.load
  call_indirect $0 (type $none_=>_none)
  local.get $0
 )
 (func $src/as/math/MathUtils/clamp (param $0 f32) (param $1 f32) (param $2 f32) (result f32)
  (local $3 f32)
  (local $4 f32)
  (local $5 f32)
  local.get $1
  local.set $5
  local.get $2
  local.set $4
  local.get $0
  local.set $3
  local.get $4
  local.get $3
  f32.min
  local.set $3
  local.get $5
  local.get $3
  f32.max
 )
 (func $~lib/math/Rf (param $0 f32) (result f32)
  (local $1 f32)
  (local $2 f32)
  local.get $0
  f32.const 0.16666586697101593
  local.get $0
  f32.const -0.04274342209100723
  local.get $0
  f32.const -0.008656363002955914
  f32.mul
  f32.add
  f32.mul
  f32.add
  f32.mul
  local.set $1
  f32.const 1
  local.get $0
  f32.const -0.7066296339035034
  f32.mul
  f32.add
  local.set $2
  local.get $1
  local.get $2
  f32.div
 )
 (func $~lib/math/NativeMathf.asin (param $0 f32) (result f32)
  (local $1 f32)
  (local $2 i32)
  (local $3 f32)
  (local $4 f64)
  local.get $0
  local.set $1
  local.get $0
  i32.reinterpret_f32
  i32.const 2147483647
  i32.and
  local.set $2
  local.get $2
  i32.const 1065353216
  i32.ge_u
  if
   local.get $2
   i32.const 1065353216
   i32.eq
   if
    local.get $0
    f32.const 1.5707963705062866
    f32.mul
    f32.const 7.52316384526264e-37
    f32.add
    return
   end
   f32.const 0
   local.get $0
   local.get $0
   f32.sub
   f32.div
   return
  end
  local.get $2
  i32.const 1056964608
  i32.lt_u
  if
   local.get $2
   i32.const 964689920
   i32.lt_u
   if (result i32)
    local.get $2
    i32.const 8388608
    i32.ge_u
   else
    i32.const 0
   end
   if
    local.get $0
    return
   end
   local.get $0
   local.get $0
   local.get $0
   local.get $0
   f32.mul
   call $~lib/math/Rf
   f32.mul
   f32.add
   return
  end
  f32.const 0.5
  local.get $0
  f32.abs
  f32.const 0.5
  f32.mul
  f32.sub
  local.set $3
  local.get $3
  f64.promote_f32
  f64.sqrt
  local.set $4
  f32.const 1.5707963705062866
  f64.promote_f32
  f32.const 2
  f64.promote_f32
  local.get $4
  local.get $4
  local.get $3
  call $~lib/math/Rf
  f64.promote_f32
  f64.mul
  f64.add
  f64.mul
  f64.sub
  f32.demote_f64
  local.set $0
  local.get $0
  local.get $1
  f32.copysign
 )
 (func $~lib/math/NativeMathf.atan (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 f32)
  (local $3 f32)
  (local $4 i32)
  (local $5 f32)
  (local $6 f32)
  (local $7 f32)
  (local $8 f32)
  (local $9 i32)
  local.get $0
  i32.reinterpret_f32
  local.set $1
  local.get $0
  local.set $2
  local.get $1
  i32.const 2147483647
  i32.and
  local.set $1
  local.get $1
  i32.const 1283457024
  i32.ge_u
  if
   local.get $0
   local.get $0
   f32.ne
   if
    local.get $0
    return
   end
   f32.const 1.570796251296997
   f32.const 7.52316384526264e-37
   f32.add
   local.set $3
   local.get $3
   local.get $2
   f32.copysign
   return
  end
  local.get $1
  i32.const 1054867456
  i32.lt_u
  if
   local.get $1
   i32.const 964689920
   i32.lt_u
   if
    local.get $0
    return
   end
   i32.const -1
   local.set $4
  else
   local.get $0
   f32.abs
   local.set $0
   local.get $1
   i32.const 1066926080
   i32.lt_u
   if
    local.get $1
    i32.const 1060110336
    i32.lt_u
    if
     i32.const 0
     local.set $4
     f32.const 2
     local.get $0
     f32.mul
     f32.const 1
     f32.sub
     f32.const 2
     local.get $0
     f32.add
     f32.div
     local.set $0
    else
     i32.const 1
     local.set $4
     local.get $0
     f32.const 1
     f32.sub
     local.get $0
     f32.const 1
     f32.add
     f32.div
     local.set $0
    end
   else
    local.get $1
    i32.const 1075576832
    i32.lt_u
    if
     i32.const 2
     local.set $4
     local.get $0
     f32.const 1.5
     f32.sub
     f32.const 1
     f32.const 1.5
     local.get $0
     f32.mul
     f32.add
     f32.div
     local.set $0
    else
     i32.const 3
     local.set $4
     f32.const -1
     local.get $0
     f32.div
     local.set $0
    end
   end
  end
  local.get $0
  local.get $0
  f32.mul
  local.set $3
  local.get $3
  local.get $3
  f32.mul
  local.set $5
  local.get $3
  f32.const 0.333333283662796
  local.get $5
  f32.const 0.14253635704517365
  local.get $5
  f32.const 0.06168760731816292
  f32.mul
  f32.add
  f32.mul
  f32.add
  f32.mul
  local.set $6
  local.get $5
  f32.const -0.19999158382415771
  local.get $5
  f32.const -0.106480173766613
  f32.mul
  f32.add
  f32.mul
  local.set $7
  local.get $0
  local.get $6
  local.get $7
  f32.add
  f32.mul
  local.set $8
  local.get $4
  i32.const 0
  i32.lt_s
  if
   local.get $0
   local.get $8
   f32.sub
   return
  end
  block $break|0
   block $case4|0
    block $case3|0
     block $case2|0
      block $case1|0
       block $case0|0
        local.get $4
        local.set $9
        local.get $9
        i32.const 0
        i32.eq
        br_if $case0|0
        local.get $9
        i32.const 1
        i32.eq
        br_if $case1|0
        local.get $9
        i32.const 2
        i32.eq
        br_if $case2|0
        local.get $9
        i32.const 3
        i32.eq
        br_if $case3|0
        br $case4|0
       end
       f32.const 0.46364760398864746
       local.get $8
       f32.const 5.01215824399992e-09
       f32.sub
       local.get $0
       f32.sub
       f32.sub
       local.set $3
       br $break|0
      end
      f32.const 0.7853981256484985
      local.get $8
      f32.const 3.774894707930798e-08
      f32.sub
      local.get $0
      f32.sub
      f32.sub
      local.set $3
      br $break|0
     end
     f32.const 0.9827936887741089
     local.get $8
     f32.const 3.447321716976148e-08
     f32.sub
     local.get $0
     f32.sub
     f32.sub
     local.set $3
     br $break|0
    end
    f32.const 1.570796251296997
    local.get $8
    f32.const 7.549789415861596e-08
    f32.sub
    local.get $0
    f32.sub
    f32.sub
    local.set $3
    br $break|0
   end
   unreachable
  end
  local.get $3
  local.get $2
  f32.copysign
 )
 (func $~lib/math/NativeMathf.atan2 (param $0 f32) (param $1 f32) (result f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f32)
  (local $7 f32)
  local.get $1
  local.get $1
  f32.ne
  if (result i32)
   i32.const 1
  else
   local.get $0
   local.get $0
   f32.ne
  end
  if
   local.get $1
   local.get $0
   f32.add
   return
  end
  local.get $1
  i32.reinterpret_f32
  local.set $2
  local.get $0
  i32.reinterpret_f32
  local.set $3
  local.get $2
  i32.const 1065353216
  i32.eq
  if
   local.get $0
   call $~lib/math/NativeMathf.atan
   return
  end
  local.get $3
  i32.const 31
  i32.shr_u
  i32.const 1
  i32.and
  local.get $2
  i32.const 30
  i32.shr_u
  i32.const 2
  i32.and
  i32.or
  local.set $4
  local.get $2
  i32.const 2147483647
  i32.and
  local.set $2
  local.get $3
  i32.const 2147483647
  i32.and
  local.set $3
  local.get $3
  i32.const 0
  i32.eq
  if
   block $break|0
    block $case3|0
     block $case2|0
      block $case1|0
       block $case0|0
        local.get $4
        local.set $5
        local.get $5
        i32.const 0
        i32.eq
        br_if $case0|0
        local.get $5
        i32.const 1
        i32.eq
        br_if $case1|0
        local.get $5
        i32.const 2
        i32.eq
        br_if $case2|0
        local.get $5
        i32.const 3
        i32.eq
        br_if $case3|0
        br $break|0
       end
      end
      local.get $0
      return
     end
     f32.const 3.1415927410125732
     return
    end
    f32.const 3.1415927410125732
    f32.neg
    return
   end
  end
  local.get $2
  i32.const 0
  i32.eq
  if
   local.get $4
   i32.const 1
   i32.and
   if (result f32)
    f32.const 3.1415927410125732
    f32.neg
    f32.const 2
    f32.div
   else
    f32.const 3.1415927410125732
    f32.const 2
    f32.div
   end
   return
  end
  local.get $2
  i32.const 2139095040
  i32.eq
  if
   local.get $3
   i32.const 2139095040
   i32.eq
   if
    local.get $4
    i32.const 2
    i32.and
    if (result f32)
     f32.const 3
     f32.const 3.1415927410125732
     f32.mul
     f32.const 4
     f32.div
    else
     f32.const 3.1415927410125732
     f32.const 4
     f32.div
    end
    local.set $6
    local.get $4
    i32.const 1
    i32.and
    if (result f32)
     local.get $6
     f32.neg
    else
     local.get $6
    end
    return
   else
    local.get $4
    i32.const 2
    i32.and
    if (result f32)
     f32.const 3.1415927410125732
    else
     f32.const 0
    end
    local.set $6
    local.get $4
    i32.const 1
    i32.and
    if (result f32)
     local.get $6
     f32.neg
    else
     local.get $6
    end
    return
   end
   unreachable
  end
  local.get $2
  i32.const 26
  i32.const 23
  i32.shl
  i32.add
  local.get $3
  i32.lt_u
  if (result i32)
   i32.const 1
  else
   local.get $3
   i32.const 2139095040
   i32.eq
  end
  if
   local.get $4
   i32.const 1
   i32.and
   if (result f32)
    f32.const 3.1415927410125732
    f32.neg
    f32.const 2
    f32.div
   else
    f32.const 3.1415927410125732
    f32.const 2
    f32.div
   end
   return
  end
  local.get $4
  i32.const 2
  i32.and
  if (result i32)
   local.get $3
   i32.const 26
   i32.const 23
   i32.shl
   i32.add
   local.get $2
   i32.lt_u
  else
   i32.const 0
  end
  if
   f32.const 0
   local.set $7
  else
   local.get $0
   local.get $1
   f32.div
   f32.abs
   call $~lib/math/NativeMathf.atan
   local.set $7
  end
  block $break|1
   block $case3|1
    block $case2|1
     block $case1|1
      block $case0|1
       local.get $4
       local.set $5
       local.get $5
       i32.const 0
       i32.eq
       br_if $case0|1
       local.get $5
       i32.const 1
       i32.eq
       br_if $case1|1
       local.get $5
       i32.const 2
       i32.eq
       br_if $case2|1
       local.get $5
       i32.const 3
       i32.eq
       br_if $case3|1
       br $break|1
      end
      local.get $7
      return
     end
     local.get $7
     f32.neg
     return
    end
    f32.const 3.1415927410125732
    local.get $7
    f32.const -8.742277657347586e-08
    f32.sub
    f32.sub
    return
   end
   local.get $7
   f32.const -8.742277657347586e-08
   f32.sub
   f32.const 3.1415927410125732
   f32.sub
   return
  end
  unreachable
 )
 (func $src/as/math/Euler/Euler#setFromVector3 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  local.get $1
  f32.load
  local.get $1
  f32.load offset=4
  local.get $1
  f32.load offset=8
  local.get $2
  call $src/as/math/Euler/Euler#set
 )
 (func $src/as/math/Euler/Euler#equals (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  f32.load offset=4
  local.get $0
  f32.load offset=4
  f32.eq
  if (result i32)
   local.get $1
   f32.load offset=8
   local.get $0
   f32.load offset=8
   f32.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   f32.load offset=12
   local.get $0
   f32.load offset=12
   f32.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.load offset=16
   local.get $0
   i32.load offset=16
   i32.eq
  else
   i32.const 0
  end
 )
 (func $src/as/math/Euler/Euler#toVector3 (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  f32.load offset=4
  local.get $0
  f32.load offset=8
  local.get $0
  f32.load offset=12
  call $src/as/math/Vector3/Vector3#set
 )
 (func $src/as/math/Euler/eulerEquals (param $0 i32) (param $1 i32) (param $2 f32) (result i32)
  (local $3 f32)
  local.get $0
  call $src/as/math/Euler/Euler#get:x
  local.get $1
  call $src/as/math/Euler/Euler#get:x
  f32.sub
  local.set $3
  local.get $3
  f32.abs
  local.get $0
  call $src/as/math/Euler/Euler#get:y
  local.get $1
  call $src/as/math/Euler/Euler#get:y
  f32.sub
  local.set $3
  local.get $3
  f32.abs
  f32.add
  local.get $0
  call $src/as/math/Euler/Euler#get:z
  local.get $1
  call $src/as/math/Euler/Euler#get:z
  f32.sub
  local.set $3
  local.get $3
  f32.abs
  f32.add
  local.set $3
  local.get $3
  local.get $2
  f32.lt
 )
 (func $src/as/math/Plane/Plane#set:normal (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/as/math/Plane/Plane#set:constant (param $0 i32) (param $1 f32)
  local.get $0
  local.get $1
  f32.store offset=4
 )
 (func $~lib/array/Array<src/as/math/Plane/Plane>#__uset (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
  i32.const 1
  drop
  local.get $0
  local.get $2
  i32.const 1
  call $~lib/rt/itcms/__link
 )
 (func $src/as/math/Frustum/Frustum#set:planes (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $src/as/math/Frustum/Frustum#get:planes (param $0 i32) (result i32)
  local.get $0
  i32.load
 )
 (func $src/as/math/Vector3/Vector3#lengthSq (param $0 i32) (result f32)
  local.get $0
  f32.load
  local.get $0
  f32.load
  f32.mul
  local.get $0
  f32.load offset=4
  local.get $0
  f32.load offset=4
  f32.mul
  f32.add
  local.get $0
  f32.load offset=8
  local.get $0
  f32.load offset=8
  f32.mul
  f32.add
 )
 (func $src/as/math/Vector3/Vector3#length (param $0 i32) (result f32)
  (local $1 f32)
  local.get $0
  call $src/as/math/Vector3/Vector3#lengthSq
  local.set $1
  local.get $1
  f32.sqrt
 )
 (func $src/as/math/Vector3/Vector3#dot (param $0 i32) (param $1 i32) (result f32)
  local.get $0
  f32.load
  local.get $1
  f32.load
  f32.mul
  local.get $0
  f32.load offset=4
  local.get $1
  f32.load offset=4
  f32.mul
  f32.add
  local.get $0
  f32.load offset=8
  local.get $1
  f32.load offset=8
  f32.mul
  f32.add
 )
 (func $src/as/core/Object3D/Object3D#updateMatrixWorld@varargs (param $0 i32) (param $1 i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 0
   local.set $1
  end
  local.get $0
  local.get $1
  call $src/as/core/Object3D/Object3D#updateMatrixWorld
 )
 (func $src/as/math/Box3/compareBox@varargs (param $0 i32) (param $1 i32) (param $2 f32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 2
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   f32.const 9.999999747378752e-05
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $src/as/math/Box3/compareBox
 )
 (func $src/as/math/Color/Color#constructor@varargs (param $0 i32) (param $1 f32) (param $2 f32) (param $3 f32) (result i32)
  block $3of3
   block $2of3
    block $1of3
     block $0of3
      block $outOfRange
       global.get $~argumentsLength
       br_table $0of3 $1of3 $2of3 $3of3 $outOfRange
      end
      unreachable
     end
     f32.const 0
     local.set $1
    end
    f32.const 0
    local.set $2
   end
   f32.const 0
   local.set $3
  end
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $src/as/math/Color/Color#constructor
 )
 (func $src/as/math/Color/Color#copyGammaToLinear@varargs (param $0 i32) (param $1 i32) (param $2 f32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   f32.const 2
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $src/as/math/Color/Color#copyGammaToLinear
 )
 (func $src/as/math/Color/Color#copyLinearToGamma@varargs (param $0 i32) (param $1 i32) (param $2 f32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   f32.const 2
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $src/as/math/Color/Color#copyLinearToGamma
 )
 (func $src/as/math/Color/Color#convertGammaToLinear@varargs (param $0 i32) (param $1 f32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   f32.const 2
   local.set $1
  end
  local.get $0
  local.get $1
  call $src/as/math/Color/Color#convertGammaToLinear
 )
 (func $src/as/math/Color/Color#convertLinearToGamma@varargs (param $0 i32) (param $1 f32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   f32.const 2
   local.set $1
  end
  local.get $0
  local.get $1
  call $src/as/math/Color/Color#convertLinearToGamma
 )
 (func $src/as/math/Color/Color#fromArray@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 0
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $src/as/math/Color/Color#fromArray
 )
 (func $src/as/math/Euler/Euler#constructor@varargs (param $0 i32) (param $1 f32) (param $2 f32) (param $3 f32) (param $4 i32) (result i32)
  block $4of4
   block $3of4
    block $2of4
     block $1of4
      block $0of4
       block $outOfRange
        global.get $~argumentsLength
        br_table $0of4 $1of4 $2of4 $3of4 $4of4 $outOfRange
       end
       unreachable
      end
      f32.const 0
      local.set $1
     end
     f32.const 0
     local.set $2
    end
    f32.const 0
    local.set $3
   end
   global.get $src/as/math/Euler/Euler.DefaultOrder
   local.set $4
  end
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  local.get $4
  call $src/as/math/Euler/Euler#constructor
 )
 (func $src/as/math/Euler/Euler#set@varargs (param $0 i32) (param $1 f32) (param $2 f32) (param $3 f32) (param $4 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 3
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   local.get $0
   i32.load offset=16
   local.set $4
  end
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  local.get $4
  call $src/as/math/Euler/Euler#set
 )
 (func $src/as/math/Euler/Euler#setFromRotationMatrix@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      i32.const 1
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    local.get $0
    i32.load offset=16
    local.set $2
   end
   i32.const 1
   local.set $3
  end
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $src/as/math/Euler/Euler#setFromRotationMatrix
 )
 (func $src/as/math/Euler/Euler#setFromQuaternion@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      i32.const 1
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    local.get $0
    i32.load offset=16
    local.set $2
   end
   i32.const 1
   local.set $3
  end
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $src/as/math/Euler/Euler#setFromQuaternion
 )
 (func $src/as/math/Euler/Euler#setFromVector3@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   local.get $0
   i32.load offset=16
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $src/as/math/Euler/Euler#setFromVector3
 )
 (func $src/as/math/Euler/eulerEquals@varargs (param $0 i32) (param $1 i32) (param $2 f32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     i32.const 2
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   f32.const 9.999999747378752e-05
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $src/as/math/Euler/eulerEquals
 )
 (func $src/as/math/Frustum/Frustum#constructor@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (result i32)
  block $6of6
   block $5of6
    block $4of6
     block $3of6
      block $2of6
       block $1of6
        block $0of6
         block $outOfRange
          global.get $~argumentsLength
          br_table $0of6 $1of6 $2of6 $3of6 $4of6 $5of6 $6of6 $outOfRange
         end
         unreachable
        end
        i32.const 0
        local.set $1
       end
       i32.const 0
       local.set $2
      end
      i32.const 0
      local.set $3
     end
     i32.const 0
     local.set $4
    end
    i32.const 0
    local.set $5
   end
   i32.const 0
   local.set $6
  end
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  local.get $4
  local.get $5
  local.get $6
  call $src/as/math/Frustum/Frustum#constructor
 )
 (func $~lib/rt/__visit_globals (param $0 i32)
  (local $1 i32)
  i32.const 224
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 784
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 1488
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 1376
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 32
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 2944
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 4000
  local.get $0
  call $~lib/rt/itcms/__visit
  global.get $src/as/core/Object3D/quaternion
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $src/as/core/Object3D/vector
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $src/as/core/Object3D/matrix
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $src/as/core/Object3D/target
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $src/as/core/Object3D/position
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $src/as/core/Object3D/scale
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $src/as/core/Object3D/vX
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $src/as/core/Object3D/vY
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $src/as/core/Object3D/vZ
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $src/as/core/Object3D/self
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $src/as/math/Box3/points
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $src/as/math/Color/hsl
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $src/as/math/Color/hslA
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $src/as/math/Color/hslB
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $src/as/math/Euler/matrix
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $src/as/math/Euler/quaternion
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $src/as/math/Frustum/_sphere
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $src/as/math/Frustum/_vector
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $src/as/math/Sphere/box
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $src/as/math/Vector4/min
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  global.get $src/as/math/Vector4/max
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/arraybuffer/ArrayBufferView~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $src/as/math/Matrix4/Matrix4~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/array/Array<f32>#__visit (param $0 i32) (param $1 i32)
  i32.const 0
  drop
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/array/Array<f32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<f32>#__visit
 )
 (func $~lib/array/Array<i32>#__visit (param $0 i32) (param $1 i32)
  i32.const 0
  drop
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/array/Array<i32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#__visit
 )
 (func $src/as/math/Quaternion/Quaternion~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=20
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/function/Function<%28%29=>void>#__visit (param $0 i32) (param $1 i32)
  local.get $0
  i32.load offset=4
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/function/Function<%28%29=>void>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/function/Function<%28%29=>void>#__visit
 )
 (func $src/as/math/Vector3/Vector3~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=28
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $src/as/core/Object3D/Object3D~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $src/as/core/EventDispatcher/EventDispatcher~visit
  local.get $0
  i32.load offset=8
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=12
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=16
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=20
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=24
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=28
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=32
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=36
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=40
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=44
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=48
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=56
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=72
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=76
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $src/as/core/EventDispatcher/EventDispatcher~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $src/as/core/EventTargetable/EventTargetable~visit
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $src/as/core/EventTargetable/EventTargetable~visit (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/array/Array<src/as/core/EventDispatcher/Listener>#__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1
  drop
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  loop $while-continue|0
   local.get $2
   local.get $3
   i32.lt_u
   local.set $4
   local.get $4
   if
    local.get $2
    i32.load
    local.set $5
    local.get $5
    if
     local.get $5
     local.get $1
     call $~lib/rt/itcms/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/array/Array<src/as/core/EventDispatcher/Listener>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<src/as/core/EventDispatcher/Listener>#__visit
 )
 (func $~lib/map/Map<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>#__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/itcms/__visit
  local.get $0
  i32.load offset=8
  local.set $2
  i32.const 1
  drop
  local.get $2
  local.set $3
  local.get $3
  local.get $0
  i32.load offset=16
  i32.const 12
  i32.mul
  i32.add
  local.set $4
  loop $while-continue|0
   local.get $3
   local.get $4
   i32.lt_u
   local.set $5
   local.get $5
   if
    local.get $3
    local.set $6
    local.get $6
    i32.load offset=8
    i32.const 1
    i32.and
    i32.eqz
    if
     i32.const 1
     drop
     local.get $6
     i32.load
     local.set $7
     i32.const 0
     drop
     local.get $7
     local.get $1
     call $~lib/rt/itcms/__visit
     i32.const 1
     drop
     local.get $6
     i32.load offset=4
     local.set $7
     i32.const 0
     drop
     local.get $7
     local.get $1
     call $~lib/rt/itcms/__visit
    end
    local.get $3
    i32.const 12
    i32.add
    local.set $3
    br $while-continue|0
   end
  end
  local.get $2
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/map/Map<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/map/Map<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>#__visit
 )
 (func $~lib/array/Array<src/as/core/Object3D/Object3D>#__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1
  drop
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  loop $while-continue|0
   local.get $2
   local.get $3
   i32.lt_u
   local.set $4
   local.get $4
   if
    local.get $2
    i32.load
    local.set $5
    local.get $5
    if
     local.get $5
     local.get $1
     call $~lib/rt/itcms/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/array/Array<src/as/core/Object3D/Object3D>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<src/as/core/Object3D/Object3D>#__visit
 )
 (func $src/as/math/Euler/Euler~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=20
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/array/Array<src/as/math/Vector3/Vector3>#__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1
  drop
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  loop $while-continue|0
   local.get $2
   local.get $3
   i32.lt_u
   local.set $4
   local.get $4
   if
    local.get $2
    i32.load
    local.set $5
    local.get $5
    if
     local.get $5
     local.get $1
     call $~lib/rt/itcms/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/array/Array<src/as/math/Vector3/Vector3>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<src/as/math/Vector3/Vector3>#__visit
 )
 (func $src/as/math/Box3/Box3~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $src/as/math/Sphere/Sphere~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $src/as/core/Event/Event~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=8
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $src/as/math/Frustum/Frustum~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $src/as/math/Plane/Plane~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/array/Array<src/as/math/Plane/Plane>#__visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 1
  drop
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $2
  local.get $0
  i32.load offset=12
  i32.const 2
  i32.shl
  i32.add
  local.set $3
  loop $while-continue|0
   local.get $2
   local.get $3
   i32.lt_u
   local.set $4
   local.get $4
   if
    local.get $2
    i32.load
    local.set $5
    local.get $5
    if
     local.get $5
     local.get $1
     call $~lib/rt/itcms/__visit
    end
    local.get $2
    i32.const 4
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/array/Array<src/as/math/Plane/Plane>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/array/Array<src/as/math/Plane/Plane>#__visit
 )
 (func $~lib/rt/__visit_members (param $0 i32) (param $1 i32)
  block $invalid
   block $~lib/array/Array<src/as/math/Plane/Plane>
    block $src/as/math/Plane/Plane
     block $src/as/math/Frustum/Frustum
      block $src/as/math/Color/Color
       block $src/as/math/Color/Colors
        block $src/as/core/EventAttachable/EventAttachable
         block $src/as/core/Event/Event
          block $src/as/math/Sphere/Sphere
           block $src/as/math/Box3/Box3
            block $~lib/array/Array<src/as/math/Vector3/Vector3>
             block $src/as/core/Layers/Layers
              block $src/as/math/Euler/Euler
               block $~lib/array/Array<src/as/core/Object3D/Object3D>
                block $~lib/map/Map<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>
                 block $~lib/array/Array<src/as/core/EventDispatcher/Listener>
                  block $src/as/core/EventDispatcher/Listener
                   block $src/as/core/EventTargetable/EventTargetable
                    block $src/as/core/EventDispatcher/EventDispatcher
                     block $src/as/core/Object3D/Object3D
                      block $src/as/math/Vector3/Vector3
                       block $~lib/function/Function<%28%29=>void>
                        block $src/as/math/Quaternion/Quaternion
                         block $~lib/array/Array<i32>
                          block $~lib/array/Array<f32>
                           block $src/as/math/Matrix4/Matrix4
                            block $src/as/math/Color/HSL
                             block $src/as/math/Vector4/Vector4
                              block $~lib/arraybuffer/ArrayBufferView
                               block $~lib/string/String
                                block $~lib/arraybuffer/ArrayBuffer
                                 local.get $0
                                 i32.const 8
                                 i32.sub
                                 i32.load
                                 br_table $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $src/as/math/Vector4/Vector4 $src/as/math/Color/HSL $src/as/math/Matrix4/Matrix4 $~lib/array/Array<f32> $~lib/array/Array<i32> $src/as/math/Quaternion/Quaternion $~lib/function/Function<%28%29=>void> $src/as/math/Vector3/Vector3 $src/as/core/Object3D/Object3D $src/as/core/EventDispatcher/EventDispatcher $src/as/core/EventTargetable/EventTargetable $src/as/core/EventDispatcher/Listener $~lib/array/Array<src/as/core/EventDispatcher/Listener> $~lib/map/Map<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>> $~lib/array/Array<src/as/core/Object3D/Object3D> $src/as/math/Euler/Euler $src/as/core/Layers/Layers $~lib/array/Array<src/as/math/Vector3/Vector3> $src/as/math/Box3/Box3 $src/as/math/Sphere/Sphere $src/as/core/Event/Event $src/as/core/EventAttachable/EventAttachable $src/as/math/Color/Colors $src/as/math/Color/Color $src/as/math/Frustum/Frustum $src/as/math/Plane/Plane $~lib/array/Array<src/as/math/Plane/Plane> $invalid
                                end
                                return
                               end
                               return
                              end
                              local.get $0
                              local.get $1
                              call $~lib/arraybuffer/ArrayBufferView~visit
                              return
                             end
                             return
                            end
                            return
                           end
                           local.get $0
                           local.get $1
                           call $src/as/math/Matrix4/Matrix4~visit
                           return
                          end
                          local.get $0
                          local.get $1
                          call $~lib/array/Array<f32>~visit
                          return
                         end
                         local.get $0
                         local.get $1
                         call $~lib/array/Array<i32>~visit
                         return
                        end
                        local.get $0
                        local.get $1
                        call $src/as/math/Quaternion/Quaternion~visit
                        return
                       end
                       local.get $0
                       local.get $1
                       call $~lib/function/Function<%28%29=>void>~visit
                       return
                      end
                      local.get $0
                      local.get $1
                      call $src/as/math/Vector3/Vector3~visit
                      return
                     end
                     local.get $0
                     local.get $1
                     call $src/as/core/Object3D/Object3D~visit
                     return
                    end
                    local.get $0
                    local.get $1
                    call $src/as/core/EventDispatcher/EventDispatcher~visit
                    return
                   end
                   return
                  end
                  return
                 end
                 local.get $0
                 local.get $1
                 call $~lib/array/Array<src/as/core/EventDispatcher/Listener>~visit
                 return
                end
                local.get $0
                local.get $1
                call $~lib/map/Map<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>~visit
                return
               end
               local.get $0
               local.get $1
               call $~lib/array/Array<src/as/core/Object3D/Object3D>~visit
               return
              end
              local.get $0
              local.get $1
              call $src/as/math/Euler/Euler~visit
              return
             end
             return
            end
            local.get $0
            local.get $1
            call $~lib/array/Array<src/as/math/Vector3/Vector3>~visit
            return
           end
           local.get $0
           local.get $1
           call $src/as/math/Box3/Box3~visit
           return
          end
          local.get $0
          local.get $1
          call $src/as/math/Sphere/Sphere~visit
          return
         end
         local.get $0
         local.get $1
         call $src/as/core/Event/Event~visit
         return
        end
        return
       end
       return
      end
      return
     end
     local.get $0
     local.get $1
     call $src/as/math/Frustum/Frustum~visit
     return
    end
    local.get $0
    local.get $1
    call $src/as/math/Plane/Plane~visit
    return
   end
   local.get $0
   local.get $1
   call $~lib/array/Array<src/as/math/Plane/Plane>~visit
   return
  end
  unreachable
 )
 (func $~setArgumentsLength (param $0 i32)
  local.get $0
  global.set $~argumentsLength
 )
 (func $~start
  call $start:src/as/index
 )
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 21056
   i32.const 21104
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $src/as/math/Vector3/Vector3#constructor (param $0 i32) (param $1 f32) (param $2 f32) (param $3 f32) (result i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 32
   i32.const 10
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  f32.const 0
  call $src/as/math/Vector3/Vector3#set:x
  local.get $0
  f32.const 0
  call $src/as/math/Vector3/Vector3#set:y
  local.get $0
  f32.const 0
  call $src/as/math/Vector3/Vector3#set:z
  local.get $0
  i32.const 1
  call $src/as/math/Vector3/Vector3#set:isVector3
  local.get $0
  i32.const 560
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  i32.const 0
  call $~lib/string/String#charCodeAt
  call $src/as/math/Vector3/Vector3#set:__xChar
  local.get $0
  i32.const 592
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  i32.const 0
  call $~lib/string/String#charCodeAt
  call $src/as/math/Vector3/Vector3#set:__yChar
  local.get $0
  i32.const 624
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  i32.const 0
  call $~lib/string/String#charCodeAt
  call $src/as/math/Vector3/Vector3#set:__zChar
  local.get $0
  i32.const 656
  call $src/as/math/Vector3/Vector3#set:__invalidNameMsg
  local.get $0
  local.get $1
  call $src/as/math/Vector3/Vector3#set:x
  local.get $0
  local.get $2
  call $src/as/math/Vector3/Vector3#set:y
  local.get $0
  local.get $3
  call $src/as/math/Vector3/Vector3#set:z
  local.get $0
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $src/as/core/Object3D/Object3D#onRotationChange (param $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  i32.load offset=32
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  local.get $0
  i32.load offset=28
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  i32.const 0
  call $src/as/math/Quaternion/Quaternion#setFromEuler
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/as/core/Object3D/Object3D#constructor~anonymous|0
  (local $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  global.get $src/as/core/Object3D/self
  local.tee $0
  i32.store offset=4
  local.get $0
  if (result i32)
   local.get $0
  else
   i32.const 896
   i32.const 960
   i32.const 205
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $src/as/core/Object3D/Object3D#onRotationChange
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/as/core/Object3D/Object3D#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 80
   i32.const 11
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  global.get $src/as/core/Object3D/object3DId
  local.tee $1
  i32.const 1
  i32.add
  global.set $src/as/core/Object3D/object3DId
  local.get $1
  call $src/as/core/Object3D/Object3D#set:id
  local.get $0
  i32.const 1120
  call $src/as/core/Object3D/Object3D#set:name
  local.get $0
  i32.const 1152
  call $src/as/core/Object3D/Object3D#set:type
  local.get $0
  i32.const 0
  call $src/as/core/Object3D/Object3D#set:parent
  local.get $0
  i32.const 0
  i32.const 2
  i32.const 17
  i32.const 1200
  call $~lib/rt/__newArray
  call $src/as/core/Object3D/Object3D#set:children
  local.get $0
  i32.const 0
  f32.const 0
  f32.const 0
  f32.const 0
  call $src/as/math/Vector3/Vector3#constructor
  call $src/as/core/Object3D/Object3D#set:position
  local.get $0
  i32.const 0
  f32.const 0
  f32.const 0
  f32.const 0
  global.get $src/as/math/Euler/Euler.DefaultOrder
  call $src/as/math/Euler/Euler#constructor
  call $src/as/core/Object3D/Object3D#set:rotation
  local.get $0
  i32.const 0
  f32.const 0
  f32.const 0
  f32.const 0
  f32.const 1
  call $src/as/math/Quaternion/Quaternion#constructor
  call $src/as/core/Object3D/Object3D#set:quaternion
  local.get $0
  i32.const 0
  f32.const 1
  f32.const 1
  f32.const 1
  call $src/as/math/Vector3/Vector3#constructor
  call $src/as/core/Object3D/Object3D#set:scale
  local.get $0
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  call $src/as/core/Object3D/Object3D#set:modelViewMatrix
  local.get $0
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  call $src/as/core/Object3D/Object3D#set:matrix
  local.get $0
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  call $src/as/core/Object3D/Object3D#set:matrixWorld
  local.get $0
  global.get $src/as/core/Object3D/Object3D.DefaultMatrixAutoUpdate
  call $src/as/core/Object3D/Object3D#set:matrixAutoUpdate
  local.get $0
  i32.const 0
  call $src/as/core/Object3D/Object3D#set:matrixWorldNeedsUpdate
  local.get $0
  i32.const 0
  call $src/as/core/Layers/Layers#constructor
  call $src/as/core/Object3D/Object3D#set:layers
  local.get $0
  i32.const 1
  call $src/as/core/Object3D/Object3D#set:visible
  local.get $0
  i32.const 0
  call $src/as/core/Object3D/Object3D#set:castShadow
  local.get $0
  i32.const 0
  call $src/as/core/Object3D/Object3D#set:receiveShadow
  local.get $0
  i32.const 1
  call $src/as/core/Object3D/Object3D#set:frustumCulled
  local.get $0
  f32.const 0
  call $src/as/core/Object3D/Object3D#set:renderOrder
  local.get $0
  i32.const 1
  call $src/as/core/Object3D/Object3D#set:isObject3D
  local.get $0
  i32.const 0
  call $src/as/core/Object3D/Object3D#set:isCamera
  local.get $0
  i32.const 0
  call $src/as/core/Object3D/Object3D#set:isLight
  local.get $0
  i32.const 1264
  call $src/as/core/Object3D/Object3D#set:onBeforeRender
  local.get $0
  i32.const 1296
  call $src/as/core/Object3D/Object3D#set:onAfterRender
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $src/as/core/EventDispatcher/EventDispatcher#constructor
  local.tee $0
  i32.store
  local.get $0
  global.set $src/as/core/Object3D/self
  local.get $0
  i32.load offset=28
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  i32.const 1088
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $3
  call $src/as/math/Euler/Euler#onChange
  drop
  local.get $0
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/map/Map<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>#find (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.load
  local.get $2
  local.get $0
  i32.load offset=4
  i32.and
  i32.const 4
  i32.mul
  i32.add
  i32.load
  local.set $3
  loop $while-continue|0
   local.get $3
   local.set $4
   local.get $4
   if
    local.get $3
    i32.load offset=8
    local.set $5
    local.get $5
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $3
     i32.load
     local.set $6
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store
     local.get $6
     local.get $1
     call $~lib/string/String.__eq
    else
     i32.const 0
    end
    if
     local.get $3
     local.set $6
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $6
     return
    end
    local.get $5
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $3
    br $while-continue|0
   end
  end
  i32.const 0
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $src/as/core/EventDispatcher/EventDispatcher#addEventListener (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  local.tee $3
  i32.store
  local.get $3
  local.get $1
  call $~lib/map/Map<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>#has
  i32.eqz
  if
   local.get $3
   local.get $1
   i32.const 0
   i32.const 0
   call $~lib/array/Array<src/as/core/EventDispatcher/Listener>#constructor
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   call $~lib/map/Map<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>#set
   drop
  end
  local.get $3
  local.get $1
  call $~lib/map/Map<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>#get
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $4
  local.get $2
  i32.const 0
  call $~lib/array/Array<src/as/core/EventDispatcher/Listener>#indexOf
  i32.const -1
  i32.eq
  if
   local.get $3
   local.get $1
   call $~lib/map/Map<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>#get
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=8
   local.get $4
   local.get $2
   call $~lib/array/Array<src/as/core/EventDispatcher/Listener>#push
   drop
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/as/core/EventDispatcher/EventDispatcher#hasEventListener (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  local.tee $3
  i32.store
  local.get $3
  local.get $1
  call $~lib/map/Map<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>#has
  if (result i32)
   local.get $3
   local.get $1
   call $~lib/map/Map<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>#get
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   local.get $2
   i32.const 0
   call $~lib/array/Array<src/as/core/EventDispatcher/Listener>#includes
  else
   i32.const 0
  end
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $src/as/core/EventDispatcher/EventDispatcher#dispatchEvent (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  local.tee $2
  i32.store
  local.get $2
  local.get $1
  i32.load
  local.set $9
  global.get $~lib/memory/__stack_pointer
  local.get $9
  i32.store offset=4
  local.get $9
  call $~lib/map/Map<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>#has
  if
   global.get $~lib/memory/__stack_pointer
   local.get $2
   local.get $1
   i32.load
   local.set $9
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store offset=4
   local.get $9
   call $~lib/map/Map<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>#get
   local.tee $3
   i32.store offset=8
   local.get $1
   local.get $0
   call $src/as/core/Event/Event#set:target
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.const 0
   global.get $~lib/builtins/i32.MAX_VALUE
   call $~lib/array/Array<src/as/core/EventDispatcher/Listener>#slice
   local.tee $4
   i32.store offset=12
   i32.const 0
   local.set $5
   local.get $4
   call $~lib/array/Array<src/as/core/EventDispatcher/Listener>#get:length
   local.set $6
   loop $for-loop|0
    local.get $5
    local.get $6
    i32.lt_s
    local.set $7
    local.get $7
    if
     global.get $~lib/memory/__stack_pointer
     local.get $4
     local.get $5
     call $~lib/array/Array<src/as/core/EventDispatcher/Listener>#__get
     local.tee $8
     i32.store offset=16
     local.get $8
     local.get $1
     call $src/as/core/EventDispatcher/Listener#onEvent
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $for-loop|0
    end
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/as/core/Object3D/Object3D#__remove (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.load offset=20
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $1
  i32.const 0
  call $~lib/array/Array<src/as/core/Object3D/Object3D>#indexOf
  local.set $2
  local.get $2
  i32.const -1
  i32.ne
  if
   local.get $1
   i32.const 0
   call $src/as/core/Object3D/Object3D#set:parent
   local.get $0
   i32.load offset=20
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   local.get $2
   i32.const 1
   call $~lib/array/Array<src/as/core/Object3D/Object3D>#splice
   drop
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/as/core/Object3D/Object3D#__add (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $1
  local.get $0
  i32.eq
  if
   i32.const 1616
   i32.const 960
   i32.const 455
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load offset=16
  local.tee $2
  i32.store
  local.get $2
  if
   local.get $2
   local.get $1
   call $src/as/core/Object3D/Object3D#remove
   drop
  end
  local.get $1
  local.get $0
  call $src/as/core/Object3D/Object3D#set:parent
  local.get $0
  i32.load offset=20
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $1
  call $~lib/array/Array<src/as/core/Object3D/Object3D>#push
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/as/core/Object3D/Object3D#traverse (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  i32.const 1
  global.set $~argumentsLength
  local.get $1
  i32.load
  call_indirect $0 (type $i32_=>_none)
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=20
  local.tee $2
  i32.store
  i32.const 0
  local.set $3
  local.get $2
  call $~lib/array/Array<src/as/core/Object3D/Object3D>#get:length
  local.set $4
  loop $for-loop|0
   local.get $3
   local.get $4
   i32.lt_s
   local.set $5
   local.get $5
   if
    local.get $2
    local.get $3
    call $~lib/array/Array<src/as/core/Object3D/Object3D>#__get
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=4
    local.get $6
    local.get $1
    call $src/as/core/Object3D/Object3D#traverse
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/as/core/Object3D/Object3D#updateMatrix (param $0 i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $0
  i32.load offset=44
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  local.get $0
  i32.load offset=24
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  local.get $0
  i32.load offset=32
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $1
  local.get $0
  i32.load offset=36
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=12
  local.get $1
  call $src/as/math/Matrix4/Matrix4#compose
  drop
  local.get $0
  i32.const 1
  call $src/as/core/Object3D/Object3D#set:matrixWorldNeedsUpdate
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/as/core/Object3D/Object3D#updateMatrixWorld (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $0
  i32.load8_u offset=52
  if
   local.get $0
   call $src/as/core/Object3D/Object3D#updateMatrix
  end
  local.get $0
  i32.load8_u offset=53
  if (result i32)
   i32.const 1
  else
   local.get $1
  end
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=16
   local.tee $2
   i32.store
   local.get $2
   i32.const 0
   i32.eq
   if
    local.get $0
    i32.load offset=48
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=4
    local.get $6
    local.get $0
    i32.load offset=44
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=8
    local.get $6
    call $src/as/math/Matrix4/Matrix4#copy
    drop
   else
    local.get $0
    i32.load offset=48
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=4
    local.get $6
    local.get $2
    i32.load offset=48
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=8
    local.get $6
    local.get $0
    i32.load offset=44
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=12
    local.get $6
    call $src/as/math/Matrix4/Matrix4#multiplyMatrices
    drop
   end
   local.get $0
   i32.const 0
   call $src/as/core/Object3D/Object3D#set:matrixWorldNeedsUpdate
   i32.const 1
   local.set $1
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=20
  local.tee $2
  i32.store
  i32.const 0
  local.set $3
  local.get $2
  call $~lib/array/Array<src/as/core/Object3D/Object3D>#get:length
  local.set $4
  loop $for-loop|0
   local.get $3
   local.get $4
   i32.lt_s
   local.set $5
   local.get $5
   if
    local.get $2
    local.get $3
    call $~lib/array/Array<src/as/core/Object3D/Object3D>#__get
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=4
    local.get $6
    local.get $1
    call $src/as/core/Object3D/Object3D#updateMatrixWorld
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $src/as/math/Box3/Box3#set (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.load offset=4
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $1
  call $src/as/math/Vector3/Vector3#copy
  drop
  local.get $0
  i32.load
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $2
  call $src/as/math/Vector3/Vector3#copy
  drop
  local.get $0
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $src/as/math/Box3/Box3#expandByPoint (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.load offset=4
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $1
  call $src/as/math/Vector3/Vector3#min
  drop
  local.get $0
  i32.load
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $1
  call $src/as/math/Vector3/Vector3#max
  drop
  local.get $0
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $src/as/math/Box3/Box3#setFromPoints (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  call $src/as/math/Box3/Box3#makeEmpty
  drop
  i32.const 0
  local.set $2
  local.get $1
  call $~lib/array/Array<src/as/math/Vector3/Vector3>#get:length
  local.set $3
  loop $for-loop|0
   local.get $2
   local.get $3
   i32.lt_s
   local.set $4
   local.get $4
   if
    local.get $0
    local.get $1
    local.get $2
    call $~lib/array/Array<src/as/math/Vector3/Vector3>#__get
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store
    local.get $5
    call $src/as/math/Box3/Box3#expandByPoint
    drop
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|0
   end
  end
  local.get $0
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $src/as/math/Box3/Box3#copy (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  i32.load offset=4
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $1
  i32.load offset=4
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $src/as/math/Vector3/Vector3#copy
  drop
  local.get $0
  i32.load
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $1
  i32.load
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $src/as/math/Vector3/Vector3#copy
  drop
  local.get $0
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $src/as/math/Box3/Box3#getCenter (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $0
  call $src/as/math/Box3/Box3#isEmpty
  if (result i32)
   local.get $1
   f32.const 0
   f32.const 0
   f32.const 0
   call $src/as/math/Vector3/Vector3#set
  else
   local.get $1
   local.get $0
   i32.load offset=4
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $2
   local.get $0
   i32.load
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $2
   call $src/as/math/Vector3/Vector3#addVectors
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   f32.const 0.5
   call $src/as/math/Vector3/Vector3#multiplyScalar
  end
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $src/as/math/Box3/Box3#getSize (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  call $src/as/math/Box3/Box3#isEmpty
  if (result i32)
   local.get $1
   f32.const 0
   f32.const 0
   f32.const 0
   call $src/as/math/Vector3/Vector3#set
  else
   local.get $1
   local.get $0
   i32.load
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   local.get $0
   i32.load offset=4
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $2
   call $src/as/math/Vector3/Vector3#subVectors
  end
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $src/as/math/Box3/Box3#expandByScalar (param $0 i32) (param $1 f32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.load offset=4
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $1
  f32.neg
  call $src/as/math/Vector3/Vector3#addScalar
  drop
  local.get $0
  i32.load
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $1
  call $src/as/math/Vector3/Vector3#addScalar
  drop
  local.get $0
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $src/as/math/Box3/Box3#applyMatrix4 (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $0
  call $src/as/math/Box3/Box3#isEmpty
  if
   local.get $0
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   return
  end
  global.get $src/as/math/Box3/points
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  i32.const 0
  call $~lib/array/Array<src/as/math/Vector3/Vector3>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $0
  i32.load offset=4
  f32.load
  local.get $0
  i32.load offset=4
  f32.load offset=4
  local.get $0
  i32.load offset=4
  f32.load offset=8
  call $src/as/math/Vector3/Vector3#set
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $1
  call $src/as/math/Vector3/Vector3#applyMatrix4
  drop
  global.get $src/as/math/Box3/points
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  i32.const 1
  call $~lib/array/Array<src/as/math/Vector3/Vector3>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $0
  i32.load offset=4
  f32.load
  local.get $0
  i32.load offset=4
  f32.load offset=4
  local.get $0
  i32.load
  f32.load offset=8
  call $src/as/math/Vector3/Vector3#set
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $1
  call $src/as/math/Vector3/Vector3#applyMatrix4
  drop
  global.get $src/as/math/Box3/points
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  i32.const 2
  call $~lib/array/Array<src/as/math/Vector3/Vector3>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $0
  i32.load offset=4
  f32.load
  local.get $0
  i32.load
  f32.load offset=4
  local.get $0
  i32.load offset=4
  f32.load offset=8
  call $src/as/math/Vector3/Vector3#set
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $1
  call $src/as/math/Vector3/Vector3#applyMatrix4
  drop
  global.get $src/as/math/Box3/points
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  i32.const 3
  call $~lib/array/Array<src/as/math/Vector3/Vector3>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $0
  i32.load offset=4
  f32.load
  local.get $0
  i32.load
  f32.load offset=4
  local.get $0
  i32.load
  f32.load offset=8
  call $src/as/math/Vector3/Vector3#set
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $1
  call $src/as/math/Vector3/Vector3#applyMatrix4
  drop
  global.get $src/as/math/Box3/points
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  i32.const 4
  call $~lib/array/Array<src/as/math/Vector3/Vector3>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $0
  i32.load
  f32.load
  local.get $0
  i32.load offset=4
  f32.load offset=4
  local.get $0
  i32.load offset=4
  f32.load offset=8
  call $src/as/math/Vector3/Vector3#set
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $1
  call $src/as/math/Vector3/Vector3#applyMatrix4
  drop
  global.get $src/as/math/Box3/points
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  i32.const 5
  call $~lib/array/Array<src/as/math/Vector3/Vector3>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $0
  i32.load
  f32.load
  local.get $0
  i32.load offset=4
  f32.load offset=4
  local.get $0
  i32.load
  f32.load offset=8
  call $src/as/math/Vector3/Vector3#set
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $1
  call $src/as/math/Vector3/Vector3#applyMatrix4
  drop
  global.get $src/as/math/Box3/points
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  i32.const 6
  call $~lib/array/Array<src/as/math/Vector3/Vector3>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $0
  i32.load
  f32.load
  local.get $0
  i32.load
  f32.load offset=4
  local.get $0
  i32.load offset=4
  f32.load offset=8
  call $src/as/math/Vector3/Vector3#set
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $1
  call $src/as/math/Vector3/Vector3#applyMatrix4
  drop
  global.get $src/as/math/Box3/points
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  i32.const 7
  call $~lib/array/Array<src/as/math/Vector3/Vector3>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $0
  i32.load
  f32.load
  local.get $0
  i32.load
  f32.load offset=4
  local.get $0
  i32.load
  f32.load offset=8
  call $src/as/math/Vector3/Vector3#set
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $1
  call $src/as/math/Vector3/Vector3#applyMatrix4
  drop
  local.get $0
  global.get $src/as/math/Box3/points
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $src/as/math/Box3/Box3#setFromPoints
  drop
  local.get $0
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $src/as/math/Box3/Box3#translate (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.load offset=4
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $1
  call $src/as/math/Vector3/Vector3#add
  drop
  local.get $0
  i32.load
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $1
  call $src/as/math/Vector3/Vector3#add
  drop
  local.get $0
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $src/as/math/Box3/Box3#equals (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $1
  i32.load offset=4
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $0
  i32.load offset=4
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $src/as/math/Vector3/Vector3#equals
  if (result i32)
   local.get $1
   i32.load
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   local.get $0
   i32.load
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=4
   local.get $2
   call $src/as/math/Vector3/Vector3#equals
  else
   i32.const 0
  end
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $src/as/math/Box3/compareBox (param $0 i32) (param $1 i32) (param $2 f32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  i32.load offset=4
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $1
  i32.load offset=4
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  call $src/as/math/Vector3/Vector3#distanceTo
  local.get $2
  f32.lt
  if (result i32)
   local.get $0
   i32.load
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   local.get $1
   i32.load
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   call $src/as/math/Vector3/Vector3#distanceTo
   local.get $2
   f32.lt
  else
   i32.const 0
  end
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $src/as/math/Color/Color#getHexString (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  i32.const 2288
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  local.get $0
  call $src/as/math/Color/Color#getHex
  i32.const 16
  call $~lib/number/I32#toString
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $1
  call $~lib/string/String.__concat
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  i32.const -6
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/string/String#slice
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $src/as/math/Color/Color#getStyle (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=16
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=24
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=32
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=40
  local.get $0
  f32.load
  f32.const 255
  f32.mul
  i32.trunc_f32_s
  local.set $1
  local.get $0
  f32.load offset=4
  f32.const 255
  f32.mul
  i32.trunc_f32_s
  local.set $2
  local.get $0
  f32.load offset=8
  f32.const 255
  f32.mul
  i32.trunc_f32_s
  local.set $3
  i32.const 4096
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=40
  local.get $4
  local.get $1
  i32.const 10
  call $~lib/number/I32#toString
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=44
  local.get $4
  call $~lib/string/String.__concat
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=32
  local.get $4
  i32.const 4128
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=36
  local.get $4
  call $~lib/string/String.__concat
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=24
  local.get $4
  local.get $2
  i32.const 10
  call $~lib/number/I32#toString
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=28
  local.get $4
  call $~lib/string/String.__concat
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=16
  local.get $4
  i32.const 4128
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=20
  local.get $4
  call $~lib/string/String.__concat
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=8
  local.get $4
  local.get $3
  i32.const 10
  call $~lib/number/I32#toString
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=12
  local.get $4
  call $~lib/string/String.__concat
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  i32.const 4160
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  call $~lib/string/String.__concat
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 48
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $src/as/math/Euler/Euler#setFromQuaternion (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $src/as/math/Euler/matrix
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  local.get $1
  call $src/as/math/Matrix4/Matrix4#makeRotationFromQuaternion
  drop
  local.get $0
  global.get $src/as/math/Euler/matrix
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=4
  local.get $4
  local.get $2
  local.get $3
  call $src/as/math/Euler/Euler#setFromRotationMatrix
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $src/as/math/Plane/Plane#copy (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  i32.load
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $1
  i32.load
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $src/as/math/Vector3/Vector3#copy
  drop
  local.get $0
  local.get $1
  f32.load offset=4
  call $src/as/math/Plane/Plane#set:constant
  local.get $0
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $src/as/math/Frustum/Frustum#set (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (result i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  local.tee $7
  i32.store
  local.get $7
  i32.const 0
  call $~lib/array/Array<src/as/math/Plane/Plane>#__get
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  local.get $1
  call $src/as/math/Plane/Plane#copy
  drop
  local.get $7
  i32.const 1
  call $~lib/array/Array<src/as/math/Plane/Plane>#__get
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  local.get $2
  call $src/as/math/Plane/Plane#copy
  drop
  local.get $7
  i32.const 2
  call $~lib/array/Array<src/as/math/Plane/Plane>#__get
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  local.get $3
  call $src/as/math/Plane/Plane#copy
  drop
  local.get $7
  i32.const 3
  call $~lib/array/Array<src/as/math/Plane/Plane>#__get
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  local.get $4
  call $src/as/math/Plane/Plane#copy
  drop
  local.get $7
  i32.const 4
  call $~lib/array/Array<src/as/math/Plane/Plane>#__get
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  local.get $5
  call $src/as/math/Plane/Plane#copy
  drop
  local.get $7
  i32.const 5
  call $~lib/array/Array<src/as/math/Plane/Plane>#__get
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  local.get $6
  call $src/as/math/Plane/Plane#copy
  drop
  local.get $0
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
 )
 (func $src/as/math/Frustum/Frustum#copy (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  local.tee $2
  i32.store
  i32.const 0
  local.set $3
  loop $for-loop|0
   local.get $3
   i32.const 6
   i32.lt_s
   local.set $4
   local.get $4
   if
    local.get $2
    local.get $3
    call $~lib/array/Array<src/as/math/Plane/Plane>#__get
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=4
    local.get $5
    local.get $1
    i32.load
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=12
    local.get $5
    local.get $3
    call $~lib/array/Array<src/as/math/Plane/Plane>#__get
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=8
    local.get $5
    call $src/as/math/Plane/Plane#copy
    drop
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  local.get $0
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $src/as/math/Plane/Plane#setComponents (param $0 i32) (param $1 f32) (param $2 f32) (param $3 f32) (param $4 f32) (result i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.load
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  local.get $1
  local.get $2
  local.get $3
  call $src/as/math/Vector3/Vector3#set
  drop
  local.get $0
  local.get $4
  call $src/as/math/Plane/Plane#set:constant
  local.get $0
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $src/as/math/Plane/Plane#normalize (param $0 i32) (result i32)
  (local $1 f32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  f32.const 1
  local.get $0
  i32.load
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $src/as/math/Vector3/Vector3#length
  f32.div
  local.set $1
  local.get $0
  i32.load
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $1
  call $src/as/math/Vector3/Vector3#multiplyScalar
  drop
  local.get $0
  local.get $0
  f32.load offset=4
  local.get $1
  f32.mul
  call $src/as/math/Plane/Plane#set:constant
  local.get $0
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $src/as/math/Frustum/Frustum#setFromProjectionMatrix (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 f32)
  (local $6 f32)
  (local $7 f32)
  (local $8 f32)
  (local $9 f32)
  (local $10 f32)
  (local $11 f32)
  (local $12 f32)
  (local $13 f32)
  (local $14 f32)
  (local $15 f32)
  (local $16 f32)
  (local $17 f32)
  (local $18 f32)
  (local $19 f32)
  (local $20 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load
  local.tee $3
  i32.store offset=4
  local.get $3
  i32.const 0
  call $~lib/array/Array<f32>#__get
  local.set $4
  local.get $3
  i32.const 1
  call $~lib/array/Array<f32>#__get
  local.set $5
  local.get $3
  i32.const 2
  call $~lib/array/Array<f32>#__get
  local.set $6
  local.get $3
  i32.const 3
  call $~lib/array/Array<f32>#__get
  local.set $7
  local.get $3
  i32.const 4
  call $~lib/array/Array<f32>#__get
  local.set $8
  local.get $3
  i32.const 5
  call $~lib/array/Array<f32>#__get
  local.set $9
  local.get $3
  i32.const 6
  call $~lib/array/Array<f32>#__get
  local.set $10
  local.get $3
  i32.const 7
  call $~lib/array/Array<f32>#__get
  local.set $11
  local.get $3
  i32.const 8
  call $~lib/array/Array<f32>#__get
  local.set $12
  local.get $3
  i32.const 9
  call $~lib/array/Array<f32>#__get
  local.set $13
  local.get $3
  i32.const 10
  call $~lib/array/Array<f32>#__get
  local.set $14
  local.get $3
  i32.const 11
  call $~lib/array/Array<f32>#__get
  local.set $15
  local.get $3
  i32.const 12
  call $~lib/array/Array<f32>#__get
  local.set $16
  local.get $3
  i32.const 13
  call $~lib/array/Array<f32>#__get
  local.set $17
  local.get $3
  i32.const 14
  call $~lib/array/Array<f32>#__get
  local.set $18
  local.get $3
  i32.const 15
  call $~lib/array/Array<f32>#__get
  local.set $19
  local.get $2
  i32.const 0
  call $~lib/array/Array<src/as/math/Plane/Plane>#__get
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=12
  local.get $20
  local.get $7
  local.get $4
  f32.sub
  local.get $11
  local.get $8
  f32.sub
  local.get $15
  local.get $12
  f32.sub
  local.get $19
  local.get $16
  f32.sub
  call $src/as/math/Plane/Plane#setComponents
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=8
  local.get $20
  call $src/as/math/Plane/Plane#normalize
  drop
  local.get $2
  i32.const 1
  call $~lib/array/Array<src/as/math/Plane/Plane>#__get
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=12
  local.get $20
  local.get $7
  local.get $4
  f32.add
  local.get $11
  local.get $8
  f32.add
  local.get $15
  local.get $12
  f32.add
  local.get $19
  local.get $16
  f32.add
  call $src/as/math/Plane/Plane#setComponents
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=8
  local.get $20
  call $src/as/math/Plane/Plane#normalize
  drop
  local.get $2
  i32.const 2
  call $~lib/array/Array<src/as/math/Plane/Plane>#__get
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=12
  local.get $20
  local.get $7
  local.get $5
  f32.add
  local.get $11
  local.get $9
  f32.add
  local.get $15
  local.get $13
  f32.add
  local.get $19
  local.get $17
  f32.add
  call $src/as/math/Plane/Plane#setComponents
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=8
  local.get $20
  call $src/as/math/Plane/Plane#normalize
  drop
  local.get $2
  i32.const 3
  call $~lib/array/Array<src/as/math/Plane/Plane>#__get
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=12
  local.get $20
  local.get $7
  local.get $5
  f32.sub
  local.get $11
  local.get $9
  f32.sub
  local.get $15
  local.get $13
  f32.sub
  local.get $19
  local.get $17
  f32.sub
  call $src/as/math/Plane/Plane#setComponents
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=8
  local.get $20
  call $src/as/math/Plane/Plane#normalize
  drop
  local.get $2
  i32.const 4
  call $~lib/array/Array<src/as/math/Plane/Plane>#__get
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=12
  local.get $20
  local.get $7
  local.get $6
  f32.sub
  local.get $11
  local.get $10
  f32.sub
  local.get $15
  local.get $14
  f32.sub
  local.get $19
  local.get $18
  f32.sub
  call $src/as/math/Plane/Plane#setComponents
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=8
  local.get $20
  call $src/as/math/Plane/Plane#normalize
  drop
  local.get $2
  i32.const 5
  call $~lib/array/Array<src/as/math/Plane/Plane>#__get
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=12
  local.get $20
  local.get $7
  local.get $6
  f32.add
  local.get $11
  local.get $10
  f32.add
  local.get $15
  local.get $14
  f32.add
  local.get $19
  local.get $18
  f32.add
  call $src/as/math/Plane/Plane#setComponents
  local.set $20
  global.get $~lib/memory/__stack_pointer
  local.get $20
  i32.store offset=8
  local.get $20
  call $src/as/math/Plane/Plane#normalize
  drop
  local.get $0
  local.set $20
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $20
 )
 (func $src/as/math/Plane/Plane#distanceToPoint (param $0 i32) (param $1 i32) (result f32)
  (local $2 i32)
  (local $3 f32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.load
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $1
  call $src/as/math/Vector3/Vector3#dot
  local.get $0
  f32.load offset=4
  f32.add
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $src/as/math/Frustum/Frustum#intersectsSphere (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 i32)
  (local $6 i32)
  (local $7 f32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load
  local.tee $3
  i32.store offset=4
  local.get $1
  f32.load offset=4
  f32.neg
  local.set $4
  i32.const 0
  local.set $5
  loop $for-loop|0
   local.get $5
   i32.const 6
   i32.lt_s
   local.set $6
   local.get $6
   if
    local.get $2
    local.get $5
    call $~lib/array/Array<src/as/math/Plane/Plane>#__get
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store offset=8
    local.get $8
    local.get $3
    call $src/as/math/Plane/Plane#distanceToPoint
    local.set $7
    local.get $7
    local.get $4
    f32.lt
    if
     i32.const 0
     local.set $8
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $8
     return
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $for-loop|0
   end
  end
  i32.const 1
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
 )
 (func $src/as/math/Frustum/Frustum#intersectsBox (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  local.tee $2
  i32.store
  i32.const 0
  local.set $3
  loop $for-loop|0
   local.get $3
   i32.const 6
   i32.lt_s
   local.set $4
   local.get $4
   if
    global.get $~lib/memory/__stack_pointer
    local.get $2
    local.get $3
    call $~lib/array/Array<src/as/math/Plane/Plane>#__get
    local.tee $5
    i32.store offset=4
    global.get $src/as/math/Frustum/_vector
    local.get $5
    i32.load
    f32.load
    f32.const 0
    f32.gt
    if (result f32)
     local.get $1
     i32.load
     f32.load
    else
     local.get $1
     i32.load offset=4
     f32.load
    end
    call $src/as/math/Vector3/Vector3#set:x
    global.get $src/as/math/Frustum/_vector
    local.get $5
    i32.load
    f32.load offset=4
    f32.const 0
    f32.gt
    if (result f32)
     local.get $1
     i32.load
     f32.load offset=4
    else
     local.get $1
     i32.load offset=4
     f32.load offset=4
    end
    call $src/as/math/Vector3/Vector3#set:y
    global.get $src/as/math/Frustum/_vector
    local.get $5
    i32.load
    f32.load offset=8
    f32.const 0
    f32.gt
    if (result f32)
     local.get $1
     i32.load
     f32.load offset=8
    else
     local.get $1
     i32.load offset=4
     f32.load offset=8
    end
    call $src/as/math/Vector3/Vector3#set:z
    local.get $5
    global.get $src/as/math/Frustum/_vector
    local.set $6
    global.get $~lib/memory/__stack_pointer
    local.get $6
    i32.store offset=8
    local.get $6
    call $src/as/math/Plane/Plane#distanceToPoint
    f32.const 0
    f32.lt
    if
     i32.const 0
     local.set $6
     global.get $~lib/memory/__stack_pointer
     i32.const 12
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $6
     return
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  i32.const 1
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $src/as/math/Frustum/Frustum#containsPoint (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  local.tee $2
  i32.store
  i32.const 0
  local.set $3
  loop $for-loop|0
   local.get $3
   i32.const 6
   i32.lt_s
   local.set $4
   local.get $4
   if
    local.get $2
    local.get $3
    call $~lib/array/Array<src/as/math/Plane/Plane>#__get
    local.set $5
    global.get $~lib/memory/__stack_pointer
    local.get $5
    i32.store offset=4
    local.get $5
    local.get $1
    call $src/as/math/Plane/Plane#distanceToPoint
    f32.const 0
    f32.lt
    if
     i32.const 0
     local.set $5
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $5
     return
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  i32.const 1
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $src/as/math/Color/HSL#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  f32.const 0
  call $src/as/math/Color/HSL#set:h
  local.get $0
  f32.const 0
  call $src/as/math/Color/HSL#set:s
  local.get $0
  f32.const 0
  call $src/as/math/Color/HSL#set:l
  local.get $0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/rt/__newArray (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  local.get $1
  i32.shl
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.const 0
  local.get $3
  call $~lib/rt/__newBuffer
  local.tee $5
  i32.store
  i32.const 16
  local.get $2
  call $~lib/rt/itcms/__new
  local.set $6
  local.get $6
  local.get $5
  i32.store
  local.get $6
  local.get $5
  i32.const 0
  call $~lib/rt/itcms/__link
  local.get $6
  local.get $5
  i32.store offset=4
  local.get $6
  local.get $4
  i32.store offset=8
  local.get $6
  local.get $0
  i32.store offset=12
  local.get $6
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $src/as/math/Matrix4/Matrix4#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 5
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 16
  i32.const 2
  i32.const 6
  i32.const 432
  call $~lib/rt/__newArray
  call $src/as/math/Matrix4/Matrix4#set:elements
  local.get $0
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $src/as/math/Quaternion/Quaternion#constructor (param $0 i32) (param $1 f32) (param $2 f32) (param $3 f32) (param $4 f32) (result i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.const 8
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  f32.const 0
  call $src/as/math/Quaternion/Quaternion#set:_x
  local.get $0
  f32.const 0
  call $src/as/math/Quaternion/Quaternion#set:_y
  local.get $0
  f32.const 0
  call $src/as/math/Quaternion/Quaternion#set:_z
  local.get $0
  f32.const 0
  call $src/as/math/Quaternion/Quaternion#set:_w
  local.get $0
  i32.const 1
  call $src/as/math/Quaternion/Quaternion#set:isQuaternion
  local.get $0
  i32.const 528
  call $src/as/math/Quaternion/Quaternion#set:onChangeCallback
  local.get $0
  local.get $1
  call $src/as/math/Quaternion/Quaternion#set:_x
  local.get $0
  local.get $2
  call $src/as/math/Quaternion/Quaternion#set:_y
  local.get $0
  local.get $3
  call $src/as/math/Quaternion/Quaternion#set:_z
  local.get $0
  local.get $4
  call $src/as/math/Quaternion/Quaternion#set:_w
  local.get $0
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $src/as/math/Box3/Box3#constructor (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 9
   i32.const 21
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 0
  call $src/as/math/Box3/Box3#set:max
  local.get $0
  i32.const 0
  call $src/as/math/Box3/Box3#set:min
  local.get $0
  i32.const 1
  call $src/as/math/Box3/Box3#set:isBox3
  local.get $0
  local.get $1
  call $src/as/math/Box3/Box3#set:min
  local.get $0
  local.get $2
  call $src/as/math/Box3/Box3#set:max
  local.get $0
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $src/as/math/Box3/Box3#constructor@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    f32.const inf
    f32.const inf
    f32.const inf
    call $src/as/math/Vector3/Vector3#constructor
    local.tee $1
    i32.store
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   f32.const inf
   f32.neg
   f32.const inf
   f32.neg
   f32.const inf
   f32.neg
   call $src/as/math/Vector3/Vector3#constructor
   local.tee $2
   i32.store offset=4
  end
  local.get $0
  local.get $1
  local.get $2
  call $src/as/math/Box3/Box3#constructor
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $src/as/math/Sphere/Sphere#constructor (param $0 i32) (param $1 i32) (param $2 f32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 22
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 0
  call $src/as/math/Sphere/Sphere#set:center
  local.get $0
  f32.const 0
  call $src/as/math/Sphere/Sphere#set:radius
  local.get $0
  local.get $1
  call $src/as/math/Sphere/Sphere#set:center
  local.get $0
  local.get $2
  call $src/as/math/Sphere/Sphere#set:radius
  local.get $0
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $src/as/math/Sphere/Sphere#constructor@varargs (param $0 i32) (param $1 i32) (param $2 f32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    f32.const 0
    f32.const 0
    f32.const 0
    call $src/as/math/Vector3/Vector3#constructor
    local.tee $1
    i32.store
   end
   f32.const 0
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $src/as/math/Sphere/Sphere#constructor
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $src/as/core/Layers/Layers#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 19
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 1
  i32.const 0
  i32.or
  call $src/as/core/Layers/Layers#set:mask
  local.get $0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $src/as/core/EventTargetable/EventTargetable#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 13
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 784
   i32.const 832
   i32.const 52
   i32.const 43
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Incremental
  i32.ne
  drop
  local.get $2
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/map/Map<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.const 16
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>#set:buckets
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  call $~lib/map/Map<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>#set:bucketsMask
  local.get $0
  i32.const 0
  i32.const 4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  call $~lib/map/Map<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>#set:entries
  local.get $0
  i32.const 4
  call $~lib/map/Map<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>#set:entriesCapacity
  local.get $0
  i32.const 0
  call $~lib/map/Map<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>#set:entriesOffset
  local.get $0
  i32.const 0
  call $~lib/map/Map<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>#set:entriesCount
  local.get $0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $src/as/core/EventDispatcher/EventDispatcher#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 12
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  call $src/as/core/EventTargetable/EventTargetable#constructor
  local.tee $0
  i32.store
  local.get $0
  i32.const 0
  call $~lib/map/Map<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>#constructor
  call $src/as/core/EventDispatcher/EventDispatcher#set:_listeners
  local.get $0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $src/as/math/Euler/Euler#constructor (param $0 i32) (param $1 f32) (param $2 f32) (param $3 f32) (param $4 i32) (result i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.const 18
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 1
  call $src/as/math/Euler/Euler#set:isEuler
  local.get $0
  f32.const 0
  call $src/as/math/Euler/Euler#set:_x
  local.get $0
  f32.const 0
  call $src/as/math/Euler/Euler#set:_y
  local.get $0
  f32.const 0
  call $src/as/math/Euler/Euler#set:_z
  local.get $0
  i32.const 0
  call $src/as/math/Euler/Euler#set:_order
  local.get $0
  i32.const 1232
  call $src/as/math/Euler/Euler#set:onChangeCallback
  local.get $0
  local.get $1
  call $src/as/math/Euler/Euler#set:_x
  local.get $0
  local.get $2
  call $src/as/math/Euler/Euler#set:_y
  local.get $0
  local.get $3
  call $src/as/math/Euler/Euler#set:_z
  local.get $0
  local.get $4
  call $src/as/math/Euler/Euler#set:_order
  local.get $0
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $~lib/array/Array<src/as/core/EventDispatcher/Listener>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.const 15
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 0
  call $~lib/array/Array<src/as/core/EventDispatcher/Listener>#set:buffer
  local.get $0
  i32.const 0
  call $~lib/array/Array<src/as/core/EventDispatcher/Listener>#set:dataStart
  local.get $0
  i32.const 0
  call $~lib/array/Array<src/as/core/EventDispatcher/Listener>#set:byteLength
  local.get $0
  i32.const 0
  call $~lib/array/Array<src/as/core/EventDispatcher/Listener>#set:length_
  local.get $1
  i32.const 1073741820
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   i32.const 784
   i32.const 1328
   i32.const 70
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.tee $2
  i32.const 8
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  i32.const 2
  i32.shl
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.const 0
  call $~lib/rt/itcms/__new
  local.tee $5
  i32.store offset=4
  i32.const 2
  global.get $~lib/shared/runtime/Runtime.Incremental
  i32.ne
  drop
  local.get $0
  local.get $5
  call $~lib/array/Array<src/as/core/EventDispatcher/Listener>#set:buffer
  local.get $0
  local.get $5
  call $~lib/array/Array<src/as/core/EventDispatcher/Listener>#set:dataStart
  local.get $0
  local.get $4
  call $~lib/array/Array<src/as/core/EventDispatcher/Listener>#set:byteLength
  local.get $0
  local.get $1
  call $~lib/array/Array<src/as/core/EventDispatcher/Listener>#set:length_
  local.get $0
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $~lib/map/Map<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>#set (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  call $~lib/util/hash/HASH<~lib/string/String>
  local.set $3
  local.get $0
  local.get $1
  local.get $3
  call $~lib/map/Map<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>#find
  local.set $4
  local.get $4
  if
   local.get $4
   local.get $2
   call $~lib/map/MapEntry<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>#set:value
   i32.const 1
   drop
   local.get $0
   local.get $2
   i32.const 1
   call $~lib/rt/itcms/__link
  else
   local.get $0
   i32.load offset=16
   local.get $0
   i32.load offset=12
   i32.eq
   if
    local.get $0
    local.get $0
    i32.load offset=20
    local.get $0
    i32.load offset=12
    i32.const 3
    i32.mul
    i32.const 4
    i32.div_s
    i32.lt_s
    if (result i32)
     local.get $0
     i32.load offset=4
    else
     local.get $0
     i32.load offset=4
     i32.const 1
     i32.shl
     i32.const 1
     i32.or
    end
    call $~lib/map/Map<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>#rehash
   end
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=8
   local.tee $5
   i32.store
   local.get $5
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $6
   i32.const 1
   i32.add
   call $~lib/map/Map<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>#set:entriesOffset
   local.get $6
   i32.const 12
   i32.mul
   i32.add
   local.set $4
   local.get $4
   local.get $1
   call $~lib/map/MapEntry<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>#set:key
   i32.const 1
   drop
   local.get $0
   local.get $1
   i32.const 1
   call $~lib/rt/itcms/__link
   local.get $4
   local.get $2
   call $~lib/map/MapEntry<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>#set:value
   i32.const 1
   drop
   local.get $0
   local.get $2
   i32.const 1
   call $~lib/rt/itcms/__link
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   call $~lib/map/Map<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>#set:entriesCount
   local.get $0
   i32.load
   local.get $3
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $6
   local.get $4
   local.get $6
   i32.load
   call $~lib/map/MapEntry<~lib/string/String,~lib/array/Array<src/as/core/EventDispatcher/Listener>>#set:taggedNext
   local.get $6
   local.get $4
   i32.store
  end
  local.get $0
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $~lib/array/Array<src/as/core/EventDispatcher/Listener>#splice (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.load offset=12
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $3
   local.get $1
   i32.add
   local.tee $4
   i32.const 0
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
  else
   local.get $1
   local.tee $5
   local.get $3
   local.tee $4
   local.get $5
   local.get $4
   i32.lt_s
   select
  end
  local.set $1
  local.get $2
  local.tee $4
  local.get $3
  local.get $1
  i32.sub
  local.tee $5
  local.get $4
  local.get $5
  i32.lt_s
  select
  local.tee $5
  i32.const 0
  local.tee $4
  local.get $5
  local.get $4
  i32.gt_s
  select
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.const 2
  i32.const 15
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $6
  i32.store
  local.get $6
  i32.load offset=4
  local.set $7
  local.get $0
  i32.load offset=4
  local.set $8
  local.get $8
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.set $9
  local.get $7
  local.get $9
  local.get $2
  i32.const 2
  i32.shl
  call $~lib/memory/memory.copy
  local.get $1
  local.get $2
  i32.add
  local.set $10
  local.get $3
  local.get $10
  i32.ne
  if
   local.get $9
   local.get $8
   local.get $10
   i32.const 2
   i32.shl
   i32.add
   local.get $3
   local.get $10
   i32.sub
   i32.const 2
   i32.shl
   call $~lib/memory/memory.copy
  end
  local.get $0
  local.get $3
  local.get $2
  i32.sub
  call $~lib/array/Array<src/as/core/EventDispatcher/Listener>#set:length_
  local.get $6
  local.set $11
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $11
 )
 (func $~lib/array/Array<src/as/core/EventDispatcher/Listener>#slice (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.load offset=12
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $3
   i32.add
   local.tee $4
   i32.const 0
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
  else
   local.get $1
   local.tee $5
   local.get $3
   local.tee $4
   local.get $5
   local.get $4
   i32.lt_s
   select
  end
  local.set $1
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $2
   local.get $3
   i32.add
   local.tee $4
   i32.const 0
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
  else
   local.get $2
   local.tee $5
   local.get $3
   local.tee $4
   local.get $5
   local.get $4
   i32.lt_s
   select
  end
  local.set $2
  local.get $2
  local.get $1
  i32.sub
  local.tee $4
  i32.const 0
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_s
  select
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.const 2
  i32.const 15
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $6
  i32.store
  local.get $6
  i32.load offset=4
  local.set $7
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.set $8
  i32.const 1
  drop
  i32.const 0
  local.set $4
  local.get $3
  i32.const 2
  i32.shl
  local.set $5
  loop $while-continue|0
   local.get $4
   local.get $5
   i32.lt_u
   local.set $9
   local.get $9
   if
    local.get $8
    local.get $4
    i32.add
    i32.load
    local.set $10
    local.get $7
    local.get $4
    i32.add
    local.get $10
    i32.store
    local.get $6
    local.get $10
    i32.const 1
    call $~lib/rt/itcms/__link
    local.get $4
    i32.const 4
    i32.add
    local.set $4
    br $while-continue|0
   end
  end
  local.get $6
  local.set $11
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $11
 )
 (func $~lib/array/Array<src/as/core/EventDispatcher/Listener>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 224
   i32.const 1328
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $2
  i32.store
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $2
  i32.eqz
  if
   i32.const 1488
   i32.const 1328
   i32.const 118
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/array/Array<src/as/core/Object3D/Object3D>#splice (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.load offset=12
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $3
   local.get $1
   i32.add
   local.tee $4
   i32.const 0
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
  else
   local.get $1
   local.tee $5
   local.get $3
   local.tee $4
   local.get $5
   local.get $4
   i32.lt_s
   select
  end
  local.set $1
  local.get $2
  local.tee $4
  local.get $3
  local.get $1
  i32.sub
  local.tee $5
  local.get $4
  local.get $5
  i32.lt_s
  select
  local.tee $5
  i32.const 0
  local.tee $4
  local.get $5
  local.get $4
  i32.gt_s
  select
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.const 2
  i32.const 17
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $6
  i32.store
  local.get $6
  i32.load offset=4
  local.set $7
  local.get $0
  i32.load offset=4
  local.set $8
  local.get $8
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.set $9
  local.get $7
  local.get $9
  local.get $2
  i32.const 2
  i32.shl
  call $~lib/memory/memory.copy
  local.get $1
  local.get $2
  i32.add
  local.set $10
  local.get $3
  local.get $10
  i32.ne
  if
   local.get $9
   local.get $8
   local.get $10
   i32.const 2
   i32.shl
   i32.add
   local.get $3
   local.get $10
   i32.sub
   i32.const 2
   i32.shl
   call $~lib/memory/memory.copy
  end
  local.get $0
  local.get $3
  local.get $2
  i32.sub
  call $~lib/array/Array<src/as/core/Object3D/Object3D>#set:length_
  local.get $6
  local.set $11
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $11
 )
 (func $~lib/array/Array<src/as/core/Object3D/Object3D>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 224
   i32.const 1328
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $2
  i32.store
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $2
  i32.eqz
  if
   i32.const 1488
   i32.const 1328
   i32.const 118
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $src/as/math/Matrix4/Matrix4#compose (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 f32)
  (local $6 f32)
  (local $7 f32)
  (local $8 f32)
  (local $9 f32)
  (local $10 f32)
  (local $11 f32)
  (local $12 f32)
  (local $13 f32)
  (local $14 f32)
  (local $15 f32)
  (local $16 f32)
  (local $17 f32)
  (local $18 f32)
  (local $19 f32)
  (local $20 f32)
  (local $21 f32)
  (local $22 f32)
  (local $23 f32)
  (local $24 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  local.tee $4
  i32.store
  local.get $2
  f32.load
  local.set $5
  local.get $2
  f32.load offset=4
  local.set $6
  local.get $2
  f32.load offset=8
  local.set $7
  local.get $2
  f32.load offset=12
  local.set $8
  local.get $5
  local.get $5
  f32.add
  local.set $9
  local.get $6
  local.get $6
  f32.add
  local.set $10
  local.get $7
  local.get $7
  f32.add
  local.set $11
  local.get $5
  local.get $9
  f32.mul
  local.set $12
  local.get $5
  local.get $10
  f32.mul
  local.set $13
  local.get $5
  local.get $11
  f32.mul
  local.set $14
  local.get $6
  local.get $10
  f32.mul
  local.set $15
  local.get $6
  local.get $11
  f32.mul
  local.set $16
  local.get $7
  local.get $11
  f32.mul
  local.set $17
  local.get $8
  local.get $9
  f32.mul
  local.set $18
  local.get $8
  local.get $10
  f32.mul
  local.set $19
  local.get $8
  local.get $11
  f32.mul
  local.set $20
  local.get $3
  f32.load
  local.set $21
  local.get $3
  f32.load offset=4
  local.set $22
  local.get $3
  f32.load offset=8
  local.set $23
  local.get $4
  i32.const 0
  f32.const 1
  local.get $15
  local.get $17
  f32.add
  f32.sub
  local.get $21
  f32.mul
  call $~lib/array/Array<f32>#__set
  local.get $4
  i32.const 1
  local.get $13
  local.get $20
  f32.add
  local.get $21
  f32.mul
  call $~lib/array/Array<f32>#__set
  local.get $4
  i32.const 2
  local.get $14
  local.get $19
  f32.sub
  local.get $21
  f32.mul
  call $~lib/array/Array<f32>#__set
  local.get $4
  i32.const 3
  f32.const 0
  call $~lib/array/Array<f32>#__set
  local.get $4
  i32.const 4
  local.get $13
  local.get $20
  f32.sub
  local.get $22
  f32.mul
  call $~lib/array/Array<f32>#__set
  local.get $4
  i32.const 5
  f32.const 1
  local.get $12
  local.get $17
  f32.add
  f32.sub
  local.get $22
  f32.mul
  call $~lib/array/Array<f32>#__set
  local.get $4
  i32.const 6
  local.get $16
  local.get $18
  f32.add
  local.get $22
  f32.mul
  call $~lib/array/Array<f32>#__set
  local.get $4
  i32.const 7
  f32.const 0
  call $~lib/array/Array<f32>#__set
  local.get $4
  i32.const 8
  local.get $14
  local.get $19
  f32.add
  local.get $23
  f32.mul
  call $~lib/array/Array<f32>#__set
  local.get $4
  i32.const 9
  local.get $16
  local.get $18
  f32.sub
  local.get $23
  f32.mul
  call $~lib/array/Array<f32>#__set
  local.get $4
  i32.const 10
  f32.const 1
  local.get $12
  local.get $15
  f32.add
  f32.sub
  local.get $23
  f32.mul
  call $~lib/array/Array<f32>#__set
  local.get $4
  i32.const 11
  f32.const 0
  call $~lib/array/Array<f32>#__set
  local.get $4
  i32.const 12
  local.get $1
  f32.load
  call $~lib/array/Array<f32>#__set
  local.get $4
  i32.const 13
  local.get $1
  f32.load offset=4
  call $~lib/array/Array<f32>#__set
  local.get $4
  i32.const 14
  local.get $1
  f32.load offset=8
  call $~lib/array/Array<f32>#__set
  local.get $4
  i32.const 15
  f32.const 1
  call $~lib/array/Array<f32>#__set
  local.get $0
  local.set $24
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $24
 )
 (func $src/as/math/Matrix4/Matrix4#copy (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load
  local.tee $3
  i32.store offset=4
  local.get $2
  i32.const 0
  local.get $3
  i32.const 0
  call $~lib/array/Array<f32>#__get
  call $~lib/array/Array<f32>#__set
  local.get $2
  i32.const 1
  local.get $3
  i32.const 1
  call $~lib/array/Array<f32>#__get
  call $~lib/array/Array<f32>#__set
  local.get $2
  i32.const 2
  local.get $3
  i32.const 2
  call $~lib/array/Array<f32>#__get
  call $~lib/array/Array<f32>#__set
  local.get $2
  i32.const 3
  local.get $3
  i32.const 3
  call $~lib/array/Array<f32>#__get
  call $~lib/array/Array<f32>#__set
  local.get $2
  i32.const 4
  local.get $3
  i32.const 4
  call $~lib/array/Array<f32>#__get
  call $~lib/array/Array<f32>#__set
  local.get $2
  i32.const 5
  local.get $3
  i32.const 5
  call $~lib/array/Array<f32>#__get
  call $~lib/array/Array<f32>#__set
  local.get $2
  i32.const 6
  local.get $3
  i32.const 6
  call $~lib/array/Array<f32>#__get
  call $~lib/array/Array<f32>#__set
  local.get $2
  i32.const 7
  local.get $3
  i32.const 7
  call $~lib/array/Array<f32>#__get
  call $~lib/array/Array<f32>#__set
  local.get $2
  i32.const 8
  local.get $3
  i32.const 8
  call $~lib/array/Array<f32>#__get
  call $~lib/array/Array<f32>#__set
  local.get $2
  i32.const 9
  local.get $3
  i32.const 9
  call $~lib/array/Array<f32>#__get
  call $~lib/array/Array<f32>#__set
  local.get $2
  i32.const 10
  local.get $3
  i32.const 10
  call $~lib/array/Array<f32>#__get
  call $~lib/array/Array<f32>#__set
  local.get $2
  i32.const 11
  local.get $3
  i32.const 11
  call $~lib/array/Array<f32>#__get
  call $~lib/array/Array<f32>#__set
  local.get $2
  i32.const 12
  local.get $3
  i32.const 12
  call $~lib/array/Array<f32>#__get
  call $~lib/array/Array<f32>#__set
  local.get $2
  i32.const 13
  local.get $3
  i32.const 13
  call $~lib/array/Array<f32>#__get
  call $~lib/array/Array<f32>#__set
  local.get $2
  i32.const 14
  local.get $3
  i32.const 14
  call $~lib/array/Array<f32>#__get
  call $~lib/array/Array<f32>#__set
  local.get $2
  i32.const 15
  local.get $3
  i32.const 15
  call $~lib/array/Array<f32>#__get
  call $~lib/array/Array<f32>#__set
  local.get $0
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $src/as/math/Matrix4/Matrix4#multiplyMatrices (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f32)
  (local $7 f32)
  (local $8 f32)
  (local $9 f32)
  (local $10 f32)
  (local $11 f32)
  (local $12 f32)
  (local $13 f32)
  (local $14 f32)
  (local $15 f32)
  (local $16 f32)
  (local $17 f32)
  (local $18 f32)
  (local $19 f32)
  (local $20 f32)
  (local $21 f32)
  (local $22 f32)
  (local $23 f32)
  (local $24 f32)
  (local $25 f32)
  (local $26 f32)
  (local $27 f32)
  (local $28 f32)
  (local $29 f32)
  (local $30 f32)
  (local $31 f32)
  (local $32 f32)
  (local $33 f32)
  (local $34 f32)
  (local $35 f32)
  (local $36 f32)
  (local $37 f32)
  (local $38 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load
  local.tee $3
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.load
  local.tee $4
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  local.tee $5
  i32.store offset=8
  local.get $3
  i32.const 0
  call $~lib/array/Array<f32>#__get
  local.set $6
  local.get $3
  i32.const 4
  call $~lib/array/Array<f32>#__get
  local.set $7
  local.get $3
  i32.const 8
  call $~lib/array/Array<f32>#__get
  local.set $8
  local.get $3
  i32.const 12
  call $~lib/array/Array<f32>#__get
  local.set $9
  local.get $3
  i32.const 1
  call $~lib/array/Array<f32>#__get
  local.set $10
  local.get $3
  i32.const 5
  call $~lib/array/Array<f32>#__get
  local.set $11
  local.get $3
  i32.const 9
  call $~lib/array/Array<f32>#__get
  local.set $12
  local.get $3
  i32.const 13
  call $~lib/array/Array<f32>#__get
  local.set $13
  local.get $3
  i32.const 2
  call $~lib/array/Array<f32>#__get
  local.set $14
  local.get $3
  i32.const 6
  call $~lib/array/Array<f32>#__get
  local.set $15
  local.get $3
  i32.const 10
  call $~lib/array/Array<f32>#__get
  local.set $16
  local.get $3
  i32.const 14
  call $~lib/array/Array<f32>#__get
  local.set $17
  local.get $3
  i32.const 3
  call $~lib/array/Array<f32>#__get
  local.set $18
  local.get $3
  i32.const 7
  call $~lib/array/Array<f32>#__get
  local.set $19
  local.get $3
  i32.const 11
  call $~lib/array/Array<f32>#__get
  local.set $20
  local.get $3
  i32.const 15
  call $~lib/array/Array<f32>#__get
  local.set $21
  local.get $4
  i32.const 0
  call $~lib/array/Array<f32>#__get
  local.set $22
  local.get $4
  i32.const 4
  call $~lib/array/Array<f32>#__get
  local.set $23
  local.get $4
  i32.const 8
  call $~lib/array/Array<f32>#__get
  local.set $24
  local.get $4
  i32.const 12
  call $~lib/array/Array<f32>#__get
  local.set $25
  local.get $4
  i32.const 1
  call $~lib/array/Array<f32>#__get
  local.set $26
  local.get $4
  i32.const 5
  call $~lib/array/Array<f32>#__get
  local.set $27
  local.get $4
  i32.const 9
  call $~lib/array/Array<f32>#__get
  local.set $28
  local.get $4
  i32.const 13
  call $~lib/array/Array<f32>#__get
  local.set $29
  local.get $4
  i32.const 2
  call $~lib/array/Array<f32>#__get
  local.set $30
  local.get $4
  i32.const 6
  call $~lib/array/Array<f32>#__get
  local.set $31
  local.get $4
  i32.const 10
  call $~lib/array/Array<f32>#__get
  local.set $32
  local.get $4
  i32.const 14
  call $~lib/array/Array<f32>#__get
  local.set $33
  local.get $4
  i32.const 3
  call $~lib/array/Array<f32>#__get
  local.set $34
  local.get $4
  i32.const 7
  call $~lib/array/Array<f32>#__get
  local.set $35
  local.get $4
  i32.const 11
  call $~lib/array/Array<f32>#__get
  local.set $36
  local.get $4
  i32.const 15
  call $~lib/array/Array<f32>#__get
  local.set $37
  local.get $5
  i32.const 0
  local.get $6
  local.get $22
  f32.mul
  local.get $7
  local.get $26
  f32.mul
  f32.add
  local.get $8
  local.get $30
  f32.mul
  f32.add
  local.get $9
  local.get $34
  f32.mul
  f32.add
  call $~lib/array/Array<f32>#__set
  local.get $5
  i32.const 4
  local.get $6
  local.get $23
  f32.mul
  local.get $7
  local.get $27
  f32.mul
  f32.add
  local.get $8
  local.get $31
  f32.mul
  f32.add
  local.get $9
  local.get $35
  f32.mul
  f32.add
  call $~lib/array/Array<f32>#__set
  local.get $5
  i32.const 8
  local.get $6
  local.get $24
  f32.mul
  local.get $7
  local.get $28
  f32.mul
  f32.add
  local.get $8
  local.get $32
  f32.mul
  f32.add
  local.get $9
  local.get $36
  f32.mul
  f32.add
  call $~lib/array/Array<f32>#__set
  local.get $5
  i32.const 12
  local.get $6
  local.get $25
  f32.mul
  local.get $7
  local.get $29
  f32.mul
  f32.add
  local.get $8
  local.get $33
  f32.mul
  f32.add
  local.get $9
  local.get $37
  f32.mul
  f32.add
  call $~lib/array/Array<f32>#__set
  local.get $5
  i32.const 1
  local.get $10
  local.get $22
  f32.mul
  local.get $11
  local.get $26
  f32.mul
  f32.add
  local.get $12
  local.get $30
  f32.mul
  f32.add
  local.get $13
  local.get $34
  f32.mul
  f32.add
  call $~lib/array/Array<f32>#__set
  local.get $5
  i32.const 5
  local.get $10
  local.get $23
  f32.mul
  local.get $11
  local.get $27
  f32.mul
  f32.add
  local.get $12
  local.get $31
  f32.mul
  f32.add
  local.get $13
  local.get $35
  f32.mul
  f32.add
  call $~lib/array/Array<f32>#__set
  local.get $5
  i32.const 9
  local.get $10
  local.get $24
  f32.mul
  local.get $11
  local.get $28
  f32.mul
  f32.add
  local.get $12
  local.get $32
  f32.mul
  f32.add
  local.get $13
  local.get $36
  f32.mul
  f32.add
  call $~lib/array/Array<f32>#__set
  local.get $5
  i32.const 13
  local.get $10
  local.get $25
  f32.mul
  local.get $11
  local.get $29
  f32.mul
  f32.add
  local.get $12
  local.get $33
  f32.mul
  f32.add
  local.get $13
  local.get $37
  f32.mul
  f32.add
  call $~lib/array/Array<f32>#__set
  local.get $5
  i32.const 2
  local.get $14
  local.get $22
  f32.mul
  local.get $15
  local.get $26
  f32.mul
  f32.add
  local.get $16
  local.get $30
  f32.mul
  f32.add
  local.get $17
  local.get $34
  f32.mul
  f32.add
  call $~lib/array/Array<f32>#__set
  local.get $5
  i32.const 6
  local.get $14
  local.get $23
  f32.mul
  local.get $15
  local.get $27
  f32.mul
  f32.add
  local.get $16
  local.get $31
  f32.mul
  f32.add
  local.get $17
  local.get $35
  f32.mul
  f32.add
  call $~lib/array/Array<f32>#__set
  local.get $5
  i32.const 10
  local.get $14
  local.get $24
  f32.mul
  local.get $15
  local.get $28
  f32.mul
  f32.add
  local.get $16
  local.get $32
  f32.mul
  f32.add
  local.get $17
  local.get $36
  f32.mul
  f32.add
  call $~lib/array/Array<f32>#__set
  local.get $5
  i32.const 14
  local.get $14
  local.get $25
  f32.mul
  local.get $15
  local.get $29
  f32.mul
  f32.add
  local.get $16
  local.get $33
  f32.mul
  f32.add
  local.get $17
  local.get $37
  f32.mul
  f32.add
  call $~lib/array/Array<f32>#__set
  local.get $5
  i32.const 3
  local.get $18
  local.get $22
  f32.mul
  local.get $19
  local.get $26
  f32.mul
  f32.add
  local.get $20
  local.get $30
  f32.mul
  f32.add
  local.get $21
  local.get $34
  f32.mul
  f32.add
  call $~lib/array/Array<f32>#__set
  local.get $5
  i32.const 7
  local.get $18
  local.get $23
  f32.mul
  local.get $19
  local.get $27
  f32.mul
  f32.add
  local.get $20
  local.get $31
  f32.mul
  f32.add
  local.get $21
  local.get $35
  f32.mul
  f32.add
  call $~lib/array/Array<f32>#__set
  local.get $5
  i32.const 11
  local.get $18
  local.get $24
  f32.mul
  local.get $19
  local.get $28
  f32.mul
  f32.add
  local.get $20
  local.get $32
  f32.mul
  f32.add
  local.get $21
  local.get $36
  f32.mul
  f32.add
  call $~lib/array/Array<f32>#__set
  local.get $5
  i32.const 15
  local.get $18
  local.get $25
  f32.mul
  local.get $19
  local.get $29
  f32.mul
  f32.add
  local.get $20
  local.get $33
  f32.mul
  f32.add
  local.get $21
  local.get $37
  f32.mul
  f32.add
  call $~lib/array/Array<f32>#__set
  local.get $0
  local.set $38
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $38
 )
 (func $src/as/math/Box3/Box3#makeEmpty (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.load offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.store
  local.get $1
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.store
  local.get $1
  f32.const inf
  call $src/as/math/Vector3/Vector3#set:z
  local.get $1
  call $src/as/math/Vector3/Vector3#get:z
  call $src/as/math/Vector3/Vector3#set:y
  local.get $1
  call $src/as/math/Vector3/Vector3#get:y
  call $src/as/math/Vector3/Vector3#set:x
  local.get $0
  i32.load
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  local.tee $1
  i32.store
  local.get $1
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  local.tee $1
  i32.store
  local.get $1
  f32.const inf
  f32.neg
  call $src/as/math/Vector3/Vector3#set:z
  local.get $1
  call $src/as/math/Vector3/Vector3#get:z
  call $src/as/math/Vector3/Vector3#set:y
  local.get $1
  call $src/as/math/Vector3/Vector3#get:y
  call $src/as/math/Vector3/Vector3#set:x
  local.get $0
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $~lib/array/Array<src/as/math/Vector3/Vector3>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 224
   i32.const 1328
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $2
  i32.store
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $2
  i32.eqz
  if
   i32.const 1488
   i32.const 1328
   i32.const 118
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $src/as/math/Box3/Box3#clone (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 0
  i32.const 0
  global.set $~argumentsLength
  i32.const 0
  call $src/as/math/Box3/Box3#constructor@varargs
  local.tee $1
  i32.store
  local.get $1
  local.get $0
  call $src/as/math/Box3/Box3#copy
  drop
  local.get $1
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $src/as/math/Vector3/Vector3#applyMatrix4 (param $0 i32) (param $1 i32) (result i32)
  (local $2 f32)
  (local $3 f32)
  (local $4 f32)
  (local $5 i32)
  (local $6 f32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  f32.load
  local.set $2
  local.get $0
  f32.load offset=4
  local.set $3
  local.get $0
  f32.load offset=8
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load
  local.tee $5
  i32.store
  f32.const 1
  local.get $5
  i32.const 3
  call $~lib/array/Array<f32>#__get
  local.get $2
  f32.mul
  local.get $5
  i32.const 7
  call $~lib/array/Array<f32>#__get
  local.get $3
  f32.mul
  f32.add
  local.get $5
  i32.const 11
  call $~lib/array/Array<f32>#__get
  local.get $4
  f32.mul
  f32.add
  local.get $5
  i32.const 15
  call $~lib/array/Array<f32>#__get
  f32.add
  f32.div
  local.set $6
  local.get $0
  local.get $5
  i32.const 0
  call $~lib/array/Array<f32>#__get
  local.get $2
  f32.mul
  local.get $5
  i32.const 4
  call $~lib/array/Array<f32>#__get
  local.get $3
  f32.mul
  f32.add
  local.get $5
  i32.const 8
  call $~lib/array/Array<f32>#__get
  local.get $4
  f32.mul
  f32.add
  local.get $5
  i32.const 12
  call $~lib/array/Array<f32>#__get
  f32.add
  local.get $6
  f32.mul
  call $src/as/math/Vector3/Vector3#set:x
  local.get $0
  local.get $5
  i32.const 1
  call $~lib/array/Array<f32>#__get
  local.get $2
  f32.mul
  local.get $5
  i32.const 5
  call $~lib/array/Array<f32>#__get
  local.get $3
  f32.mul
  f32.add
  local.get $5
  i32.const 9
  call $~lib/array/Array<f32>#__get
  local.get $4
  f32.mul
  f32.add
  local.get $5
  i32.const 13
  call $~lib/array/Array<f32>#__get
  f32.add
  local.get $6
  f32.mul
  call $src/as/math/Vector3/Vector3#set:y
  local.get $0
  local.get $5
  i32.const 2
  call $~lib/array/Array<f32>#__get
  local.get $2
  f32.mul
  local.get $5
  i32.const 6
  call $~lib/array/Array<f32>#__get
  local.get $3
  f32.mul
  f32.add
  local.get $5
  i32.const 10
  call $~lib/array/Array<f32>#__get
  local.get $4
  f32.mul
  f32.add
  local.get $5
  i32.const 14
  call $~lib/array/Array<f32>#__get
  f32.add
  local.get $6
  f32.mul
  call $src/as/math/Vector3/Vector3#set:z
  local.get $0
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $src/as/math/Color/Colors#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 25
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $src/as/math/Color/Color#constructor (param $0 i32) (param $1 f32) (param $2 f32) (param $3 f32) (result i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 13
   i32.const 26
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  f32.const 0
  call $src/as/math/Color/Color#set:r
  local.get $0
  f32.const 0
  call $src/as/math/Color/Color#set:g
  local.get $0
  f32.const 0
  call $src/as/math/Color/Color#set:b
  local.get $0
  i32.const 1
  call $src/as/math/Color/Color#set:isColor
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $src/as/math/Color/Color#setRGB
  drop
  local.get $0
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $~lib/util/number/itoa32 (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  i32.const 2
  i32.lt_s
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.const 36
   i32.gt_s
  end
  if
   i32.const 2320
   i32.const 2448
   i32.const 373
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.eqz
  if
   i32.const 2512
   local.set $8
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $8
   return
  end
  local.get $0
  i32.const 31
  i32.shr_u
  local.set $2
  local.get $2
  if
   i32.const 0
   local.get $0
   i32.sub
   local.set $0
  end
  local.get $1
  i32.const 10
  i32.eq
  if
   local.get $0
   call $~lib/util/number/decimalCount32
   local.get $2
   i32.add
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.const 1
   i32.shl
   i32.const 1
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.store
   local.get $3
   local.set $7
   local.get $0
   local.set $6
   local.get $4
   local.set $5
   i32.const 0
   i32.const 1
   i32.ge_s
   drop
   local.get $7
   local.get $6
   local.get $5
   call $~lib/util/number/utoa32_dec_lut
  else
   local.get $1
   i32.const 16
   i32.eq
   if
    i32.const 31
    local.get $0
    i32.clz
    i32.sub
    i32.const 2
    i32.shr_s
    i32.const 1
    i32.add
    local.get $2
    i32.add
    local.set $4
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.const 1
    i32.shl
    i32.const 1
    call $~lib/rt/itcms/__new
    local.tee $3
    i32.store
    local.get $3
    local.set $7
    local.get $0
    local.set $6
    local.get $4
    local.set $5
    i32.const 0
    i32.const 1
    i32.ge_s
    drop
    local.get $7
    local.get $6
    i64.extend_i32_u
    local.get $5
    call $~lib/util/number/utoa_hex_lut
   else
    local.get $0
    local.set $4
    local.get $4
    i64.extend_i32_u
    local.get $1
    call $~lib/util/number/ulog_base
    local.get $2
    i32.add
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.const 1
    i32.shl
    i32.const 1
    call $~lib/rt/itcms/__new
    local.tee $3
    i32.store
    local.get $3
    local.get $4
    i64.extend_i32_u
    local.get $7
    local.get $1
    call $~lib/util/number/utoa64_any_core
   end
  end
  local.get $2
  if
   local.get $3
   i32.const 45
   i32.store16
  end
  local.get $3
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
 )
 (func $~lib/string/String#concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $2
  local.get $1
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $3
  local.get $2
  local.get $3
  i32.add
  local.set $4
  local.get $4
  i32.const 0
  i32.eq
  if
   i32.const 1120
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $5
  i32.store
  local.get $5
  local.get $0
  local.get $2
  call $~lib/memory/memory.copy
  local.get $5
  local.get $2
  i32.add
  local.get $1
  local.get $3
  call $~lib/memory/memory.copy
  local.get $5
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
 )
 (func $~lib/string/String#slice (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  call $~lib/string/String#get:length
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $3
   i32.add
   local.tee $4
   i32.const 0
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
  else
   local.get $1
   local.tee $5
   local.get $3
   local.tee $4
   local.get $5
   local.get $4
   i32.lt_s
   select
  end
  local.set $1
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $2
   local.get $3
   i32.add
   local.tee $4
   i32.const 0
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
  else
   local.get $2
   local.tee $5
   local.get $3
   local.tee $4
   local.get $5
   local.get $4
   i32.lt_s
   select
  end
  local.set $2
  local.get $2
  local.get $1
  i32.sub
  local.set $3
  local.get $3
  i32.const 0
  i32.le_s
  if
   i32.const 1120
   local.set $7
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $7
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.const 1
  i32.shl
  i32.const 1
  call $~lib/rt/itcms/__new
  local.tee $6
  i32.store
  local.get $6
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.get $3
  i32.const 1
  i32.shl
  call $~lib/memory/memory.copy
  local.get $6
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $src/as/math/Euler/Euler#setFromRotationMatrix (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 f32)
  (local $6 f32)
  (local $7 f32)
  (local $8 f32)
  (local $9 f32)
  (local $10 f32)
  (local $11 f32)
  (local $12 f32)
  (local $13 f32)
  (local $14 f32)
  (local $15 i32)
  (local $16 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.load
  local.tee $4
  i32.store
  local.get $4
  i32.const 0
  call $~lib/array/Array<f32>#__get
  local.set $5
  local.get $4
  i32.const 4
  call $~lib/array/Array<f32>#__get
  local.set $6
  local.get $4
  i32.const 8
  call $~lib/array/Array<f32>#__get
  local.set $7
  local.get $4
  i32.const 1
  call $~lib/array/Array<f32>#__get
  local.set $8
  local.get $4
  i32.const 5
  call $~lib/array/Array<f32>#__get
  local.set $9
  local.get $4
  i32.const 9
  call $~lib/array/Array<f32>#__get
  local.set $10
  local.get $4
  i32.const 2
  call $~lib/array/Array<f32>#__get
  local.set $11
  local.get $4
  i32.const 6
  call $~lib/array/Array<f32>#__get
  local.set $12
  local.get $4
  i32.const 10
  call $~lib/array/Array<f32>#__get
  local.set $13
  local.get $2
  global.get $src/as/math/Euler/EulerRotationOrder.XYZ
  i32.eq
  if
   local.get $0
   local.get $7
   f32.const -1
   f32.const 1
   call $src/as/math/MathUtils/clamp
   call $~lib/math/NativeMathf.asin
   call $src/as/math/Euler/Euler#set:_y
   local.get $7
   local.set $14
   local.get $14
   f32.abs
   f32.const 0.9999899864196777
   f32.lt
   if
    local.get $0
    local.get $10
    f32.neg
    local.get $13
    call $~lib/math/NativeMathf.atan2
    call $src/as/math/Euler/Euler#set:_x
    local.get $0
    local.get $6
    f32.neg
    local.get $5
    call $~lib/math/NativeMathf.atan2
    call $src/as/math/Euler/Euler#set:_z
   else
    local.get $0
    local.get $12
    local.get $9
    call $~lib/math/NativeMathf.atan2
    call $src/as/math/Euler/Euler#set:_x
    local.get $0
    f32.const 0
    call $src/as/math/Euler/Euler#set:_z
   end
  else
   local.get $2
   global.get $src/as/math/Euler/EulerRotationOrder.YXZ
   i32.eq
   if
    local.get $0
    local.get $10
    f32.const -1
    f32.const 1
    call $src/as/math/MathUtils/clamp
    f32.neg
    call $~lib/math/NativeMathf.asin
    call $src/as/math/Euler/Euler#set:_x
    local.get $10
    local.set $14
    local.get $14
    f32.abs
    f32.const 0.9999899864196777
    f32.lt
    if
     local.get $0
     local.get $7
     local.get $13
     call $~lib/math/NativeMathf.atan2
     call $src/as/math/Euler/Euler#set:_y
     local.get $0
     local.get $8
     local.get $9
     call $~lib/math/NativeMathf.atan2
     call $src/as/math/Euler/Euler#set:_z
    else
     local.get $0
     local.get $11
     f32.neg
     local.get $5
     call $~lib/math/NativeMathf.atan2
     call $src/as/math/Euler/Euler#set:_y
     local.get $0
     f32.const 0
     call $src/as/math/Euler/Euler#set:_z
    end
   else
    local.get $2
    global.get $src/as/math/Euler/EulerRotationOrder.ZXY
    i32.eq
    if
     local.get $0
     local.get $12
     f32.const -1
     f32.const 1
     call $src/as/math/MathUtils/clamp
     call $~lib/math/NativeMathf.asin
     call $src/as/math/Euler/Euler#set:_x
     local.get $12
     local.set $14
     local.get $14
     f32.abs
     f32.const 0.9999899864196777
     f32.lt
     if
      local.get $0
      local.get $11
      f32.neg
      local.get $13
      call $~lib/math/NativeMathf.atan2
      call $src/as/math/Euler/Euler#set:_y
      local.get $0
      local.get $6
      f32.neg
      local.get $9
      call $~lib/math/NativeMathf.atan2
      call $src/as/math/Euler/Euler#set:_z
     else
      local.get $0
      f32.const 0
      call $src/as/math/Euler/Euler#set:_y
      local.get $0
      local.get $8
      local.get $5
      call $~lib/math/NativeMathf.atan2
      call $src/as/math/Euler/Euler#set:_z
     end
    else
     local.get $2
     global.get $src/as/math/Euler/EulerRotationOrder.ZYX
     i32.eq
     if
      local.get $0
      local.get $11
      f32.const -1
      f32.const 1
      call $src/as/math/MathUtils/clamp
      f32.neg
      call $~lib/math/NativeMathf.asin
      call $src/as/math/Euler/Euler#set:_y
      local.get $11
      local.set $14
      local.get $14
      f32.abs
      f32.const 0.9999899864196777
      f32.lt
      if
       local.get $0
       local.get $12
       local.get $13
       call $~lib/math/NativeMathf.atan2
       call $src/as/math/Euler/Euler#set:_x
       local.get $0
       local.get $8
       local.get $5
       call $~lib/math/NativeMathf.atan2
       call $src/as/math/Euler/Euler#set:_z
      else
       local.get $0
       f32.const 0
       call $src/as/math/Euler/Euler#set:_x
       local.get $0
       local.get $6
       f32.neg
       local.get $9
       call $~lib/math/NativeMathf.atan2
       call $src/as/math/Euler/Euler#set:_z
      end
     else
      local.get $2
      global.get $src/as/math/Euler/EulerRotationOrder.YZX
      i32.eq
      if
       local.get $0
       local.get $8
       f32.const -1
       f32.const 1
       call $src/as/math/MathUtils/clamp
       call $~lib/math/NativeMathf.asin
       call $src/as/math/Euler/Euler#set:_z
       local.get $8
       local.set $14
       local.get $14
       f32.abs
       f32.const 0.9999899864196777
       f32.lt
       if
        local.get $0
        local.get $10
        f32.neg
        local.get $9
        call $~lib/math/NativeMathf.atan2
        call $src/as/math/Euler/Euler#set:_x
        local.get $0
        local.get $11
        f32.neg
        local.get $5
        call $~lib/math/NativeMathf.atan2
        call $src/as/math/Euler/Euler#set:_y
       else
        local.get $0
        f32.const 0
        call $src/as/math/Euler/Euler#set:_x
        local.get $0
        local.get $7
        local.get $13
        call $~lib/math/NativeMathf.atan2
        call $src/as/math/Euler/Euler#set:_y
       end
      else
       local.get $2
       global.get $src/as/math/Euler/EulerRotationOrder.XZY
       i32.eq
       if
        local.get $0
        local.get $6
        f32.const -1
        f32.const 1
        call $src/as/math/MathUtils/clamp
        f32.neg
        call $~lib/math/NativeMathf.asin
        call $src/as/math/Euler/Euler#set:_z
        local.get $6
        local.set $14
        local.get $14
        f32.abs
        f32.const 0.9999899864196777
        f32.lt
        if
         local.get $0
         local.get $12
         local.get $9
         call $~lib/math/NativeMathf.atan2
         call $src/as/math/Euler/Euler#set:_x
         local.get $0
         local.get $7
         local.get $5
         call $~lib/math/NativeMathf.atan2
         call $src/as/math/Euler/Euler#set:_y
        else
         local.get $0
         local.get $10
         f32.neg
         local.get $13
         call $~lib/math/NativeMathf.atan2
         call $src/as/math/Euler/Euler#set:_x
         local.get $0
         f32.const 0
         call $src/as/math/Euler/Euler#set:_y
        end
       else
        local.get $2
        local.set $15
        i32.const 4192
        i32.const 4320
        i32.const 187
        i32.const 4
        call $~lib/builtins/abort
        unreachable
       end
      end
     end
    end
   end
  end
  local.get $0
  local.get $2
  call $src/as/math/Euler/Euler#set:_order
  local.get $3
  if
   i32.const 0
   global.set $~argumentsLength
   local.get $0
   i32.load offset=20
   i32.load
   call_indirect $0 (type $none_=>_none)
  end
  local.get $0
  local.set $16
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $16
 )
 (func $src/as/math/Matrix4/Matrix4#makeRotationFromQuaternion (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  f32.const 0
  f32.const 0
  f32.const 0
  call $src/as/math/Vector3/Vector3#constructor
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  f32.const 1
  f32.const 1
  f32.const 1
  call $src/as/math/Vector3/Vector3#constructor
  local.tee $3
  i32.store offset=4
  local.get $0
  local.get $2
  local.get $1
  local.get $3
  call $src/as/math/Matrix4/Matrix4#compose
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $src/as/math/Plane/Plane#constructor (param $0 i32) (param $1 i32) (param $2 f32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 28
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 0
  call $src/as/math/Plane/Plane#set:normal
  local.get $0
  f32.const 0
  call $src/as/math/Plane/Plane#set:constant
  local.get $0
  local.get $1
  call $src/as/math/Plane/Plane#set:normal
  local.get $0
  local.get $2
  call $src/as/math/Plane/Plane#set:constant
  local.get $0
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $src/as/math/Plane/Plane#constructor@varargs (param $0 i32) (param $1 i32) (param $2 f32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    f32.const 1
    f32.const 0
    f32.const 0
    call $src/as/math/Vector3/Vector3#constructor
    local.tee $1
    i32.store
   end
   f32.const 0
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $src/as/math/Plane/Plane#constructor
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $src/as/math/Frustum/Frustum#constructor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (result i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.const 27
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
  end
  local.get $0
  i32.const 0
  call $src/as/math/Frustum/Frustum#set:planes
  local.get $0
  global.get $~lib/memory/__stack_pointer
  i32.const 6
  i32.const 2
  i32.const 29
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $7
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.load offset=4
  local.tee $8
  i32.store offset=8
  local.get $7
  i32.const 0
  local.get $1
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 0
   i32.const 0
   i32.const 0
   global.set $~argumentsLength
   f32.const 0
   call $src/as/math/Plane/Plane#constructor@varargs
  else
   local.get $1
  end
  call $~lib/array/Array<src/as/math/Plane/Plane>#__uset
  local.get $7
  i32.const 1
  local.get $2
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 0
   i32.const 0
   i32.const 0
   global.set $~argumentsLength
   f32.const 0
   call $src/as/math/Plane/Plane#constructor@varargs
  else
   local.get $2
  end
  call $~lib/array/Array<src/as/math/Plane/Plane>#__uset
  local.get $7
  i32.const 2
  local.get $3
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 0
   i32.const 0
   i32.const 0
   global.set $~argumentsLength
   f32.const 0
   call $src/as/math/Plane/Plane#constructor@varargs
  else
   local.get $3
  end
  call $~lib/array/Array<src/as/math/Plane/Plane>#__uset
  local.get $7
  i32.const 3
  local.get $4
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 0
   i32.const 0
   i32.const 0
   global.set $~argumentsLength
   f32.const 0
   call $src/as/math/Plane/Plane#constructor@varargs
  else
   local.get $4
  end
  call $~lib/array/Array<src/as/math/Plane/Plane>#__uset
  local.get $7
  i32.const 4
  local.get $5
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 0
   i32.const 0
   i32.const 0
   global.set $~argumentsLength
   f32.const 0
   call $src/as/math/Plane/Plane#constructor@varargs
  else
   local.get $5
  end
  call $~lib/array/Array<src/as/math/Plane/Plane>#__uset
  local.get $7
  i32.const 5
  local.get $6
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 0
   i32.const 0
   i32.const 0
   global.set $~argumentsLength
   f32.const 0
   call $src/as/math/Plane/Plane#constructor@varargs
  else
   local.get $6
  end
  call $~lib/array/Array<src/as/math/Plane/Plane>#__uset
  local.get $7
  call $src/as/math/Frustum/Frustum#set:planes
  local.get $0
  local.set $9
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $9
 )
 (func $~lib/array/Array<src/as/math/Plane/Plane>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 224
   i32.const 1328
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $2
  i32.store
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $2
  i32.eqz
  if
   i32.const 1488
   i32.const 1328
   i32.const 118
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $src/as/math/Frustum/Frustum#clone (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 0
  i32.const 0
  i32.const 0
  i32.const 0
  i32.const 0
  i32.const 0
  call $src/as/math/Frustum/Frustum#constructor
  local.tee $1
  i32.store
  local.get $1
  local.get $0
  call $src/as/math/Frustum/Frustum#copy
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $src/as/math/Color/Color#toArray@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 2
    i32.const 6
    i32.const 4384
    call $~lib/rt/__newArray
    local.tee $1
    i32.store
   end
   i32.const 0
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $src/as/math/Color/Color#toArray
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $src/as/math/Euler/Euler#toVector3@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argumentsLength
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   f32.const 0
   f32.const 0
   f32.const 0
   call $src/as/math/Vector3/Vector3#constructor
   local.tee $1
   i32.store
  end
  local.get $0
  local.get $1
  call $src/as/math/Euler/Euler#toVector3
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/as/core/Layers/Layers#get:mask (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/core/Layers/Layers#get:mask
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/core/Layers/Layers#set:mask (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/as/core/Layers/Layers#set:mask
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/as/core/Layers/Layers#set (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/as/core/Layers/Layers#set
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/as/core/Layers/Layers#enable (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/as/core/Layers/Layers#enable
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/as/core/Layers/Layers#toggle (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/as/core/Layers/Layers#toggle
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/as/core/Layers/Layers#disable (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/as/core/Layers/Layers#disable
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/as/core/Layers/Layers#test (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/as/core/Layers/Layers#test
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/as/core/Layers/Layers#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/core/Layers/Layers#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/core/EventDispatcher/EventDispatcher#addEventListener (param $0 i32) (param $1 i32) (param $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $1
  local.get $2
  call $src/as/core/EventDispatcher/EventDispatcher#addEventListener
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/as/core/EventDispatcher/EventDispatcher#hasEventListener (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $1
  local.get $2
  call $src/as/core/EventDispatcher/EventDispatcher#hasEventListener
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $export:src/as/core/EventDispatcher/EventDispatcher#removeEventListener (param $0 i32) (param $1 i32) (param $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $1
  local.get $2
  call $src/as/core/EventDispatcher/EventDispatcher#removeEventListener
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/as/core/EventDispatcher/EventDispatcher#dispatchEvent (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/as/core/EventDispatcher/EventDispatcher#dispatchEvent
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/as/core/Object3D/Object3D#get:id (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/core/Object3D/Object3D#get:id
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/core/Object3D/Object3D#set:id (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/as/core/Object3D/Object3D#set:id
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/as/core/Object3D/Object3D#get:name (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/core/Object3D/Object3D#get:name
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/core/Object3D/Object3D#set:name (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/as/core/Object3D/Object3D#set:name
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/as/core/Object3D/Object3D#get:type (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/core/Object3D/Object3D#get:type
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/core/Object3D/Object3D#set:type (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/as/core/Object3D/Object3D#set:type
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/as/core/Object3D/Object3D#get:parent (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/core/Object3D/Object3D#get:parent
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/core/Object3D/Object3D#set:parent (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/as/core/Object3D/Object3D#set:parent
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/as/core/Object3D/Object3D#get:children (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/core/Object3D/Object3D#get:children
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/core/Object3D/Object3D#set:children (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/as/core/Object3D/Object3D#set:children
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/as/core/Object3D/Object3D#get:position (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/core/Object3D/Object3D#get:position
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/core/Object3D/Object3D#get:rotation (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/core/Object3D/Object3D#get:rotation
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/core/Object3D/Object3D#get:quaternion (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/core/Object3D/Object3D#get:quaternion
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/core/Object3D/Object3D#get:scale (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/core/Object3D/Object3D#get:scale
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/core/Object3D/Object3D#get:modelViewMatrix (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/core/Object3D/Object3D#get:modelViewMatrix
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/core/Object3D/Object3D#get:matrix (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/core/Object3D/Object3D#get:matrix
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/core/Object3D/Object3D#set:matrix (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/as/core/Object3D/Object3D#set:matrix
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/as/core/Object3D/Object3D#get:matrixWorld (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/core/Object3D/Object3D#get:matrixWorld
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/core/Object3D/Object3D#set:matrixWorld (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/as/core/Object3D/Object3D#set:matrixWorld
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/as/core/Object3D/Object3D#get:matrixAutoUpdate (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/core/Object3D/Object3D#get:matrixAutoUpdate
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/core/Object3D/Object3D#set:matrixAutoUpdate (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/as/core/Object3D/Object3D#set:matrixAutoUpdate
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/as/core/Object3D/Object3D#get:matrixWorldNeedsUpdate (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/core/Object3D/Object3D#get:matrixWorldNeedsUpdate
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/core/Object3D/Object3D#set:matrixWorldNeedsUpdate (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/as/core/Object3D/Object3D#set:matrixWorldNeedsUpdate
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/as/core/Object3D/Object3D#get:layers (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/core/Object3D/Object3D#get:layers
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/core/Object3D/Object3D#set:layers (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/as/core/Object3D/Object3D#set:layers
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/as/core/Object3D/Object3D#get:visible (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/core/Object3D/Object3D#get:visible
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/core/Object3D/Object3D#set:visible (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/as/core/Object3D/Object3D#set:visible
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/as/core/Object3D/Object3D#get:castShadow (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/core/Object3D/Object3D#get:castShadow
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/core/Object3D/Object3D#set:castShadow (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/as/core/Object3D/Object3D#set:castShadow
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/as/core/Object3D/Object3D#get:receiveShadow (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/core/Object3D/Object3D#get:receiveShadow
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/core/Object3D/Object3D#set:receiveShadow (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/as/core/Object3D/Object3D#set:receiveShadow
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/as/core/Object3D/Object3D#get:frustumCulled (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/core/Object3D/Object3D#get:frustumCulled
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/core/Object3D/Object3D#set:frustumCulled (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/as/core/Object3D/Object3D#set:frustumCulled
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/as/core/Object3D/Object3D#get:renderOrder (param $0 i32) (result f32)
  (local $1 f32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/core/Object3D/Object3D#get:renderOrder
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/core/Object3D/Object3D#set:renderOrder (param $0 i32) (param $1 f32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/as/core/Object3D/Object3D#set:renderOrder
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/as/core/Object3D/Object3D#get:isObject3D (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/core/Object3D/Object3D#get:isObject3D
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/core/Object3D/Object3D#get:isCamera (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/core/Object3D/Object3D#get:isCamera
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/core/Object3D/Object3D#set:isCamera (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/as/core/Object3D/Object3D#set:isCamera
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/as/core/Object3D/Object3D#get:isLight (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/core/Object3D/Object3D#get:isLight
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/core/Object3D/Object3D#set:isLight (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/as/core/Object3D/Object3D#set:isLight
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/as/core/Object3D/Object3D#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/core/Object3D/Object3D#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/core/Object3D/Object3D#get:onBeforeRender (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/core/Object3D/Object3D#get:onBeforeRender
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/core/Object3D/Object3D#set:onBeforeRender (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/as/core/Object3D/Object3D#set:onBeforeRender
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/as/core/Object3D/Object3D#get:onAfterRender (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/core/Object3D/Object3D#get:onAfterRender
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/core/Object3D/Object3D#set:onAfterRender (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/as/core/Object3D/Object3D#set:onAfterRender
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/as/core/Object3D/Object3D#add (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/as/core/Object3D/Object3D#add
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/as/core/Object3D/Object3D#remove (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/as/core/Object3D/Object3D#remove
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/as/core/Object3D/Object3D#traverse (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/as/core/Object3D/Object3D#traverse
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/as/core/Object3D/Object3D#updateMatrix (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/core/Object3D/Object3D#updateMatrix
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/as/core/Object3D/Object3D#updateMatrixWorld@varargs (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/as/core/Object3D/Object3D#updateMatrixWorld@varargs
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/as/math/Box3/Box3#get:max (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/math/Box3/Box3#get:max
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/math/Box3/Box3#set:max (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/as/math/Box3/Box3#set:max
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/as/math/Box3/Box3#get:min (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/math/Box3/Box3#get:min
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/math/Box3/Box3#set:min (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/as/math/Box3/Box3#set:min
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/as/math/Box3/Box3#get:isBox3 (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/math/Box3/Box3#get:isBox3
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/math/Box3/Box3#constructor@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $1
  local.get $2
  call $src/as/math/Box3/Box3#constructor@varargs
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $export:src/as/math/Box3/Box3#set (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $1
  local.get $2
  call $src/as/math/Box3/Box3#set
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $export:src/as/math/Box3/Box3#setFromPoints (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/as/math/Box3/Box3#setFromPoints
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/as/math/Box3/Box3#clone (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/math/Box3/Box3#clone
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/math/Box3/Box3#copy (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/as/math/Box3/Box3#copy
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/as/math/Box3/Box3#makeEmpty (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/math/Box3/Box3#makeEmpty
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/math/Box3/Box3#isEmpty (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/math/Box3/Box3#isEmpty
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/math/Box3/Box3#getCenter (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/as/math/Box3/Box3#getCenter
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/as/math/Box3/Box3#getSize (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/as/math/Box3/Box3#getSize
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/as/math/Box3/Box3#expandByPoint (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/as/math/Box3/Box3#expandByPoint
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/as/math/Box3/Box3#expandByScalar (param $0 i32) (param $1 f32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/as/math/Box3/Box3#expandByScalar
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/as/math/Box3/Box3#applyMatrix4 (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/as/math/Box3/Box3#applyMatrix4
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/as/math/Box3/Box3#translate (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/as/math/Box3/Box3#translate
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/as/math/Box3/Box3#equals (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/as/math/Box3/Box3#equals
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/as/math/Box3/compareBox@varargs (param $0 i32) (param $1 i32) (param $2 f32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  local.get $2
  call $src/as/math/Box3/compareBox@varargs
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $export:src/as/math/Color/HSL#get:h (param $0 i32) (result f32)
  (local $1 f32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/math/Color/HSL#get:h
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/math/Color/HSL#set:h (param $0 i32) (param $1 f32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/as/math/Color/HSL#set:h
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/as/math/Color/HSL#get:s (param $0 i32) (result f32)
  (local $1 f32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/math/Color/HSL#get:s
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/math/Color/HSL#set:s (param $0 i32) (param $1 f32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/as/math/Color/HSL#set:s
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/as/math/Color/HSL#get:l (param $0 i32) (result f32)
  (local $1 f32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/math/Color/HSL#get:l
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/math/Color/HSL#set:l (param $0 i32) (param $1 f32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/as/math/Color/HSL#set:l
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/as/math/Color/HSL#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/math/Color/HSL#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/math/Color/Colors#constructor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/math/Color/Colors#constructor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/math/Color/Color#get:r (param $0 i32) (result f32)
  (local $1 f32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/math/Color/Color#get:r
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/math/Color/Color#set:r (param $0 i32) (param $1 f32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/as/math/Color/Color#set:r
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/as/math/Color/Color#get:g (param $0 i32) (result f32)
  (local $1 f32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/math/Color/Color#get:g
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/math/Color/Color#set:g (param $0 i32) (param $1 f32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/as/math/Color/Color#set:g
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/as/math/Color/Color#get:b (param $0 i32) (result f32)
  (local $1 f32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/math/Color/Color#get:b
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/math/Color/Color#set:b (param $0 i32) (param $1 f32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/as/math/Color/Color#set:b
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/as/math/Color/Color#constructor@varargs (param $0 i32) (param $1 f32) (param $2 f32) (param $3 f32) (result i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $src/as/math/Color/Color#constructor@varargs
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $export:src/as/math/Color/Color#get:isColor (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/math/Color/Color#get:isColor
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/math/Color/Color#setScalar (param $0 i32) (param $1 f32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/as/math/Color/Color#setScalar
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/as/math/Color/Color#setHex (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/as/math/Color/Color#setHex
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/as/math/Color/Color#setRGB (param $0 i32) (param $1 f32) (param $2 f32) (param $3 f32) (result i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $src/as/math/Color/Color#setRGB
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $export:src/as/math/Color/Color#clone (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/math/Color/Color#clone
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/math/Color/Color#copy (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/as/math/Color/Color#copy
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/as/math/Color/Color#copyGammaToLinear@varargs (param $0 i32) (param $1 i32) (param $2 f32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  local.get $2
  call $src/as/math/Color/Color#copyGammaToLinear@varargs
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $export:src/as/math/Color/Color#copyLinearToGamma@varargs (param $0 i32) (param $1 i32) (param $2 f32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  local.get $2
  call $src/as/math/Color/Color#copyLinearToGamma@varargs
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $export:src/as/math/Color/Color#convertGammaToLinear@varargs (param $0 i32) (param $1 f32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/as/math/Color/Color#convertGammaToLinear@varargs
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/as/math/Color/Color#convertLinearToGamma@varargs (param $0 i32) (param $1 f32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/as/math/Color/Color#convertLinearToGamma@varargs
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/as/math/Color/Color#copySRGBToLinear (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/as/math/Color/Color#copySRGBToLinear
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/as/math/Color/Color#copyLinearToSRGB (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/as/math/Color/Color#copyLinearToSRGB
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/as/math/Color/Color#convertSRGBToLinear (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/math/Color/Color#convertSRGBToLinear
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/math/Color/Color#convertLinearToSRGB (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/math/Color/Color#convertLinearToSRGB
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/math/Color/Color#getHex (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/math/Color/Color#getHex
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/math/Color/Color#getHexString (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/math/Color/Color#getHexString
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/math/Color/Color#getStyle (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/math/Color/Color#getStyle
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/math/Color/Color#add (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/as/math/Color/Color#add
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/as/math/Color/Color#addColors (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $0
  local.get $1
  local.get $2
  call $src/as/math/Color/Color#addColors
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $export:src/as/math/Color/Color#addScalar (param $0 i32) (param $1 f32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/as/math/Color/Color#addScalar
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/as/math/Color/Color#sub (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/as/math/Color/Color#sub
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/as/math/Color/Color#multiply (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/as/math/Color/Color#multiply
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/as/math/Color/Color#multiplyScalar (param $0 i32) (param $1 f32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/as/math/Color/Color#multiplyScalar
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/as/math/Color/Color#lerp (param $0 i32) (param $1 i32) (param $2 f32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  local.get $2
  call $src/as/math/Color/Color#lerp
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $export:src/as/math/Color/Color#equals (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/as/math/Color/Color#equals
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/as/math/Color/Color#fromArray@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  local.get $2
  call $src/as/math/Color/Color#fromArray@varargs
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $export:src/as/math/Color/Color#toArray@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  local.get $2
  call $src/as/math/Color/Color#toArray@varargs
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $export:src/as/math/Color/Color#toJSON (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/math/Color/Color#toJSON
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/math/Euler/Euler#get:isEuler (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/math/Euler/Euler#get:isEuler
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/math/Euler/Euler#get:_x (param $0 i32) (result f32)
  (local $1 f32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/math/Euler/Euler#get:_x
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/math/Euler/Euler#set:_x (param $0 i32) (param $1 f32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/as/math/Euler/Euler#set:_x
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/as/math/Euler/Euler#get:_y (param $0 i32) (result f32)
  (local $1 f32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/math/Euler/Euler#get:_y
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/math/Euler/Euler#set:_y (param $0 i32) (param $1 f32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/as/math/Euler/Euler#set:_y
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/as/math/Euler/Euler#get:_z (param $0 i32) (result f32)
  (local $1 f32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/math/Euler/Euler#get:_z
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/math/Euler/Euler#set:_z (param $0 i32) (param $1 f32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/as/math/Euler/Euler#set:_z
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/as/math/Euler/Euler#get:_order (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/math/Euler/Euler#get:_order
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/math/Euler/Euler#set:_order (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/as/math/Euler/Euler#set:_order
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/as/math/Euler/Euler#constructor@varargs (param $0 i32) (param $1 f32) (param $2 f32) (param $3 f32) (param $4 i32) (result i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  local.get $4
  call $src/as/math/Euler/Euler#constructor@varargs
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $export:src/as/math/Euler/Euler#get:x (param $0 i32) (result f32)
  (local $1 f32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/math/Euler/Euler#get:x
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/math/Euler/Euler#set:x (param $0 i32) (param $1 f32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/as/math/Euler/Euler#set:x
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/as/math/Euler/Euler#get:y (param $0 i32) (result f32)
  (local $1 f32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/math/Euler/Euler#get:y
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/math/Euler/Euler#set:y (param $0 i32) (param $1 f32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/as/math/Euler/Euler#set:y
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/as/math/Euler/Euler#get:z (param $0 i32) (result f32)
  (local $1 f32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/math/Euler/Euler#get:z
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/math/Euler/Euler#set:z (param $0 i32) (param $1 f32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/as/math/Euler/Euler#set:z
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/as/math/Euler/Euler#get:order (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/math/Euler/Euler#get:order
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/math/Euler/Euler#set:order (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  call $src/as/math/Euler/Euler#set:order
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/as/math/Euler/Euler#get:onChangeCallback (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/math/Euler/Euler#get:onChangeCallback
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/math/Euler/Euler#set:onChangeCallback (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/as/math/Euler/Euler#set:onChangeCallback
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/as/math/Euler/Euler#set@varargs (param $0 i32) (param $1 f32) (param $2 f32) (param $3 f32) (param $4 i32) (result i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  local.get $4
  call $src/as/math/Euler/Euler#set@varargs
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $export:src/as/math/Euler/Euler#clone (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/math/Euler/Euler#clone
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/math/Euler/Euler#copy (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/as/math/Euler/Euler#copy
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/as/math/Euler/Euler#setFromRotationMatrix@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $src/as/math/Euler/Euler#setFromRotationMatrix@varargs
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $export:src/as/math/Euler/Euler#setFromQuaternion@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $src/as/math/Euler/Euler#setFromQuaternion@varargs
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $export:src/as/math/Euler/Euler#setFromVector3@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  local.get $2
  call $src/as/math/Euler/Euler#setFromVector3@varargs
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $export:src/as/math/Euler/Euler#equals (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/as/math/Euler/Euler#equals
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/as/math/Euler/Euler#toVector3@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/as/math/Euler/Euler#toVector3@varargs
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/as/math/Euler/Euler#onChange (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/as/math/Euler/Euler#onChange
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/as/math/Euler/eulerEquals@varargs (param $0 i32) (param $1 i32) (param $2 f32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  local.get $2
  call $src/as/math/Euler/eulerEquals@varargs
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $export:src/as/math/Frustum/Frustum#get:planes (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/math/Frustum/Frustum#get:planes
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/math/Frustum/Frustum#set:planes (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/as/math/Frustum/Frustum#set:planes
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $export:src/as/math/Frustum/Frustum#constructor@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (result i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=24
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  local.get $4
  local.get $5
  local.get $6
  call $src/as/math/Frustum/Frustum#constructor@varargs
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $export:src/as/math/Frustum/Frustum#set (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (result i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=20
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store offset=24
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  local.get $4
  local.get $5
  local.get $6
  call $src/as/math/Frustum/Frustum#set
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $export:src/as/math/Frustum/Frustum#clone (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/math/Frustum/Frustum#clone
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:src/as/math/Frustum/Frustum#copy (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/as/math/Frustum/Frustum#copy
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/as/math/Frustum/Frustum#setFromProjectionMatrix (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/as/math/Frustum/Frustum#setFromProjectionMatrix
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/as/math/Frustum/Frustum#intersectsSphere (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/as/math/Frustum/Frustum#intersectsSphere
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/as/math/Frustum/Frustum#intersectsBox (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/as/math/Frustum/Frustum#intersectsBox
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/as/math/Frustum/Frustum#containsPoint (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $src/as/math/Frustum/Frustum#containsPoint
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:src/as/imports/log (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $src/as/imports/log
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
)
