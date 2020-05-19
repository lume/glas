(module
 (type $none_=>_none (func))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_=>_f64 (func (param i32) (result f64)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $f64_=>_f64 (func (param f64) (result f64)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i32_f64_f64_f64_=>_i32 (func (param i32 f64 f64 f64) (result i32)))
 (type $i32_f64_=>_i32 (func (param i32 f64) (result i32)))
 (type $i32_i32_f64_=>_none (func (param i32 i32 f64)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_f64_=>_i32 (func (param i32 i32 f64) (result i32)))
 (type $i32_i32_=>_f64 (func (param i32 i32) (result f64)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_f64_f64_f64_i32_=>_i32 (func (param i32 f64 f64 f64 i32) (result i32)))
 (type $i32_f64_f64_f64_f64_=>_i32 (func (param i32 f64 f64 f64 f64) (result i32)))
 (type $i32_f64_f64_f64_f64_f64_f64_=>_i32 (func (param i32 f64 f64 f64 f64 f64 f64) (result i32)))
 (type $i32_f64_f64_f64_f64_f64_f64_f64_f64_f64_f64_f64_f64_f64_f64_f64_f64_=>_i32 (func (param i32 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64) (result i32)))
 (type $f64_i64_=>_i32 (func (param f64 i64) (result i32)))
 (type $f64_f64_=>_f64 (func (param f64 f64) (result f64)))
 (type $f64_f64_f64_=>_f64 (func (param f64 f64 f64) (result f64)))
 (import "env" "memory" (memory $0 1))
 (data (i32.const 16) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00")
 (data (i32.const 64) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00")
 (data (i32.const 128) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00p\00u\00r\00e\00.\00t\00s\00")
 (data (i32.const 176) "\80\00\00\00\01\00\00\00\00\00\00\00\80\00\00\00\00\00\00\00\00\00\f0?\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0?\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0?\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0?")
 (data (i32.const 320) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00M\00a\00t\00h\00s\00")
 (data (i32.const 352) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00M\00a\00t\00r\00i\00x\004\00")
 (data (i32.const 384) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00c\00o\00n\00s\00t\00r\00u\00c\00t\00o\00r\00")
 (data (i32.const 432) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00")
 (data (i32.const 496) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 544) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00P\00a\00s\00s\00e\00d\00!\00")
 (data (i32.const 576) "6\00\00\00\01\00\00\00\01\00\00\006\00\00\00s\00r\00c\00/\00a\00s\00/\00m\00a\00t\00h\00/\00M\00a\00t\00r\00i\00x\004\00.\00s\00p\00e\00c\00.\00t\00s\00")
 (data (i32.const 656) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data (i32.const 704) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00u\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00v\00a\00l\00u\00e\00")
 (data (i32.const 752) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00i\00s\00M\00a\00t\00r\00i\00x\004\00")
 (data (i32.const 800) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00s\00e\00t\00")
 (data (i32.const 832) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00i\00d\00e\00n\00t\00i\00t\00y\00")
 (data (i32.const 864) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00c\00l\00o\00n\00e\00")
 (data (i32.const 896) "<\00\00\00\01\00\00\00\01\00\00\00<\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00m\00a\00t\00r\00i\00c\00e\00s\00 \00t\00o\00 \00b\00e\00 \00e\00q\00u\00a\00l\00!\00")
 (data (i32.const 976) "D\00\00\00\01\00\00\00\01\00\00\00D\00\00\00E\00x\00p\00e\00c\00t\00e\00d\00 \00m\00a\00t\00r\00i\00c\00e\00s\00 \00n\00o\00t\00 \00t\00o\00 \00b\00e\00 \00e\00q\00u\00a\00l\00!\00")
 (data (i32.const 1072) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00c\00o\00p\00y\00")
 (data (i32.const 1104) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00e\00x\00t\00r\00a\00c\00t\00R\00o\00t\00a\00t\00i\00o\00n\00")
 (data (i32.const 1152) "J\00\00\00\01\00\00\00\01\00\00\00J\00\00\00m\00a\00k\00e\00R\00o\00t\00a\00t\00i\00o\00n\00F\00r\00o\00m\00E\00u\00l\00e\00r\00/\00e\00x\00t\00r\00a\00c\00t\00R\00o\00t\00a\00t\00i\00o\00n\00")
 (data (i32.const 1248) "^\00\00\00\01\00\00\00\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y\00")
 (data (i32.const 1360) "n\83\f9\a2\00\00\00\00\d1W\'\fc)\15DN\99\95b\db\c0\dd4\f5\abcQ\feA\90C<:n$\b7a\c5\bb\de\ea.I\06\e0\d2MB\1c\eb\1d\fe\1c\92\d1\t\f55\82\e8>\a7)\b1&p\9c\e9\84D\bb.9\d6\919A~_\b4\8b_\84\9c\f49S\83\ff\97\f8\1f;(\f9\bd\8b\11/\ef\0f\98\05\de\cf~6m\1fm\nZf?FO\b7\t\cb\'\c7\ba\'u-\ea_\9e\f79\07={\f1\e5\eb\b1_\fbk\ea\92R\8aF0\03V\08]\8d\1f \bc\cf\f0\abk{\fca\91\e3\a9\1d6\f4\9a_\85\99e\08\1b\e6^\80\d8\ff\8d@h\a0\14W\15\06\061\'sM")
 (data (i32.const 1552) "l\00\00\00\01\00\00\00\01\00\00\00l\00\00\00E\00u\00l\00e\00r\00.\00s\00e\00t\00F\00r\00o\00m\00R\00o\00t\00a\00t\00i\00o\00n\00M\00a\00t\00r\00i\00x\00(\00)\00 \00g\00i\00v\00e\00n\00 \00u\00n\00s\00u\00p\00p\00o\00r\00t\00e\00d\00 \00o\00r\00d\00e\00r\00.\00")
 (data (i32.const 1680) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00s\00r\00c\00/\00a\00s\00/\00m\00a\00t\00h\00/\00E\00u\00l\00e\00r\00.\00t\00s\00")
 (data (i32.const 1744) "2\00\00\00\01\00\00\00\01\00\00\002\00\00\00e\00x\00p\00e\00c\00t\00e\00d\00 \00t\00h\00e\00m\00 \00t\00o\00 \00b\00e\00 \00e\00q\00u\00a\00l\00")
 (data (i32.const 1824) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00m\00u\00l\00t\00i\00p\00l\00y\00")
 (data (i32.const 1856) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00p\00r\00e\00m\00u\00l\00t\00i\00p\00l\00y\00")
 (data (i32.const 1904) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00m\00u\00l\00t\00i\00p\00l\00y\00M\00a\00t\00r\00i\00c\00e\00s\00")
 (data (i32.const 1952) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00u\00n\00e\00x\00p\00e\00c\00t\00e\00d\00 \00v\00a\00l\00u\00e\00 \00")
 (data (i32.const 2016) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00d\00e\00t\00e\00r\00m\00i\00n\00a\00n\00t\00")
 (data (i32.const 2064) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00s\00e\00t\00P\00o\00s\00i\00t\00i\00o\00n\00")
 (data (i32.const 2112) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00g\00e\00t\00I\00n\00v\00e\00r\00s\00e\00")
 (data (i32.const 2160) "J\00\00\00\01\00\00\00\01\00\00\00J\00\00\00T\00h\00e\00 \00i\00n\00v\00e\00r\00s\00e\00 \00s\00h\00o\00u\00l\00d\00 \00n\00o\00t\00 \00b\00e\00 \00c\00a\00l\00c\00u\00l\00a\00b\00l\00e\00.\00")
 (data (i32.const 2256) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00e\00x\00p\00e\00c\00t\00e\00d\00 \00i\00n\00v\00e\00r\00s\00e\00")
 (data (i32.const 2304) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00s\00c\00a\00l\00e\00")
 (data (i32.const 2336) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00g\00e\00t\00M\00a\00x\00S\00c\00a\00l\00e\00O\00n\00A\00x\00i\00s\00")
 (data (i32.const 2400) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00C\00h\00e\00c\00k\00 \00r\00e\00s\00u\00l\00t\00")
 (data (i32.const 2448) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00m\00a\00k\00e\00T\00r\00a\00n\00s\00l\00a\00t\00i\00o\00n\00")
 (data (i32.const 2496) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00m\00a\00k\00e\00R\00o\00t\00a\00t\00i\00o\00n\00X\00")
 (data (i32.const 2544) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00m\00a\00k\00e\00R\00o\00t\00a\00t\00i\00o\00n\00Y\00")
 (data (i32.const 2592) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00m\00a\00k\00e\00R\00o\00t\00a\00t\00i\00o\00n\00Z\00")
 (data (i32.const 2640) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00m\00a\00k\00e\00S\00c\00a\00l\00e\00")
 (data (i32.const 2688) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00m\00a\00k\00e\00S\00h\00e\00a\00r\00")
 (data (i32.const 2736) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00c\00o\00m\00p\00o\00s\00e\00/\00d\00e\00c\00o\00m\00p\00o\00s\00e\00")
 (data (i32.const 2800) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00m\00a\00k\00e\00P\00e\00r\00s\00p\00e\00c\00t\00i\00v\00e\00")
 (data (i32.const 2848) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00f\00r\00o\00m\00A\00r\00r\00a\00y\00")
 (data (i32.const 2896) "\10\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00\"\1a\00\00\00\00\00\00\"\t\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00\"A\00\00\00\00\00\00\"A\00\00\00\00\00\00\"A\00\00\00\00\00\00\"A\00\00\00\00\00\00\"\01\00\00\00\00\00\00")
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "rtrace" "onalloc" (func $~lib/rt/rtrace/onalloc (param i32)))
 (import "rtrace" "onincrement" (func $~lib/rt/rtrace/onincrement (param i32)))
 (import "rtrace" "onrealloc" (func $~lib/rt/rtrace/onrealloc (param i32 i32)))
 (import "rtrace" "onfree" (func $~lib/rt/rtrace/onfree (param i32)))
 (import "__aspect" "reportTestTypeNode" (func $node_modules/@as-pect/assembly/assembly/internal/Test/test (param i32 i32)))
 (import "__aspect" "reportTodo" (func $node_modules/@as-pect/assembly/assembly/internal/Test/todo (param i32)))
 (import "__aspect" "reportGroupTypeNode" (func $node_modules/@as-pect/assembly/assembly/internal/Test/describe (param i32 i32)))
 (import "rtrace" "ondecrement" (func $~lib/rt/rtrace/ondecrement (param i32)))
 (table $0 16 funcref)
 (elem (i32.const 1) $start:src/as/math/Matrix4.spec~anonymous|0~anonymous|0~anonymous|0 $start:src/as/math/Matrix4.spec~anonymous|0~anonymous|0~anonymous|1 $start:src/as/math/Matrix4.spec~anonymous|0~anonymous|0~anonymous|2 $start:src/as/math/Matrix4.spec~anonymous|0~anonymous|0~anonymous|3 $start:src/as/math/Matrix4.spec~anonymous|0~anonymous|0~anonymous|4 $src/as/math/Euler/Euler#constructor~anonymous|0 $start:src/as/math/Matrix4.spec~anonymous|0~anonymous|0~anonymous|5 $start:src/as/math/Matrix4.spec~anonymous|0~anonymous|0~anonymous|6 $start:src/as/math/Matrix4.spec~anonymous|0~anonymous|0~anonymous|7 $start:src/as/math/Matrix4.spec~anonymous|0~anonymous|0~anonymous|8 $start:src/as/math/Matrix4.spec~anonymous|0~anonymous|0~anonymous|9 $start:src/as/math/Matrix4.spec~anonymous|0~anonymous|0~anonymous|10 $start:src/as/math/Matrix4.spec~anonymous|0~anonymous|0 $start:src/as/math/Matrix4.spec~anonymous|0 $start:node_modules/@as-pect/assembly/assembly/internal/noOp~anonymous|0)
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/ASC_LOW_MEMORY_LIMIT i32 (i32.const 0))
 (global $~lib/rt/tlsf/collectLock (mut i32) (i32.const 0))
 (global $~lib/gc/gc.auto (mut i32) (i32.const 1))
 (global $~lib/math/NativeMath.PI f64 (f64.const 3.141592653589793))
 (global $src/as/math/Math/DEG2RAD f64 (f64.const 0.017453292519943295))
 (global $src/as/math/Math/RAD2DEG f64 (f64.const 57.29577951308232))
 (global $src/as/math/Euler/EulerRotationOrder.XYZ i32 (i32.const 0))
 (global $src/as/math/Euler/EulerRotationOrder.YZX i32 (i32.const 1))
 (global $src/as/math/Euler/EulerRotationOrder.ZXY i32 (i32.const 2))
 (global $src/as/math/Euler/EulerRotationOrder.XZY i32 (i32.const 3))
 (global $src/as/math/Euler/EulerRotationOrder.YXZ i32 (i32.const 4))
 (global $src/as/math/Euler/EulerRotationOrder.ZYX i32 (i32.const 5))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $src/as/math/Euler/matrix (mut i32) (i32.const 0))
 (global $src/as/math/Euler/quaternion (mut i32) (i32.const 0))
 (global $src/as/math/Euler/Euler.DefaultOrder (mut i32) (i32.const 0))
 (global $src/as/math/Vector4/min (mut i32) (i32.const 0))
 (global $src/as/math/Vector4/max (mut i32) (i32.const 0))
 (global $src/as/math/Color/hsl (mut i32) (i32.const 0))
 (global $src/as/math/Color/hslA (mut i32) (i32.const 0))
 (global $src/as/math/Color/hslB (mut i32) (i32.const 0))
 (global $src/as/math/Color/ColorKeywords.aliceblue (mut i32) (i32.const 15792383))
 (global $src/as/math/Color/ColorKeywords.antiquewhite (mut i32) (i32.const 16444375))
 (global $src/as/math/Color/ColorKeywords.aqua (mut i32) (i32.const 65535))
 (global $src/as/math/Color/ColorKeywords.aquamarine (mut i32) (i32.const 8388564))
 (global $src/as/math/Color/ColorKeywords.azure (mut i32) (i32.const 15794175))
 (global $src/as/math/Color/ColorKeywords.beige (mut i32) (i32.const 16119260))
 (global $src/as/math/Color/ColorKeywords.bisque (mut i32) (i32.const 16770244))
 (global $src/as/math/Color/ColorKeywords.black (mut i32) (i32.const 0))
 (global $src/as/math/Color/ColorKeywords.blanchedalmond (mut i32) (i32.const 16772045))
 (global $src/as/math/Color/ColorKeywords.blue (mut i32) (i32.const 255))
 (global $src/as/math/Color/ColorKeywords.blueviolet (mut i32) (i32.const 9055202))
 (global $src/as/math/Color/ColorKeywords.brown (mut i32) (i32.const 10824234))
 (global $src/as/math/Color/ColorKeywords.burlywood (mut i32) (i32.const 14596231))
 (global $src/as/math/Color/ColorKeywords.cadetblue (mut i32) (i32.const 6266528))
 (global $src/as/math/Color/ColorKeywords.chartreuse (mut i32) (i32.const 8388352))
 (global $src/as/math/Color/ColorKeywords.chocolate (mut i32) (i32.const 13789470))
 (global $src/as/math/Color/ColorKeywords.coral (mut i32) (i32.const 16744272))
 (global $src/as/math/Color/ColorKeywords.cornflowerblue (mut i32) (i32.const 6591981))
 (global $src/as/math/Color/ColorKeywords.cornsilk (mut i32) (i32.const 16775388))
 (global $src/as/math/Color/ColorKeywords.crimson (mut i32) (i32.const 14423100))
 (global $src/as/math/Color/ColorKeywords.cyan (mut i32) (i32.const 65535))
 (global $src/as/math/Color/ColorKeywords.darkblue (mut i32) (i32.const 139))
 (global $src/as/math/Color/ColorKeywords.darkcyan (mut i32) (i32.const 35723))
 (global $src/as/math/Color/ColorKeywords.darkgoldenrod (mut i32) (i32.const 12092939))
 (global $src/as/math/Color/ColorKeywords.darkgray (mut i32) (i32.const 11119017))
 (global $src/as/math/Color/ColorKeywords.darkgreen (mut i32) (i32.const 25600))
 (global $src/as/math/Color/ColorKeywords.darkgrey (mut i32) (i32.const 11119017))
 (global $src/as/math/Color/ColorKeywords.darkkhaki (mut i32) (i32.const 12433259))
 (global $src/as/math/Color/ColorKeywords.darkmagenta (mut i32) (i32.const 9109643))
 (global $src/as/math/Color/ColorKeywords.darkolivegreen (mut i32) (i32.const 5597999))
 (global $src/as/math/Color/ColorKeywords.darkorange (mut i32) (i32.const 16747520))
 (global $src/as/math/Color/ColorKeywords.darkorchid (mut i32) (i32.const 10040012))
 (global $src/as/math/Color/ColorKeywords.darkred (mut i32) (i32.const 9109504))
 (global $src/as/math/Color/ColorKeywords.darksalmon (mut i32) (i32.const 15308410))
 (global $src/as/math/Color/ColorKeywords.darkseagreen (mut i32) (i32.const 9419919))
 (global $src/as/math/Color/ColorKeywords.darkslateblue (mut i32) (i32.const 4734347))
 (global $src/as/math/Color/ColorKeywords.darkslategray (mut i32) (i32.const 3100495))
 (global $src/as/math/Color/ColorKeywords.darkslategrey (mut i32) (i32.const 3100495))
 (global $src/as/math/Color/ColorKeywords.darkturquoise (mut i32) (i32.const 52945))
 (global $src/as/math/Color/ColorKeywords.darkviolet (mut i32) (i32.const 9699539))
 (global $src/as/math/Color/ColorKeywords.deeppink (mut i32) (i32.const 16716947))
 (global $src/as/math/Color/ColorKeywords.deepskyblue (mut i32) (i32.const 49151))
 (global $src/as/math/Color/ColorKeywords.dimgray (mut i32) (i32.const 6908265))
 (global $src/as/math/Color/ColorKeywords.dimgrey (mut i32) (i32.const 6908265))
 (global $src/as/math/Color/ColorKeywords.dodgerblue (mut i32) (i32.const 2003199))
 (global $src/as/math/Color/ColorKeywords.firebrick (mut i32) (i32.const 11674146))
 (global $src/as/math/Color/ColorKeywords.floralwhite (mut i32) (i32.const 16775920))
 (global $src/as/math/Color/ColorKeywords.forestgreen (mut i32) (i32.const 2263842))
 (global $src/as/math/Color/ColorKeywords.fuchsia (mut i32) (i32.const 16711935))
 (global $src/as/math/Color/ColorKeywords.gainsboro (mut i32) (i32.const 14474460))
 (global $src/as/math/Color/ColorKeywords.ghostwhite (mut i32) (i32.const 16316671))
 (global $src/as/math/Color/ColorKeywords.gold (mut i32) (i32.const 16766720))
 (global $src/as/math/Color/ColorKeywords.goldenrod (mut i32) (i32.const 14329120))
 (global $src/as/math/Color/ColorKeywords.gray (mut i32) (i32.const 8421504))
 (global $src/as/math/Color/ColorKeywords.green (mut i32) (i32.const 32768))
 (global $src/as/math/Color/ColorKeywords.greenyellow (mut i32) (i32.const 11403055))
 (global $src/as/math/Color/ColorKeywords.grey (mut i32) (i32.const 8421504))
 (global $src/as/math/Color/ColorKeywords.honeydew (mut i32) (i32.const 15794160))
 (global $src/as/math/Color/ColorKeywords.hotpink (mut i32) (i32.const 16738740))
 (global $src/as/math/Color/ColorKeywords.indianred (mut i32) (i32.const 13458524))
 (global $src/as/math/Color/ColorKeywords.indigo (mut i32) (i32.const 4915330))
 (global $src/as/math/Color/ColorKeywords.ivory (mut i32) (i32.const 16777200))
 (global $src/as/math/Color/ColorKeywords.khaki (mut i32) (i32.const 15787660))
 (global $src/as/math/Color/ColorKeywords.lavender (mut i32) (i32.const 15132410))
 (global $src/as/math/Color/ColorKeywords.lavenderblush (mut i32) (i32.const 16773365))
 (global $src/as/math/Color/ColorKeywords.lawngreen (mut i32) (i32.const 8190976))
 (global $src/as/math/Color/ColorKeywords.lemonchiffon (mut i32) (i32.const 16775885))
 (global $src/as/math/Color/ColorKeywords.lightblue (mut i32) (i32.const 11393254))
 (global $src/as/math/Color/ColorKeywords.lightcoral (mut i32) (i32.const 15761536))
 (global $src/as/math/Color/ColorKeywords.lightcyan (mut i32) (i32.const 14745599))
 (global $src/as/math/Color/ColorKeywords.lightgoldenrodyellow (mut i32) (i32.const 16448210))
 (global $src/as/math/Color/ColorKeywords.lightgray (mut i32) (i32.const 13882323))
 (global $src/as/math/Color/ColorKeywords.lightgreen (mut i32) (i32.const 9498256))
 (global $src/as/math/Color/ColorKeywords.lightgrey (mut i32) (i32.const 13882323))
 (global $src/as/math/Color/ColorKeywords.lightpink (mut i32) (i32.const 16758465))
 (global $src/as/math/Color/ColorKeywords.lightsalmon (mut i32) (i32.const 16752762))
 (global $src/as/math/Color/ColorKeywords.lightseagreen (mut i32) (i32.const 2142890))
 (global $src/as/math/Color/ColorKeywords.lightskyblue (mut i32) (i32.const 8900346))
 (global $src/as/math/Color/ColorKeywords.lightslategray (mut i32) (i32.const 7833753))
 (global $src/as/math/Color/ColorKeywords.lightslategrey (mut i32) (i32.const 7833753))
 (global $src/as/math/Color/ColorKeywords.lightsteelblue (mut i32) (i32.const 11584734))
 (global $src/as/math/Color/ColorKeywords.lightyellow (mut i32) (i32.const 16777184))
 (global $src/as/math/Color/ColorKeywords.lime (mut i32) (i32.const 65280))
 (global $src/as/math/Color/ColorKeywords.limegreen (mut i32) (i32.const 3329330))
 (global $src/as/math/Color/ColorKeywords.linen (mut i32) (i32.const 16445670))
 (global $src/as/math/Color/ColorKeywords.magenta (mut i32) (i32.const 16711935))
 (global $src/as/math/Color/ColorKeywords.maroon (mut i32) (i32.const 8388608))
 (global $src/as/math/Color/ColorKeywords.mediumaquamarine (mut i32) (i32.const 6737322))
 (global $src/as/math/Color/ColorKeywords.mediumblue (mut i32) (i32.const 205))
 (global $src/as/math/Color/ColorKeywords.mediumorchid (mut i32) (i32.const 12211667))
 (global $src/as/math/Color/ColorKeywords.mediumpurple (mut i32) (i32.const 9662683))
 (global $src/as/math/Color/ColorKeywords.mediumseagreen (mut i32) (i32.const 3978097))
 (global $src/as/math/Color/ColorKeywords.mediumslateblue (mut i32) (i32.const 8087790))
 (global $src/as/math/Color/ColorKeywords.mediumspringgreen (mut i32) (i32.const 64154))
 (global $src/as/math/Color/ColorKeywords.mediumturquoise (mut i32) (i32.const 4772300))
 (global $src/as/math/Color/ColorKeywords.mediumvioletred (mut i32) (i32.const 13047173))
 (global $src/as/math/Color/ColorKeywords.midnightblue (mut i32) (i32.const 1644912))
 (global $src/as/math/Color/ColorKeywords.mintcream (mut i32) (i32.const 16121850))
 (global $src/as/math/Color/ColorKeywords.mistyrose (mut i32) (i32.const 16770273))
 (global $src/as/math/Color/ColorKeywords.moccasin (mut i32) (i32.const 16770229))
 (global $src/as/math/Color/ColorKeywords.navajowhite (mut i32) (i32.const 16768685))
 (global $src/as/math/Color/ColorKeywords.navy (mut i32) (i32.const 128))
 (global $src/as/math/Color/ColorKeywords.oldlace (mut i32) (i32.const 16643558))
 (global $src/as/math/Color/ColorKeywords.olive (mut i32) (i32.const 8421376))
 (global $src/as/math/Color/ColorKeywords.olivedrab (mut i32) (i32.const 7048739))
 (global $src/as/math/Color/ColorKeywords.orange (mut i32) (i32.const 16753920))
 (global $src/as/math/Color/ColorKeywords.orangered (mut i32) (i32.const 16729344))
 (global $src/as/math/Color/ColorKeywords.orchid (mut i32) (i32.const 14315734))
 (global $src/as/math/Color/ColorKeywords.palegoldenrod (mut i32) (i32.const 15657130))
 (global $src/as/math/Color/ColorKeywords.palegreen (mut i32) (i32.const 10025880))
 (global $src/as/math/Color/ColorKeywords.paleturquoise (mut i32) (i32.const 11529966))
 (global $src/as/math/Color/ColorKeywords.palevioletred (mut i32) (i32.const 14381203))
 (global $src/as/math/Color/ColorKeywords.papayawhip (mut i32) (i32.const 16773077))
 (global $src/as/math/Color/ColorKeywords.peachpuff (mut i32) (i32.const 16767673))
 (global $src/as/math/Color/ColorKeywords.peru (mut i32) (i32.const 13468991))
 (global $src/as/math/Color/ColorKeywords.pink (mut i32) (i32.const 16761035))
 (global $src/as/math/Color/ColorKeywords.plum (mut i32) (i32.const 14524637))
 (global $src/as/math/Color/ColorKeywords.powderblue (mut i32) (i32.const 11591910))
 (global $src/as/math/Color/ColorKeywords.purple (mut i32) (i32.const 8388736))
 (global $src/as/math/Color/ColorKeywords.rebeccapurple (mut i32) (i32.const 6697881))
 (global $src/as/math/Color/ColorKeywords.red (mut i32) (i32.const 16711680))
 (global $src/as/math/Color/ColorKeywords.rosybrown (mut i32) (i32.const 12357519))
 (global $src/as/math/Color/ColorKeywords.royalblue (mut i32) (i32.const 4286945))
 (global $src/as/math/Color/ColorKeywords.saddlebrown (mut i32) (i32.const 9127187))
 (global $src/as/math/Color/ColorKeywords.salmon (mut i32) (i32.const 16416882))
 (global $src/as/math/Color/ColorKeywords.sandybrown (mut i32) (i32.const 16032864))
 (global $src/as/math/Color/ColorKeywords.seagreen (mut i32) (i32.const 3050327))
 (global $src/as/math/Color/ColorKeywords.seashell (mut i32) (i32.const 16774638))
 (global $src/as/math/Color/ColorKeywords.sienna (mut i32) (i32.const 10506797))
 (global $src/as/math/Color/ColorKeywords.silver (mut i32) (i32.const 12632256))
 (global $src/as/math/Color/ColorKeywords.skyblue (mut i32) (i32.const 8900331))
 (global $src/as/math/Color/ColorKeywords.slateblue (mut i32) (i32.const 6970061))
 (global $src/as/math/Color/ColorKeywords.slategray (mut i32) (i32.const 7372944))
 (global $src/as/math/Color/ColorKeywords.slategrey (mut i32) (i32.const 7372944))
 (global $src/as/math/Color/ColorKeywords.snow (mut i32) (i32.const 16775930))
 (global $src/as/math/Color/ColorKeywords.springgreen (mut i32) (i32.const 65407))
 (global $src/as/math/Color/ColorKeywords.steelblue (mut i32) (i32.const 4620980))
 (global $src/as/math/Color/ColorKeywords.tan (mut i32) (i32.const 13808780))
 (global $src/as/math/Color/ColorKeywords.teal (mut i32) (i32.const 32896))
 (global $src/as/math/Color/ColorKeywords.thistle (mut i32) (i32.const 14204888))
 (global $src/as/math/Color/ColorKeywords.tomato (mut i32) (i32.const 16737095))
 (global $src/as/math/Color/ColorKeywords.turquoise (mut i32) (i32.const 4251856))
 (global $src/as/math/Color/ColorKeywords.violet (mut i32) (i32.const 15631086))
 (global $src/as/math/Color/ColorKeywords.wheat (mut i32) (i32.const 16113331))
 (global $src/as/math/Color/ColorKeywords.white (mut i32) (i32.const 16777215))
 (global $src/as/math/Color/ColorKeywords.whitesmoke (mut i32) (i32.const 16119285))
 (global $src/as/math/Color/ColorKeywords.yellow (mut i32) (i32.const 16776960))
 (global $src/as/math/Color/ColorKeywords.yellowgreen (mut i32) (i32.const 10145074))
 (global $src/as/math/Constants.tests/x i32 (i32.const 2))
 (global $src/as/math/Constants.tests/y i32 (i32.const 3))
 (global $src/as/math/Constants.tests/z i32 (i32.const 4))
 (global $src/as/math/Constants.tests/w i32 (i32.const 5))
 (global $src/as/math/Constants.tests/negInf3 (mut i32) (i32.const 0))
 (global $src/as/math/Constants.tests/posInf3 (mut i32) (i32.const 0))
 (global $src/as/math/Constants.tests/zero3 (mut i32) (i32.const 0))
 (global $src/as/math/Constants.tests/one3 (mut i32) (i32.const 0))
 (global $src/as/math/Constants.tests/two3 (mut i32) (i32.const 0))
 (global $src/as/math/Constants.tests/eps f64 (f64.const 0.0001))
 (global $~lib/math/rempio2_y0 (mut f64) (f64.const 0))
 (global $~lib/math/rempio2_y1 (mut f64) (f64.const 0))
 (global $~lib/math/res128_hi (mut i64) (i64.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $node_modules/@as-pect/assembly/assembly/internal/noOp/noOp i32 (i32.const 15))
 (global $node_modules/@as-pect/assembly/assembly/internal/log/ignoreLogs (mut i32) (i32.const 0))
 (global $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.FAILED_MATCH i32 (i32.const 0))
 (global $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.SUCCESSFUL_MATCH i32 (i32.const 1))
 (global $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.DEFER_MATCH i32 (i32.const 2))
 (global $node_modules/@as-pect/assembly/assembly/internal/RTrace/RTrace.enabled (mut i32) (i32.const 1))
 (global $~started (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 2896))
 (global $~lib/heap/__heap_base i32 (i32.const 3028))
 (export "_start" (func $~start))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "__alloc" (func $~lib/rt/tlsf/__alloc))
 (export "__retain" (func $~lib/rt/pure/__retain))
 (export "__release" (func $~lib/rt/pure/__release))
 (export "__collect" (func $~lib/rt/pure/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "__call" (func $node_modules/@as-pect/assembly/assembly/internal/call/__call))
 (export "__ignoreLogs" (func $node_modules/@as-pect/assembly/assembly/internal/log/__ignoreLogs))
 (export "__disableRTrace" (func $node_modules/@as-pect/assembly/assembly/internal/RTrace/__disableRTrace))
 (export "__getUsizeArrayId" (func $node_modules/@as-pect/assembly/assembly/internal/RTrace/__getUsizeArrayId))
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
   i32.const 32
   i32.const 277
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
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $3
   i32.const 1073741808
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 279
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
   i32.const 31
   local.get $3
   i32.clz
   i32.sub
   local.set $4
   local.get $3
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
   i32.const 32
   i32.const 292
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=16
  local.set $6
  local.get $1
  i32.load offset=20
  local.set $7
  local.get $6
  if
   local.get $6
   local.get $7
   i32.store offset=20
  end
  local.get $7
  if
   local.get $7
   local.get $6
   i32.store offset=16
  end
  local.get $1
  local.get $0
  local.set $10
  local.get $4
  local.set $9
  local.get $5
  local.set $8
  local.get $10
  local.get $9
  i32.const 4
  i32.shl
  local.get $8
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
   local.set $9
   local.get $7
   local.set $8
   local.get $11
   local.get $10
   i32.const 4
   i32.shl
   local.get $9
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $8
   i32.store offset=96
   local.get $7
   i32.eqz
   if
    local.get $0
    local.set $9
    local.get $4
    local.set $8
    local.get $9
    local.get $8
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.set $9
    local.get $0
    local.set $8
    local.get $4
    local.set $11
    local.get $9
    i32.const 1
    local.get $5
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.tee $9
    local.set $10
    local.get $8
    local.get $11
    i32.const 2
    i32.shl
    i32.add
    local.get $10
    i32.store offset=4
    local.get $9
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
     i32.store
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
   i32.const 32
   i32.const 205
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
   i32.const 32
   i32.const 207
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.set $3
  local.get $3
  i32.const 16
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
   local.get $2
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.add
   local.get $5
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.set $3
   local.get $3
   i32.const 1073741808
   i32.lt_u
   if
    local.get $0
    local.get $4
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $2
    i32.const 3
    i32.and
    local.get $3
    i32.or
    local.tee $2
    i32.store
    local.get $1
    local.set $6
    local.get $6
    i32.const 16
    i32.add
    local.get $6
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
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $1
   local.set $6
   local.get $6
   i32.const 4
   i32.sub
   i32.load
   local.set $6
   local.get $6
   i32.load
   local.set $3
   i32.const 1
   drop
   local.get $3
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 32
    i32.const 228
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.add
   local.get $2
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.set $7
   local.get $7
   i32.const 1073741808
   i32.lt_u
   if
    local.get $0
    local.get $6
    call $~lib/rt/tlsf/removeBlock
    local.get $6
    local.get $3
    i32.const 3
    i32.and
    local.get $7
    i32.or
    local.tee $2
    i32.store
    local.get $6
    local.set $1
   end
  end
  local.get $4
  local.get $5
  i32.const 2
  i32.or
  i32.store
  local.get $2
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $8
  i32.const 1
  drop
  local.get $8
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $8
   i32.const 1073741808
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 243
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  drop
  local.get $1
  i32.const 16
  i32.add
  local.get $8
  i32.add
  local.get $4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 244
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $8
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $9
   local.get $8
   i32.const 4
   i32.shr_u
   local.set $10
  else
   i32.const 31
   local.get $8
   i32.clz
   i32.sub
   local.set $9
   local.get $8
   local.get $9
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $10
   local.get $9
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $9
  end
  i32.const 1
  drop
  local.get $9
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $10
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 260
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $7
  local.get $9
  local.set $3
  local.get $10
  local.set $6
  local.get $7
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
  i32.store offset=16
  local.get $1
  local.get $11
  i32.store offset=20
  local.get $11
  if
   local.get $11
   local.get $1
   i32.store offset=16
  end
  local.get $0
  local.set $12
  local.get $9
  local.set $7
  local.get $10
  local.set $3
  local.get $1
  local.set $6
  local.get $12
  local.get $7
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
  local.get $9
  i32.shl
  i32.or
  i32.store
  local.get $0
  local.set $13
  local.get $9
  local.set $12
  local.get $0
  local.set $3
  local.get $9
  local.set $6
  local.get $3
  local.get $6
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const 1
  local.get $10
  i32.shl
  i32.or
  local.set $7
  local.get $13
  local.get $12
  i32.const 2
  i32.shl
  i32.add
  local.get $7
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
  if (result i32)
   local.get $1
   i32.const 15
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  if (result i32)
   local.get $2
   i32.const 15
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 386
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
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
   i32.const 16
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 32
    i32.const 396
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
    i32.const 32
    i32.const 408
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
  i32.const 16
  i32.const 16
  i32.add
  i32.const 16
  i32.add
  i32.lt_u
  if
   i32.const 0
   return
  end
  local.get $6
  i32.const 16
  i32.const 1
  i32.shl
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
  i32.store
  local.get $8
  i32.const 0
  i32.store offset=16
  local.get $8
  i32.const 0
  i32.store offset=20
  local.get $1
  local.get $6
  i32.add
  i32.const 16
  i32.sub
  local.set $4
  local.get $4
  i32.const 0
  i32.const 2
  i32.or
  i32.store
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
 (func $~lib/rt/tlsf/maybeInitialize (result i32)
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
  global.get $~lib/rt/tlsf/ROOT
  local.set $0
  local.get $0
  i32.eqz
  if
   global.get $~lib/heap/__heap_base
   i32.const 15
   i32.add
   i32.const 15
   i32.const -1
   i32.xor
   i32.and
   local.set $1
   memory.size
   local.set $2
   local.get $1
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
   local.set $3
   local.get $3
   local.get $2
   i32.gt_s
   if (result i32)
    local.get $3
    local.get $2
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
   local.get $1
   local.set $0
   local.get $0
   i32.const 0
   i32.store
   local.get $0
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
     local.get $0
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
       local.get $0
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
   local.get $1
   i32.const 1572
   i32.add
   i32.const 15
   i32.add
   i32.const 15
   i32.const -1
   i32.xor
   i32.and
   local.set $5
   i32.const 0
   drop
   local.get $0
   local.get $5
   memory.size
   i32.const 16
   i32.shl
   call $~lib/rt/tlsf/addMemory
   drop
   local.get $0
   global.set $~lib/rt/tlsf/ROOT
  end
  local.get $0
 )
 (func $~lib/rt/tlsf/prepareSize (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 1073741808
  i32.ge_u
  if
   i32.const 80
   i32.const 32
   i32.const 461
   i32.const 30
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.tee $1
  i32.const 16
  local.tee $2
  local.get $1
  local.get $2
  i32.gt_u
  select
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
   i32.const 536870904
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
   i32.const 32
   i32.const 338
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
     i32.const 32
     i32.const 351
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
  i32.const 536870904
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
  i32.const 16
  local.get $2
  i32.const 16
  i32.shl
  i32.const 16
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
  i32.const 15
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 365
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
  i32.const 16
  i32.const 16
  i32.add
  i32.ge_u
  if
   local.get $1
   local.get $2
   local.get $3
   i32.const 2
   i32.and
   i32.or
   i32.store
   local.get $1
   i32.const 16
   i32.add
   local.get $2
   i32.add
   local.set $5
   local.get $5
   local.get $4
   i32.const 16
   i32.sub
   i32.const 1
   i32.or
   i32.store
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
   i32.store
   local.get $1
   local.set $5
   local.get $5
   i32.const 16
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
   i32.const 16
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
   i32.store
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 1
  drop
  global.get $~lib/rt/tlsf/collectLock
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 501
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/tlsf/prepareSize
  local.set $3
  local.get $0
  local.get $3
  call $~lib/rt/tlsf/searchBlock
  local.set $4
  local.get $4
  i32.eqz
  if
   global.get $~lib/gc/gc.auto
   if
    i32.const 1
    drop
    i32.const 1
    global.set $~lib/rt/tlsf/collectLock
    call $~lib/rt/pure/__collect
    i32.const 1
    drop
    i32.const 0
    global.set $~lib/rt/tlsf/collectLock
    local.get $0
    local.get $3
    call $~lib/rt/tlsf/searchBlock
    local.set $4
    local.get $4
    i32.eqz
    if
     local.get $0
     local.get $3
     call $~lib/rt/tlsf/growMemory
     local.get $0
     local.get $3
     call $~lib/rt/tlsf/searchBlock
     local.set $4
     i32.const 1
     drop
     local.get $4
     i32.eqz
     if
      i32.const 0
      i32.const 32
      i32.const 513
      i32.const 20
      call $~lib/builtins/abort
      unreachable
     end
    end
   else
    local.get $0
    local.get $3
    call $~lib/rt/tlsf/growMemory
    local.get $0
    local.get $3
    call $~lib/rt/tlsf/searchBlock
    local.set $4
    i32.const 1
    drop
    local.get $4
    i32.eqz
    if
     i32.const 0
     i32.const 32
     i32.const 518
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
   end
  end
  i32.const 1
  drop
  local.get $4
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $3
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 521
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 0
  i32.store offset=4
  local.get $4
  local.get $2
  i32.store offset=8
  local.get $4
  local.get $1
  i32.store offset=12
  local.get $0
  local.get $4
  call $~lib/rt/tlsf/removeBlock
  local.get $0
  local.get $4
  local.get $3
  call $~lib/rt/tlsf/prepareBlock
  i32.const 1
  drop
  local.get $4
  call $~lib/rt/rtrace/onalloc
  local.get $4
 )
 (func $~lib/rt/tlsf/__alloc (param $0 i32) (param $1 i32) (result i32)
  call $~lib/rt/tlsf/maybeInitialize
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/allocateBlock
  i32.const 16
  i32.add
 )
 (func $~lib/rt/pure/increment (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 268435455
  i32.const -1
  i32.xor
  i32.and
  local.get $1
  i32.const 1
  i32.add
  i32.const 268435455
  i32.const -1
  i32.xor
  i32.and
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 109
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 1
  i32.add
  i32.store offset=4
  i32.const 1
  drop
  local.get $0
  call $~lib/rt/rtrace/onincrement
  i32.const 1
  drop
  local.get $0
  i32.load
  i32.const 1
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 112
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/rt/pure/__retain (param $0 i32) (result i32)
  local.get $0
  global.get $~lib/heap/__heap_base
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/increment
  end
  local.get $0
 )
 (func $~lib/rt/pure/__release (param $0 i32)
  local.get $0
  global.get $~lib/heap/__heap_base
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
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
   local.get $3
   i32.add
   local.get $5
   i32.le_u
   if (result i32)
    i32.const 1
   else
    local.get $5
    local.get $3
    i32.add
    local.get $4
    i32.le_u
   end
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
 (func $~lib/rt/__allocBuffer (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/__alloc
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
 (func $~lib/rt/__allocArray (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 16
  local.get $2
  call $~lib/rt/tlsf/__alloc
  local.set $4
  local.get $0
  local.get $1
  i32.shl
  local.set $5
  local.get $5
  i32.const 0
  local.get $3
  call $~lib/rt/__allocBuffer
  local.set $6
  local.get $4
  local.get $6
  call $~lib/rt/pure/__retain
  i32.store
  local.get $4
  local.get $6
  i32.store offset=4
  local.get $4
  local.get $5
  i32.store offset=8
  local.get $4
  local.get $0
  i32.store offset=12
  local.get $4
 )
 (func $src/as/math/Matrix4/Matrix4#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 3
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  local.tee $1
  i32.const 16
  i32.const 3
  i32.const 4
  i32.const 192
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/pure/__release
  local.get $2
  i32.store
  local.get $0
 )
 (func $src/as/math/Quaternion/Quaternion#constructor (param $0 i32) (param $1 f64) (param $2 f64) (param $3 f64) (param $4 f64) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 40
   i32.const 6
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  f64.const 0
  f64.store
  local.get $0
  f64.const 0
  f64.store offset=8
  local.get $0
  f64.const 0
  f64.store offset=16
  local.get $0
  f64.const 0
  f64.store offset=24
  local.get $0
  i32.const 1
  i32.store8 offset=32
  local.get $0
  i32.const 0
  i32.store offset=36
  local.get $0
  local.get $1
  f64.store
  local.get $0
  local.get $2
  f64.store offset=8
  local.get $0
  local.get $3
  f64.store offset=16
  local.get $0
  local.get $4
  f64.store offset=24
  local.get $0
 )
 (func $start:src/as/math/Euler
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  global.set $src/as/math/Euler/matrix
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 1
  call $src/as/math/Quaternion/Quaternion#constructor
  global.set $src/as/math/Euler/quaternion
  global.get $src/as/math/Euler/EulerRotationOrder.XYZ
  global.set $src/as/math/Euler/Euler.DefaultOrder
 )
 (func $start:src/as/math/Matrix4
  call $start:src/as/math/Euler
 )
 (func $src/as/math/Color/HSL#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 8
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  f64.const 0
  f64.store
  local.get $0
  f64.const 0
  f64.store offset=8
  local.get $0
  f64.const 0
  f64.store offset=16
  local.get $0
 )
 (func $start:src/as/math/Color
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  call $src/as/math/Color/HSL#constructor
  local.set $0
  local.get $0
  f64.const 0
  f64.store
  local.get $0
  f64.const 0
  f64.store offset=8
  local.get $0
  f64.const 0
  f64.store offset=16
  local.get $0
  call $~lib/rt/pure/__retain
  global.set $src/as/math/Color/hsl
  i32.const 0
  call $src/as/math/Color/HSL#constructor
  local.set $1
  local.get $1
  f64.const 0
  f64.store
  local.get $1
  f64.const 0
  f64.store offset=8
  local.get $1
  f64.const 0
  f64.store offset=16
  local.get $1
  call $~lib/rt/pure/__retain
  global.set $src/as/math/Color/hslA
  i32.const 0
  call $src/as/math/Color/HSL#constructor
  local.set $2
  local.get $2
  f64.const 0
  f64.store
  local.get $2
  f64.const 0
  f64.store offset=8
  local.get $2
  f64.const 0
  f64.store offset=16
  local.get $2
  call $~lib/rt/pure/__retain
  global.set $src/as/math/Color/hslB
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $start:src/as/core/BufferAttribute
  call $start:src/as/math/Color
 )
 (func $src/as/math/Vector3/Vector3#constructor (param $0 i32) (param $1 f64) (param $2 f64) (param $3 f64) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 25
   i32.const 9
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  f64.const 0
  f64.store
  local.get $0
  f64.const 0
  f64.store offset=8
  local.get $0
  f64.const 0
  f64.store offset=16
  local.get $0
  i32.const 1
  i32.store8 offset=24
  local.get $0
  local.get $1
  f64.store
  local.get $0
  local.get $2
  f64.store offset=8
  local.get $0
  local.get $3
  f64.store offset=16
  local.get $0
 )
 (func $start:src/as/math/Constants.tests
  i32.const 0
  f64.const inf
  f64.neg
  f64.const inf
  f64.neg
  f64.const inf
  f64.neg
  call $src/as/math/Vector3/Vector3#constructor
  global.set $src/as/math/Constants.tests/negInf3
  i32.const 0
  f64.const inf
  f64.const inf
  f64.const inf
  call $src/as/math/Vector3/Vector3#constructor
  global.set $src/as/math/Constants.tests/posInf3
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $src/as/math/Vector3/Vector3#constructor
  global.set $src/as/math/Constants.tests/zero3
  i32.const 0
  f64.const 1
  f64.const 1
  f64.const 1
  call $src/as/math/Vector3/Vector3#constructor
  global.set $src/as/math/Constants.tests/one3
  i32.const 0
  f64.const 2
  f64.const 2
  f64.const 2
  call $src/as/math/Vector3/Vector3#constructor
  global.set $src/as/math/Constants.tests/two3
 )
 (func $~lib/array/Array<f64>#__uget (param $0 i32) (param $1 i32) (result f64)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  f64.load
 )
 (func $~lib/array/Array<f64>#__get (param $0 i32) (param $1 i32) (result f64)
  (local $2 f64)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 448
   i32.const 512
   i32.const 104
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<f64>#__uget
  local.set $2
  i32.const 0
  drop
  local.get $2
 )
 (func $src/as/math/Matrix4/Matrix4#determinant (param $0 i32) (result f64)
  (local $1 i32)
  (local $2 f64)
  (local $3 f64)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  (local $8 f64)
  (local $9 f64)
  (local $10 f64)
  (local $11 f64)
  (local $12 f64)
  (local $13 f64)
  (local $14 f64)
  (local $15 f64)
  (local $16 f64)
  (local $17 f64)
  (local $18 f64)
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  call $~lib/array/Array<f64>#__get
  local.set $2
  local.get $1
  i32.const 4
  call $~lib/array/Array<f64>#__get
  local.set $3
  local.get $1
  i32.const 8
  call $~lib/array/Array<f64>#__get
  local.set $4
  local.get $1
  i32.const 12
  call $~lib/array/Array<f64>#__get
  local.set $5
  local.get $1
  i32.const 1
  call $~lib/array/Array<f64>#__get
  local.set $6
  local.get $1
  i32.const 5
  call $~lib/array/Array<f64>#__get
  local.set $7
  local.get $1
  i32.const 9
  call $~lib/array/Array<f64>#__get
  local.set $8
  local.get $1
  i32.const 13
  call $~lib/array/Array<f64>#__get
  local.set $9
  local.get $1
  i32.const 2
  call $~lib/array/Array<f64>#__get
  local.set $10
  local.get $1
  i32.const 6
  call $~lib/array/Array<f64>#__get
  local.set $11
  local.get $1
  i32.const 10
  call $~lib/array/Array<f64>#__get
  local.set $12
  local.get $1
  i32.const 14
  call $~lib/array/Array<f64>#__get
  local.set $13
  local.get $1
  i32.const 3
  call $~lib/array/Array<f64>#__get
  local.set $14
  local.get $1
  i32.const 7
  call $~lib/array/Array<f64>#__get
  local.set $15
  local.get $1
  i32.const 11
  call $~lib/array/Array<f64>#__get
  local.set $16
  local.get $1
  i32.const 15
  call $~lib/array/Array<f64>#__get
  local.set $17
  local.get $14
  local.get $5
  local.get $8
  f64.mul
  local.get $11
  f64.mul
  local.get $4
  local.get $9
  f64.mul
  local.get $11
  f64.mul
  f64.sub
  local.get $5
  local.get $7
  f64.mul
  local.get $12
  f64.mul
  f64.sub
  local.get $3
  local.get $9
  f64.mul
  local.get $12
  f64.mul
  f64.add
  local.get $4
  local.get $7
  f64.mul
  local.get $13
  f64.mul
  f64.add
  local.get $3
  local.get $8
  f64.mul
  local.get $13
  f64.mul
  f64.sub
  f64.mul
  local.get $15
  local.get $2
  local.get $8
  f64.mul
  local.get $13
  f64.mul
  local.get $2
  local.get $9
  f64.mul
  local.get $12
  f64.mul
  f64.sub
  local.get $5
  local.get $6
  f64.mul
  local.get $12
  f64.mul
  f64.add
  local.get $4
  local.get $6
  f64.mul
  local.get $13
  f64.mul
  f64.sub
  local.get $4
  local.get $9
  f64.mul
  local.get $10
  f64.mul
  f64.add
  local.get $5
  local.get $8
  f64.mul
  local.get $10
  f64.mul
  f64.sub
  f64.mul
  f64.add
  local.get $16
  local.get $2
  local.get $9
  f64.mul
  local.get $11
  f64.mul
  local.get $2
  local.get $7
  f64.mul
  local.get $13
  f64.mul
  f64.sub
  local.get $5
  local.get $6
  f64.mul
  local.get $11
  f64.mul
  f64.sub
  local.get $3
  local.get $6
  f64.mul
  local.get $13
  f64.mul
  f64.add
  local.get $5
  local.get $7
  f64.mul
  local.get $10
  f64.mul
  f64.add
  local.get $3
  local.get $9
  f64.mul
  local.get $10
  f64.mul
  f64.sub
  f64.mul
  f64.add
  local.get $17
  local.get $4
  f64.neg
  local.get $7
  f64.mul
  local.get $10
  f64.mul
  local.get $2
  local.get $8
  f64.mul
  local.get $11
  f64.mul
  f64.sub
  local.get $2
  local.get $7
  f64.mul
  local.get $12
  f64.mul
  f64.add
  local.get $4
  local.get $6
  f64.mul
  local.get $11
  f64.mul
  f64.add
  local.get $3
  local.get $6
  f64.mul
  local.get $12
  f64.mul
  f64.sub
  local.get $3
  local.get $8
  f64.mul
  local.get $10
  f64.mul
  f64.add
  f64.mul
  f64.add
  local.set $18
  local.get $1
  call $~lib/rt/pure/__release
  local.get $18
 )
 (func $~lib/rt/tlsf/checkUsedBlock (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 16
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
  if (result i32)
   local.get $1
   i32.load offset=4
   i32.const 268435455
   i32.const -1
   i32.xor
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 32
   i32.const 581
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
 )
 (func $~lib/rt/tlsf/freeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  i32.load
  local.set $2
  local.get $1
  local.get $2
  i32.const 1
  i32.or
  i32.store
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
  i32.const 1
  drop
  local.get $1
  call $~lib/rt/rtrace/onfree
 )
 (func $~lib/rt/tlsf/reallocateBlock (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $2
  call $~lib/rt/tlsf/prepareSize
  local.set $3
  local.get $1
  i32.load
  local.set $4
  local.get $3
  local.get $4
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.le_u
  if
   local.get $0
   local.get $1
   local.get $3
   call $~lib/rt/tlsf/prepareBlock
   local.get $1
   local.get $2
   i32.store offset=12
   local.get $1
   return
  end
  local.get $1
  local.set $5
  local.get $5
  i32.const 16
  i32.add
  local.get $5
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
  local.set $6
  local.get $6
  i32.load
  local.set $7
  local.get $7
  i32.const 1
  i32.and
  if
   local.get $4
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.add
   local.get $7
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.set $5
   local.get $5
   local.get $3
   i32.ge_u
   if
    local.get $0
    local.get $6
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $4
    i32.const 3
    i32.and
    local.get $5
    i32.or
    i32.store
    local.get $1
    local.get $2
    i32.store offset=12
    local.get $0
    local.get $1
    local.get $3
    call $~lib/rt/tlsf/prepareBlock
    local.get $1
    return
   end
  end
  local.get $0
  local.get $2
  local.get $1
  i32.load offset=8
  call $~lib/rt/tlsf/allocateBlock
  local.set $8
  local.get $8
  local.get $1
  i32.load offset=4
  i32.store offset=4
  local.get $8
  i32.const 16
  i32.add
  local.get $1
  i32.const 16
  i32.add
  local.get $2
  call $~lib/memory/memory.copy
  local.get $1
  global.get $~lib/heap/__heap_base
  i32.ge_u
  if
   i32.const 1
   drop
   local.get $1
   local.get $8
   call $~lib/rt/rtrace/onrealloc
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/freeBlock
  end
  local.get $8
 )
 (func $~lib/rt/tlsf/__realloc (param $0 i32) (param $1 i32) (result i32)
  call $~lib/rt/tlsf/maybeInitialize
  local.get $0
  call $~lib/rt/tlsf/checkUsedBlock
  local.get $1
  call $~lib/rt/tlsf/reallocateBlock
  i32.const 16
  i32.add
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
   i32.const 4
   i32.sub
   local.set $6
   local.get $5
   local.get $4
   i32.store8
   local.get $6
   local.get $4
   i32.store8 offset=3
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
   local.get $4
   i32.store8 offset=2
   local.get $6
   local.get $4
   i32.store8 offset=1
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
   i32.const 28
   i32.sub
   local.set $6
   local.get $5
   local.get $8
   i32.store
   local.get $6
   local.get $8
   i32.store offset=24
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
   local.get $8
   i32.store offset=16
   local.get $6
   local.get $8
   i32.store offset=20
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
   local.get $8
   i32.store
   local.get $6
   local.get $8
   i32.store offset=4
   local.get $6
   local.get $8
   i32.store offset=8
   local.get $6
   local.get $8
   i32.store offset=12
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
 (func $~lib/array/ensureSize (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=8
  local.set $3
  local.get $1
  local.get $3
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   local.get $1
   i32.const 1073741808
   local.get $2
   i32.shr_u
   i32.gt_u
   if
    i32.const 672
    i32.const 512
    i32.const 14
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load
   local.set $4
   local.get $1
   local.get $2
   i32.shl
   local.set $5
   local.get $4
   local.get $5
   call $~lib/rt/tlsf/__realloc
   local.set $6
   local.get $6
   local.get $3
   i32.add
   i32.const 0
   local.get $5
   local.get $3
   i32.sub
   call $~lib/memory/memory.fill
   local.get $6
   local.get $4
   i32.ne
   if
    local.get $0
    local.get $6
    i32.store
    local.get $0
    local.get $6
    i32.store offset=4
   end
   local.get $0
   local.get $5
   i32.store offset=8
  end
 )
 (func $~lib/array/Array<f64>#__uset (param $0 i32) (param $1 i32) (param $2 f64)
  i32.const 0
  drop
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  local.get $2
  f64.store
 )
 (func $~lib/array/Array<f64>#__set (param $0 i32) (param $1 i32) (param $2 f64)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   local.get $1
   i32.const 0
   i32.lt_s
   if
    i32.const 448
    i32.const 512
    i32.const 120
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.const 3
   call $~lib/array/ensureSize
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.store offset=12
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<f64>#__uset
 )
 (func $src/as/math/Matrix4/Matrix4#set (param $0 i32) (param $1 f64) (param $2 f64) (param $3 f64) (param $4 f64) (param $5 f64) (param $6 f64) (param $7 f64) (param $8 f64) (param $9 f64) (param $10 f64) (param $11 f64) (param $12 f64) (param $13 f64) (param $14 f64) (param $15 f64) (param $16 f64) (result i32)
  (local $17 i32)
  (local $18 i32)
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
  local.set $17
  local.get $17
  i32.const 0
  local.get $1
  call $~lib/array/Array<f64>#__set
  local.get $17
  i32.const 4
  local.get $2
  call $~lib/array/Array<f64>#__set
  local.get $17
  i32.const 8
  local.get $3
  call $~lib/array/Array<f64>#__set
  local.get $17
  i32.const 12
  local.get $4
  call $~lib/array/Array<f64>#__set
  local.get $17
  i32.const 1
  local.get $5
  call $~lib/array/Array<f64>#__set
  local.get $17
  i32.const 5
  local.get $6
  call $~lib/array/Array<f64>#__set
  local.get $17
  i32.const 9
  local.get $7
  call $~lib/array/Array<f64>#__set
  local.get $17
  i32.const 13
  local.get $8
  call $~lib/array/Array<f64>#__set
  local.get $17
  i32.const 2
  local.get $9
  call $~lib/array/Array<f64>#__set
  local.get $17
  i32.const 6
  local.get $10
  call $~lib/array/Array<f64>#__set
  local.get $17
  i32.const 10
  local.get $11
  call $~lib/array/Array<f64>#__set
  local.get $17
  i32.const 14
  local.get $12
  call $~lib/array/Array<f64>#__set
  local.get $17
  i32.const 3
  local.get $13
  call $~lib/array/Array<f64>#__set
  local.get $17
  i32.const 7
  local.get $14
  call $~lib/array/Array<f64>#__set
  local.get $17
  i32.const 11
  local.get $15
  call $~lib/array/Array<f64>#__set
  local.get $17
  i32.const 15
  local.get $16
  call $~lib/array/Array<f64>#__set
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $18
  local.get $17
  call $~lib/rt/pure/__release
  local.get $18
 )
 (func $~lib/array/Array<f64>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $src/as/math/Matrix4/matrixEquals4 (param $0 i32) (param $1 i32) (param $2 f64) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f64)
  (local $7 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load
  call $~lib/array/Array<f64>#get:length
  local.get $1
  i32.load
  call $~lib/array/Array<f64>#get:length
  i32.ne
  if
   i32.const 0
   local.set $3
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  i32.const 0
  local.set $4
  local.get $0
  i32.load
  call $~lib/array/Array<f64>#get:length
  local.set $5
  loop $for-loop|0
   local.get $4
   local.get $5
   i32.lt_s
   local.set $3
   local.get $3
   if
    local.get $0
    i32.load
    local.get $4
    call $~lib/array/Array<f64>#__get
    local.get $1
    i32.load
    local.get $4
    call $~lib/array/Array<f64>#__get
    f64.sub
    local.set $6
    local.get $6
    local.get $2
    f64.gt
    if
     i32.const 0
     local.set $7
     local.get $0
     call $~lib/rt/pure/__release
     local.get $1
     call $~lib/rt/pure/__release
     local.get $7
     return
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  i32.const 1
  local.set $3
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $start:src/as/math/Matrix4.spec~anonymous|0~anonymous|0~anonymous|0
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  local.set $0
  local.get $0
  call $src/as/math/Matrix4/Matrix4#determinant
  f64.const 1
  f64.eq
  i32.eqz
  if
   i32.const 560
   i32.const 592
   i32.const 19
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  local.set $1
  local.get $1
  f64.const 0
  f64.const 1
  f64.const 2
  f64.const 3
  f64.const 4
  f64.const 5
  f64.const 6
  f64.const 7
  f64.const 8
  f64.const 9
  f64.const 10
  f64.const 11
  f64.const 12
  f64.const 13
  f64.const 14
  f64.const 15
  call $src/as/math/Matrix4/Matrix4#set
  call $~lib/rt/pure/__release
  local.get $1
  i32.load
  i32.const 0
  call $~lib/array/Array<f64>#__get
  f64.const 0
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 23
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  i32.const 1
  call $~lib/array/Array<f64>#__get
  f64.const 4
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 24
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  i32.const 2
  call $~lib/array/Array<f64>#__get
  f64.const 8
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 25
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  i32.const 3
  call $~lib/array/Array<f64>#__get
  f64.const 12
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 26
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  i32.const 4
  call $~lib/array/Array<f64>#__get
  f64.const 1
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 27
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  i32.const 5
  call $~lib/array/Array<f64>#__get
  f64.const 5
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 28
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  i32.const 6
  call $~lib/array/Array<f64>#__get
  f64.const 9
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 29
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  i32.const 7
  call $~lib/array/Array<f64>#__get
  f64.const 13
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 30
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  i32.const 8
  call $~lib/array/Array<f64>#__get
  f64.const 2
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 31
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  i32.const 9
  call $~lib/array/Array<f64>#__get
  f64.const 6
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 32
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  i32.const 10
  call $~lib/array/Array<f64>#__get
  f64.const 10
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 33
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  i32.const 11
  call $~lib/array/Array<f64>#__get
  f64.const 14
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 34
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  i32.const 12
  call $~lib/array/Array<f64>#__get
  f64.const 3
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 35
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  i32.const 13
  call $~lib/array/Array<f64>#__get
  f64.const 7
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 36
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  i32.const 14
  call $~lib/array/Array<f64>#__get
  f64.const 11
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 37
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  i32.const 15
  call $~lib/array/Array<f64>#__get
  f64.const 15
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 38
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  f64.const 0.0001
  call $src/as/math/Matrix4/matrixEquals4
  i32.eqz
  i32.eqz
  if
   i32.const 560
   i32.const 592
   i32.const 40
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $start:src/as/math/Matrix4.spec~anonymous|0~anonymous|0~anonymous|1
  (local $0 i32)
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  local.set $0
  local.get $0
  call $src/as/math/Matrix4/Matrix4#determinant
  f64.const 1
  f64.eq
  i32.eqz
  if
   i32.const 560
   i32.const 592
   i32.const 48
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f64.const 0
  f64.const 1
  f64.const 2
  f64.const 3
  f64.const 4
  f64.const 5
  f64.const 6
  f64.const 7
  f64.const 8
  f64.const 9
  f64.const 10
  f64.const 11
  f64.const 12
  f64.const 13
  f64.const 14
  f64.const 15
  call $src/as/math/Matrix4/Matrix4#set
  call $~lib/rt/pure/__release
  local.get $0
  i32.load
  i32.const 0
  call $~lib/array/Array<f64>#__get
  f64.const 0
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 51
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  i32.const 1
  call $~lib/array/Array<f64>#__get
  f64.const 4
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 52
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  i32.const 2
  call $~lib/array/Array<f64>#__get
  f64.const 8
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 53
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  i32.const 3
  call $~lib/array/Array<f64>#__get
  f64.const 12
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 54
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  i32.const 4
  call $~lib/array/Array<f64>#__get
  f64.const 1
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 55
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  i32.const 5
  call $~lib/array/Array<f64>#__get
  f64.const 5
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 56
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  i32.const 6
  call $~lib/array/Array<f64>#__get
  f64.const 9
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 57
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  i32.const 7
  call $~lib/array/Array<f64>#__get
  f64.const 13
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 58
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  i32.const 8
  call $~lib/array/Array<f64>#__get
  f64.const 2
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 59
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  i32.const 9
  call $~lib/array/Array<f64>#__get
  f64.const 6
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 60
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  i32.const 10
  call $~lib/array/Array<f64>#__get
  f64.const 10
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 61
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  i32.const 11
  call $~lib/array/Array<f64>#__get
  f64.const 14
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 62
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  i32.const 12
  call $~lib/array/Array<f64>#__get
  f64.const 3
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 63
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  i32.const 13
  call $~lib/array/Array<f64>#__get
  f64.const 7
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 64
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  i32.const 14
  call $~lib/array/Array<f64>#__get
  f64.const 11
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 65
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  i32.const 15
  call $~lib/array/Array<f64>#__get
  f64.const 15
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 66
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $src/as/math/Matrix4/Matrix4#identity (param $0 i32) (result i32)
  local.get $0
  f64.const 1
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 1
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 1
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 1
  call $src/as/math/Matrix4/Matrix4#set
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $start:src/as/math/Matrix4.spec~anonymous|0~anonymous|0~anonymous|2
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  local.set $0
  local.get $0
  f64.const 0
  f64.const 1
  f64.const 2
  f64.const 3
  f64.const 4
  f64.const 5
  f64.const 6
  f64.const 7
  f64.const 8
  f64.const 9
  f64.const 10
  f64.const 11
  f64.const 12
  f64.const 13
  f64.const 14
  f64.const 15
  call $src/as/math/Matrix4/Matrix4#set
  call $~lib/rt/pure/__release
  local.get $0
  i32.load
  i32.const 0
  call $~lib/array/Array<f64>#__get
  f64.const 0
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 72
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  i32.const 1
  call $~lib/array/Array<f64>#__get
  f64.const 4
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 73
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  i32.const 2
  call $~lib/array/Array<f64>#__get
  f64.const 8
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 74
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  i32.const 3
  call $~lib/array/Array<f64>#__get
  f64.const 12
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 75
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  i32.const 4
  call $~lib/array/Array<f64>#__get
  f64.const 1
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 76
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  i32.const 5
  call $~lib/array/Array<f64>#__get
  f64.const 5
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 77
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  i32.const 6
  call $~lib/array/Array<f64>#__get
  f64.const 9
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 78
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  i32.const 7
  call $~lib/array/Array<f64>#__get
  f64.const 13
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 79
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  i32.const 8
  call $~lib/array/Array<f64>#__get
  f64.const 2
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 80
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  i32.const 9
  call $~lib/array/Array<f64>#__get
  f64.const 6
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 81
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  i32.const 10
  call $~lib/array/Array<f64>#__get
  f64.const 10
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 82
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  i32.const 11
  call $~lib/array/Array<f64>#__get
  f64.const 14
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 83
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  i32.const 12
  call $~lib/array/Array<f64>#__get
  f64.const 3
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 84
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  i32.const 13
  call $~lib/array/Array<f64>#__get
  f64.const 7
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 85
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  i32.const 14
  call $~lib/array/Array<f64>#__get
  f64.const 11
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 86
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  i32.const 15
  call $~lib/array/Array<f64>#__get
  f64.const 15
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 87
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  local.set $1
  local.get $1
  local.get $0
  f64.const 0.0001
  call $src/as/math/Matrix4/matrixEquals4
  i32.eqz
  i32.eqz
  if
   i32.const 560
   i32.const 592
   i32.const 90
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $src/as/math/Matrix4/Matrix4#identity
  call $~lib/rt/pure/__release
  local.get $1
  local.get $0
  f64.const 0.0001
  call $src/as/math/Matrix4/matrixEquals4
  i32.eqz
  if
   i32.const 560
   i32.const 592
   i32.const 93
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $src/as/math/Matrix4/Matrix4#fromArray (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  i32.const 0
  local.set $3
  loop $for-loop|0
   local.get $3
   i32.const 16
   i32.lt_s
   local.set $4
   local.get $4
   if
    local.get $0
    i32.load
    local.get $3
    local.get $1
    local.get $3
    local.get $2
    i32.add
    call $~lib/array/Array<f64>#__get
    call $~lib/array/Array<f64>#__set
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $src/as/math/Matrix4/Matrix4#clone (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  local.set $1
  local.get $1
  local.get $0
  i32.load
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#fromArray
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $start:src/as/math/Matrix4.spec~anonymous|0~anonymous|0~anonymous|3
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  local.set $0
  local.get $0
  f64.const 0
  f64.const 1
  f64.const 2
  f64.const 3
  f64.const 4
  f64.const 5
  f64.const 6
  f64.const 7
  f64.const 8
  f64.const 9
  f64.const 10
  f64.const 11
  f64.const 12
  f64.const 13
  f64.const 14
  f64.const 15
  call $src/as/math/Matrix4/Matrix4#set
  call $~lib/rt/pure/__release
  local.get $0
  call $src/as/math/Matrix4/Matrix4#clone
  local.set $1
  local.get $0
  local.get $1
  f64.const 0.0001
  call $src/as/math/Matrix4/matrixEquals4
  i32.eqz
  if
   i32.const 912
   i32.const 592
   i32.const 101
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  i32.const 0
  f64.const 2
  call $~lib/array/Array<f64>#__set
  local.get $0
  local.get $1
  f64.const 0.0001
  call $src/as/math/Matrix4/matrixEquals4
  i32.eqz
  i32.eqz
  if
   i32.const 992
   i32.const 592
   i32.const 105
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $src/as/math/Matrix4/Matrix4#copy (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $2
  i32.const 0
  local.get $3
  i32.const 0
  call $~lib/array/Array<f64>#__get
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 1
  local.get $3
  i32.const 1
  call $~lib/array/Array<f64>#__get
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 2
  local.get $3
  i32.const 2
  call $~lib/array/Array<f64>#__get
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 3
  local.get $3
  i32.const 3
  call $~lib/array/Array<f64>#__get
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 4
  local.get $3
  i32.const 4
  call $~lib/array/Array<f64>#__get
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 5
  local.get $3
  i32.const 5
  call $~lib/array/Array<f64>#__get
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 6
  local.get $3
  i32.const 6
  call $~lib/array/Array<f64>#__get
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 7
  local.get $3
  i32.const 7
  call $~lib/array/Array<f64>#__get
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 8
  local.get $3
  i32.const 8
  call $~lib/array/Array<f64>#__get
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 9
  local.get $3
  i32.const 9
  call $~lib/array/Array<f64>#__get
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 10
  local.get $3
  i32.const 10
  call $~lib/array/Array<f64>#__get
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 11
  local.get $3
  i32.const 11
  call $~lib/array/Array<f64>#__get
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 12
  local.get $3
  i32.const 12
  call $~lib/array/Array<f64>#__get
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 13
  local.get $3
  i32.const 13
  call $~lib/array/Array<f64>#__get
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 14
  local.get $3
  i32.const 14
  call $~lib/array/Array<f64>#__get
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 15
  local.get $3
  i32.const 15
  call $~lib/array/Array<f64>#__get
  call $~lib/array/Array<f64>#__set
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $start:src/as/math/Matrix4.spec~anonymous|0~anonymous|0~anonymous|4
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  local.set $0
  local.get $0
  f64.const 0
  f64.const 1
  f64.const 2
  f64.const 3
  f64.const 4
  f64.const 5
  f64.const 6
  f64.const 7
  f64.const 8
  f64.const 9
  f64.const 10
  f64.const 11
  f64.const 12
  f64.const 13
  f64.const 14
  f64.const 15
  call $src/as/math/Matrix4/Matrix4#set
  call $~lib/rt/pure/__release
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  local.set $1
  local.get $1
  local.get $0
  call $src/as/math/Matrix4/Matrix4#copy
  call $~lib/rt/pure/__release
  local.get $0
  local.get $1
  f64.const 0.0001
  call $src/as/math/Matrix4/matrixEquals4
  i32.eqz
  if
   i32.const 560
   i32.const 592
   i32.const 114
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  i32.const 0
  f64.const 2
  call $~lib/array/Array<f64>#__set
  local.get $0
  local.get $1
  f64.const 0.0001
  call $src/as/math/Matrix4/matrixEquals4
  i32.eqz
  i32.eqz
  if
   i32.const 560
   i32.const 592
   i32.const 118
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $src/as/math/Euler/Euler#constructor~anonymous|0
  nop
 )
 (func $src/as/math/Euler/Euler#constructor (param $0 i32) (param $1 f64) (param $2 f64) (param $3 f64) (param $4 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 40
   i32.const 10
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 1
  i32.store8
  local.get $0
  f64.const 0
  f64.store offset=8
  local.get $0
  f64.const 0
  f64.store offset=16
  local.get $0
  f64.const 0
  f64.store offset=24
  local.get $0
  i32.const 0
  i32.store offset=32
  local.get $0
  i32.const 6
  i32.store offset=36
  local.get $0
  local.get $1
  f64.store offset=8
  local.get $0
  local.get $2
  f64.store offset=16
  local.get $0
  local.get $3
  f64.store offset=24
  local.get $0
  local.get $4
  i32.store offset=32
  local.get $0
 )
 (func $~lib/array/Array<src/as/math/Euler/Euler>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<src/as/math/Euler/Euler>#__uget (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<src/as/math/Euler/Euler>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 448
   i32.const 512
   i32.const 104
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<src/as/math/Euler/Euler>#__uget
  local.set $2
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $2
  i32.eqz
  if
   i32.const 1264
   i32.const 512
   i32.const 108
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
 )
 (func $src/as/math/Euler/Euler#get:x (param $0 i32) (result f64)
  local.get $0
  f64.load offset=8
 )
 (func $src/as/math/Euler/Euler#get:y (param $0 i32) (result f64)
  local.get $0
  f64.load offset=16
 )
 (func $src/as/math/Euler/Euler#get:z (param $0 i32) (result f64)
  local.get $0
  f64.load offset=24
 )
 (func $~lib/math/pio2_large_quot (param $0 f64) (param $1 i64) (result i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (local $9 i64)
  (local $10 i64)
  (local $11 i64)
  (local $12 i64)
  (local $13 i64)
  (local $14 i64)
  (local $15 i64)
  (local $16 i64)
  (local $17 i64)
  (local $18 i64)
  (local $19 i64)
  (local $20 i64)
  (local $21 i64)
  (local $22 i64)
  (local $23 i64)
  (local $24 i64)
  (local $25 i64)
  (local $26 i64)
  (local $27 i64)
  (local $28 i64)
  (local $29 i64)
  (local $30 i64)
  (local $31 i64)
  (local $32 i64)
  (local $33 i64)
  (local $34 i64)
  (local $35 i64)
  (local $36 f64)
  local.get $1
  i64.const 9223372036854775807
  i64.and
  local.set $2
  local.get $2
  i64.const 52
  i64.shr_s
  i64.const 1045
  i64.sub
  local.set $3
  local.get $3
  i64.const 63
  i64.and
  local.set $4
  i32.const 1360
  local.get $3
  i64.const 6
  i64.shr_s
  i32.wrap_i64
  i32.const 3
  i32.shl
  i32.add
  local.set $5
  local.get $5
  i64.load
  local.set $9
  local.get $5
  i64.load offset=8
  local.set $10
  local.get $5
  i64.load offset=16
  local.set $11
  local.get $4
  i64.const 0
  i64.ne
  if
   i32.const 64
   i64.extend_i32_s
   local.get $4
   i64.sub
   local.set $12
   local.get $5
   i64.load offset=24
   local.set $13
   local.get $10
   local.get $12
   i64.shr_u
   local.get $9
   local.get $4
   i64.shl
   i64.or
   local.set $6
   local.get $11
   local.get $12
   i64.shr_u
   local.get $10
   local.get $4
   i64.shl
   i64.or
   local.set $7
   local.get $13
   local.get $12
   i64.shr_u
   local.get $11
   local.get $4
   i64.shl
   i64.or
   local.set $8
  else
   local.get $9
   local.set $6
   local.get $10
   local.set $7
   local.get $11
   local.set $8
  end
  local.get $1
  i64.const 4503599627370495
  i64.and
  i64.const 4503599627370496
  i64.or
  local.set $14
  local.get $7
  local.set $13
  local.get $14
  local.set $12
  local.get $13
  i64.const 4294967295
  i64.and
  local.set $15
  local.get $12
  i64.const 4294967295
  i64.and
  local.set $16
  local.get $13
  i64.const 32
  i64.shr_u
  local.set $13
  local.get $12
  i64.const 32
  i64.shr_u
  local.set $12
  local.get $15
  local.get $16
  i64.mul
  local.set $19
  local.get $19
  i64.const 4294967295
  i64.and
  local.set $17
  local.get $13
  local.get $16
  i64.mul
  local.get $19
  i64.const 32
  i64.shr_u
  i64.add
  local.set $19
  local.get $19
  i64.const 32
  i64.shr_u
  local.set $18
  local.get $15
  local.get $12
  i64.mul
  local.get $19
  i64.const 4294967295
  i64.and
  i64.add
  local.set $19
  local.get $13
  local.get $12
  i64.mul
  local.get $18
  i64.add
  local.get $19
  i64.const 32
  i64.shr_u
  i64.add
  global.set $~lib/math/res128_hi
  local.get $19
  i64.const 32
  i64.shl
  local.get $17
  i64.add
  local.set $20
  global.get $~lib/math/res128_hi
  local.set $21
  local.get $6
  local.get $14
  i64.mul
  local.set $22
  local.get $8
  i64.const 32
  i64.shr_u
  local.get $14
  i64.const 32
  i64.shr_s
  i64.mul
  local.set $23
  local.get $20
  local.get $23
  i64.add
  local.set $24
  local.get $22
  local.get $21
  i64.add
  local.get $24
  local.get $23
  i64.lt_u
  i64.extend_i32_u
  i64.add
  local.set $25
  local.get $24
  i64.const 2
  i64.shl
  local.set $26
  local.get $25
  i64.const 2
  i64.shl
  local.get $24
  i64.const 62
  i64.shr_u
  i64.or
  local.set $27
  local.get $27
  i64.const 63
  i64.shr_s
  local.set $28
  local.get $28
  i64.const 1
  i64.shr_s
  local.set $29
  local.get $25
  i64.const 62
  i64.shr_s
  local.get $28
  i64.sub
  local.set $30
  i64.const 4372995238176751616
  local.get $26
  local.get $28
  i64.xor
  local.set $13
  local.get $27
  local.get $29
  i64.xor
  local.set $12
  local.get $12
  i64.clz
  local.set $19
  local.get $12
  local.get $19
  i64.shl
  local.get $13
  i64.const 64
  local.get $19
  i64.sub
  i64.shr_u
  i64.or
  local.set $12
  local.get $13
  local.get $19
  i64.shl
  local.set $13
  i64.const -3958705157555305932
  local.set $16
  local.get $12
  local.set $15
  local.get $16
  i64.const 4294967295
  i64.and
  local.set $18
  local.get $15
  i64.const 4294967295
  i64.and
  local.set $17
  local.get $16
  i64.const 32
  i64.shr_u
  local.set $16
  local.get $15
  i64.const 32
  i64.shr_u
  local.set $15
  local.get $18
  local.get $17
  i64.mul
  local.set $33
  local.get $33
  i64.const 4294967295
  i64.and
  local.set $31
  local.get $16
  local.get $17
  i64.mul
  local.get $33
  i64.const 32
  i64.shr_u
  i64.add
  local.set $33
  local.get $33
  i64.const 32
  i64.shr_u
  local.set $32
  local.get $18
  local.get $15
  i64.mul
  local.get $33
  i64.const 4294967295
  i64.and
  i64.add
  local.set $33
  local.get $16
  local.get $15
  i64.mul
  local.get $32
  i64.add
  local.get $33
  i64.const 32
  i64.shr_u
  i64.add
  global.set $~lib/math/res128_hi
  local.get $33
  i64.const 32
  i64.shl
  local.get $31
  i64.add
  local.set $33
  global.get $~lib/math/res128_hi
  local.set $32
  local.get $32
  i64.const 11
  i64.shr_u
  local.set $31
  local.get $33
  i64.const 11
  i64.shr_u
  local.get $32
  i64.const 53
  i64.shl
  i64.or
  local.set $17
  f64.const 2.6469779601696886e-23
  i64.const -4267615245585081135
  f64.convert_i64_u
  f64.mul
  local.get $12
  f64.convert_i64_u
  f64.mul
  f64.const 2.6469779601696886e-23
  i64.const -3958705157555305932
  f64.convert_i64_u
  f64.mul
  local.get $13
  f64.convert_i64_u
  f64.mul
  f64.add
  i64.trunc_f64_u
  local.set $18
  local.get $31
  local.get $33
  local.get $18
  i64.lt_u
  i64.extend_i32_u
  i64.add
  f64.convert_i64_u
  global.set $~lib/math/rempio2_y0
  f64.const 5.421010862427522e-20
  local.get $17
  local.get $18
  i64.add
  f64.convert_i64_u
  f64.mul
  global.set $~lib/math/rempio2_y1
  local.get $19
  i64.const 52
  i64.shl
  i64.sub
  local.set $34
  local.get $1
  local.get $27
  i64.xor
  i64.const -9223372036854775808
  i64.and
  local.set $35
  local.get $34
  local.get $35
  i64.or
  f64.reinterpret_i64
  local.set $36
  global.get $~lib/math/rempio2_y0
  local.get $36
  f64.mul
  global.set $~lib/math/rempio2_y0
  global.get $~lib/math/rempio2_y1
  local.get $36
  f64.mul
  global.set $~lib/math/rempio2_y1
  local.get $30
  i32.wrap_i64
 )
 (func $~lib/math/NativeMath.cos (param $0 f64) (result f64)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  (local $8 f64)
  (local $9 f64)
  (local $10 i32)
  (local $11 i64)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 f64)
  (local $17 i32)
  (local $18 f64)
  (local $19 f64)
  local.get $0
  i64.reinterpret_f64
  local.set $1
  local.get $1
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.set $2
  local.get $2
  i32.const 31
  i32.shr_u
  local.set $3
  local.get $2
  i32.const 2147483647
  i32.and
  local.set $2
  local.get $2
  i32.const 1072243195
  i32.le_u
  if
   local.get $2
   i32.const 1044816030
   i32.lt_u
   if
    f64.const 1
    return
   end
   local.get $0
   local.set $5
   f64.const 0
   local.set $4
   local.get $5
   local.get $5
   f64.mul
   local.set $6
   local.get $6
   local.get $6
   f64.mul
   local.set $7
   local.get $6
   f64.const 0.0416666666666666
   local.get $6
   f64.const -0.001388888888887411
   local.get $6
   f64.const 2.480158728947673e-05
   f64.mul
   f64.add
   f64.mul
   f64.add
   f64.mul
   local.get $7
   local.get $7
   f64.mul
   f64.const -2.7557314351390663e-07
   local.get $6
   f64.const 2.087572321298175e-09
   local.get $6
   f64.const -1.1359647557788195e-11
   f64.mul
   f64.add
   f64.mul
   f64.add
   f64.mul
   f64.add
   local.set $8
   f64.const 0.5
   local.get $6
   f64.mul
   local.set $9
   f64.const 1
   local.get $9
   f64.sub
   local.set $7
   local.get $7
   f64.const 1
   local.get $7
   f64.sub
   local.get $9
   f64.sub
   local.get $6
   local.get $8
   f64.mul
   local.get $5
   local.get $4
   f64.mul
   f64.sub
   f64.add
   f64.add
   return
  end
  local.get $2
  i32.const 2146435072
  i32.ge_u
  if
   local.get $0
   local.get $0
   f64.sub
   return
  end
  block $~lib/math/rempio2|inlined.0 (result i32)
   local.get $0
   local.set $4
   local.get $1
   local.set $11
   local.get $3
   local.set $10
   local.get $11
   i64.const 32
   i64.shr_u
   i32.wrap_i64
   i32.const 2147483647
   i32.and
   local.set $12
   i32.const 0
   i32.const 1
   i32.lt_s
   drop
   local.get $12
   i32.const 1073928572
   i32.lt_u
   if
    i32.const 1
    local.set $13
    local.get $10
    i32.eqz
    if
     local.get $4
     f64.const 1.5707963267341256
     f64.sub
     local.set $9
     local.get $12
     i32.const 1073291771
     i32.ne
     if
      local.get $9
      f64.const 6.077100506506192e-11
      f64.sub
      local.set $8
      local.get $9
      local.get $8
      f64.sub
      f64.const 6.077100506506192e-11
      f64.sub
      local.set $7
     else
      local.get $9
      f64.const 6.077100506303966e-11
      f64.sub
      local.set $9
      local.get $9
      f64.const 2.0222662487959506e-21
      f64.sub
      local.set $8
      local.get $9
      local.get $8
      f64.sub
      f64.const 2.0222662487959506e-21
      f64.sub
      local.set $7
     end
    else
     local.get $4
     f64.const 1.5707963267341256
     f64.add
     local.set $9
     local.get $12
     i32.const 1073291771
     i32.ne
     if
      local.get $9
      f64.const 6.077100506506192e-11
      f64.add
      local.set $8
      local.get $9
      local.get $8
      f64.sub
      f64.const 6.077100506506192e-11
      f64.add
      local.set $7
     else
      local.get $9
      f64.const 6.077100506303966e-11
      f64.add
      local.set $9
      local.get $9
      f64.const 2.0222662487959506e-21
      f64.add
      local.set $8
      local.get $9
      local.get $8
      f64.sub
      f64.const 2.0222662487959506e-21
      f64.add
      local.set $7
     end
     i32.const -1
     local.set $13
    end
    local.get $8
    global.set $~lib/math/rempio2_y0
    local.get $7
    global.set $~lib/math/rempio2_y1
    local.get $13
    br $~lib/math/rempio2|inlined.0
   end
   local.get $12
   i32.const 1094263291
   i32.lt_u
   if
    local.get $4
    f64.const 0.6366197723675814
    f64.mul
    f64.nearest
    local.set $7
    local.get $4
    local.get $7
    f64.const 1.5707963267341256
    f64.mul
    f64.sub
    local.set $8
    local.get $7
    f64.const 6.077100506506192e-11
    f64.mul
    local.set $9
    local.get $12
    i32.const 20
    i32.shr_u
    local.set $13
    local.get $8
    local.get $9
    f64.sub
    local.set $6
    local.get $6
    i64.reinterpret_f64
    i64.const 32
    i64.shr_u
    i32.wrap_i64
    local.set $14
    local.get $13
    local.get $14
    i32.const 20
    i32.shr_u
    i32.const 2047
    i32.and
    i32.sub
    local.set $15
    local.get $15
    i32.const 16
    i32.gt_u
    if
     local.get $8
     local.set $5
     local.get $7
     f64.const 6.077100506303966e-11
     f64.mul
     local.set $9
     local.get $5
     local.get $9
     f64.sub
     local.set $8
     local.get $7
     f64.const 2.0222662487959506e-21
     f64.mul
     local.get $5
     local.get $8
     f64.sub
     local.get $9
     f64.sub
     f64.sub
     local.set $9
     local.get $8
     local.get $9
     f64.sub
     local.set $6
     local.get $6
     i64.reinterpret_f64
     i64.const 32
     i64.shr_u
     i32.wrap_i64
     local.set $14
     local.get $13
     local.get $14
     i32.const 20
     i32.shr_u
     i32.const 2047
     i32.and
     i32.sub
     local.set $15
     local.get $15
     i32.const 49
     i32.gt_u
     if
      local.get $8
      local.set $16
      local.get $7
      f64.const 2.0222662487111665e-21
      f64.mul
      local.set $9
      local.get $16
      local.get $9
      f64.sub
      local.set $8
      local.get $7
      f64.const 8.4784276603689e-32
      f64.mul
      local.get $16
      local.get $8
      f64.sub
      local.get $9
      f64.sub
      f64.sub
      local.set $9
      local.get $8
      local.get $9
      f64.sub
      local.set $6
     end
    end
    local.get $8
    local.get $6
    f64.sub
    local.get $9
    f64.sub
    local.set $5
    local.get $6
    global.set $~lib/math/rempio2_y0
    local.get $5
    global.set $~lib/math/rempio2_y1
    local.get $7
    i32.trunc_f64_s
    br $~lib/math/rempio2|inlined.0
   end
   local.get $4
   local.get $11
   call $~lib/math/pio2_large_quot
   local.set $15
   i32.const 0
   local.get $15
   i32.sub
   local.get $15
   local.get $10
   select
  end
  local.set $17
  global.get $~lib/math/rempio2_y0
  local.set $18
  global.get $~lib/math/rempio2_y1
  local.set $19
  local.get $17
  i32.const 1
  i32.and
  if (result f64)
   block $~lib/math/sin_kern|inlined.0 (result f64)
    local.get $18
    local.set $7
    local.get $19
    local.set $16
    i32.const 1
    local.set $13
    local.get $7
    local.get $7
    f64.mul
    local.set $4
    local.get $4
    local.get $4
    f64.mul
    local.set $5
    f64.const 0.00833333333332249
    local.get $4
    f64.const -1.984126982985795e-04
    local.get $4
    f64.const 2.7557313707070068e-06
    f64.mul
    f64.add
    f64.mul
    f64.add
    local.get $4
    local.get $5
    f64.mul
    f64.const -2.5050760253406863e-08
    local.get $4
    f64.const 1.58969099521155e-10
    f64.mul
    f64.add
    f64.mul
    f64.add
    local.set $6
    local.get $4
    local.get $7
    f64.mul
    local.set $9
    local.get $13
    i32.eqz
    if
     local.get $7
     local.get $9
     f64.const -0.16666666666666632
     local.get $4
     local.get $6
     f64.mul
     f64.add
     f64.mul
     f64.add
     br $~lib/math/sin_kern|inlined.0
    else
     local.get $7
     local.get $4
     f64.const 0.5
     local.get $16
     f64.mul
     local.get $9
     local.get $6
     f64.mul
     f64.sub
     f64.mul
     local.get $16
     f64.sub
     local.get $9
     f64.const -0.16666666666666632
     f64.mul
     f64.sub
     f64.sub
     br $~lib/math/sin_kern|inlined.0
    end
    unreachable
   end
  else
   local.get $18
   local.set $16
   local.get $19
   local.set $8
   local.get $16
   local.get $16
   f64.mul
   local.set $9
   local.get $9
   local.get $9
   f64.mul
   local.set $6
   local.get $9
   f64.const 0.0416666666666666
   local.get $9
   f64.const -0.001388888888887411
   local.get $9
   f64.const 2.480158728947673e-05
   f64.mul
   f64.add
   f64.mul
   f64.add
   f64.mul
   local.get $6
   local.get $6
   f64.mul
   f64.const -2.7557314351390663e-07
   local.get $9
   f64.const 2.087572321298175e-09
   local.get $9
   f64.const -1.1359647557788195e-11
   f64.mul
   f64.add
   f64.mul
   f64.add
   f64.mul
   f64.add
   local.set $5
   f64.const 0.5
   local.get $9
   f64.mul
   local.set $4
   f64.const 1
   local.get $4
   f64.sub
   local.set $6
   local.get $6
   f64.const 1
   local.get $6
   f64.sub
   local.get $4
   f64.sub
   local.get $9
   local.get $5
   f64.mul
   local.get $16
   local.get $8
   f64.mul
   f64.sub
   f64.add
   f64.add
  end
  local.set $0
  local.get $17
  i32.const 1
  i32.add
  i32.const 2
  i32.and
  if (result f64)
   local.get $0
   f64.neg
  else
   local.get $0
  end
 )
 (func $~lib/math/NativeMath.sin (param $0 f64) (result f64)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  (local $8 f64)
  (local $9 f64)
  (local $10 f64)
  (local $11 i64)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 f64)
  (local $17 i32)
  (local $18 f64)
  (local $19 f64)
  local.get $0
  i64.reinterpret_f64
  local.set $1
  local.get $1
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.set $2
  local.get $2
  i32.const 31
  i32.shr_u
  local.set $3
  local.get $2
  i32.const 2147483647
  i32.and
  local.set $2
  local.get $2
  i32.const 1072243195
  i32.le_u
  if
   local.get $2
   i32.const 1045430272
   i32.lt_u
   if
    local.get $0
    return
   end
   block $~lib/math/sin_kern|inlined.1 (result f64)
    local.get $0
    local.set $6
    f64.const 0
    local.set $5
    i32.const 0
    local.set $4
    local.get $6
    local.get $6
    f64.mul
    local.set $7
    local.get $7
    local.get $7
    f64.mul
    local.set $8
    f64.const 0.00833333333332249
    local.get $7
    f64.const -1.984126982985795e-04
    local.get $7
    f64.const 2.7557313707070068e-06
    f64.mul
    f64.add
    f64.mul
    f64.add
    local.get $7
    local.get $8
    f64.mul
    f64.const -2.5050760253406863e-08
    local.get $7
    f64.const 1.58969099521155e-10
    f64.mul
    f64.add
    f64.mul
    f64.add
    local.set $9
    local.get $7
    local.get $6
    f64.mul
    local.set $10
    local.get $4
    i32.eqz
    if
     local.get $6
     local.get $10
     f64.const -0.16666666666666632
     local.get $7
     local.get $9
     f64.mul
     f64.add
     f64.mul
     f64.add
     br $~lib/math/sin_kern|inlined.1
    else
     local.get $6
     local.get $7
     f64.const 0.5
     local.get $5
     f64.mul
     local.get $10
     local.get $9
     f64.mul
     f64.sub
     f64.mul
     local.get $5
     f64.sub
     local.get $10
     f64.const -0.16666666666666632
     f64.mul
     f64.sub
     f64.sub
     br $~lib/math/sin_kern|inlined.1
    end
    unreachable
   end
   return
  end
  local.get $2
  i32.const 2146435072
  i32.ge_u
  if
   local.get $0
   local.get $0
   f64.sub
   return
  end
  block $~lib/math/rempio2|inlined.1 (result i32)
   local.get $0
   local.set $5
   local.get $1
   local.set $11
   local.get $3
   local.set $4
   local.get $11
   i64.const 32
   i64.shr_u
   i32.wrap_i64
   i32.const 2147483647
   i32.and
   local.set $12
   i32.const 0
   i32.const 1
   i32.lt_s
   drop
   local.get $12
   i32.const 1073928572
   i32.lt_u
   if
    i32.const 1
    local.set $13
    local.get $4
    i32.eqz
    if
     local.get $5
     f64.const 1.5707963267341256
     f64.sub
     local.set $10
     local.get $12
     i32.const 1073291771
     i32.ne
     if
      local.get $10
      f64.const 6.077100506506192e-11
      f64.sub
      local.set $9
      local.get $10
      local.get $9
      f64.sub
      f64.const 6.077100506506192e-11
      f64.sub
      local.set $8
     else
      local.get $10
      f64.const 6.077100506303966e-11
      f64.sub
      local.set $10
      local.get $10
      f64.const 2.0222662487959506e-21
      f64.sub
      local.set $9
      local.get $10
      local.get $9
      f64.sub
      f64.const 2.0222662487959506e-21
      f64.sub
      local.set $8
     end
    else
     local.get $5
     f64.const 1.5707963267341256
     f64.add
     local.set $10
     local.get $12
     i32.const 1073291771
     i32.ne
     if
      local.get $10
      f64.const 6.077100506506192e-11
      f64.add
      local.set $9
      local.get $10
      local.get $9
      f64.sub
      f64.const 6.077100506506192e-11
      f64.add
      local.set $8
     else
      local.get $10
      f64.const 6.077100506303966e-11
      f64.add
      local.set $10
      local.get $10
      f64.const 2.0222662487959506e-21
      f64.add
      local.set $9
      local.get $10
      local.get $9
      f64.sub
      f64.const 2.0222662487959506e-21
      f64.add
      local.set $8
     end
     i32.const -1
     local.set $13
    end
    local.get $9
    global.set $~lib/math/rempio2_y0
    local.get $8
    global.set $~lib/math/rempio2_y1
    local.get $13
    br $~lib/math/rempio2|inlined.1
   end
   local.get $12
   i32.const 1094263291
   i32.lt_u
   if
    local.get $5
    f64.const 0.6366197723675814
    f64.mul
    f64.nearest
    local.set $8
    local.get $5
    local.get $8
    f64.const 1.5707963267341256
    f64.mul
    f64.sub
    local.set $9
    local.get $8
    f64.const 6.077100506506192e-11
    f64.mul
    local.set $10
    local.get $12
    i32.const 20
    i32.shr_u
    local.set $13
    local.get $9
    local.get $10
    f64.sub
    local.set $7
    local.get $7
    i64.reinterpret_f64
    i64.const 32
    i64.shr_u
    i32.wrap_i64
    local.set $14
    local.get $13
    local.get $14
    i32.const 20
    i32.shr_u
    i32.const 2047
    i32.and
    i32.sub
    local.set $15
    local.get $15
    i32.const 16
    i32.gt_u
    if
     local.get $9
     local.set $6
     local.get $8
     f64.const 6.077100506303966e-11
     f64.mul
     local.set $10
     local.get $6
     local.get $10
     f64.sub
     local.set $9
     local.get $8
     f64.const 2.0222662487959506e-21
     f64.mul
     local.get $6
     local.get $9
     f64.sub
     local.get $10
     f64.sub
     f64.sub
     local.set $10
     local.get $9
     local.get $10
     f64.sub
     local.set $7
     local.get $7
     i64.reinterpret_f64
     i64.const 32
     i64.shr_u
     i32.wrap_i64
     local.set $14
     local.get $13
     local.get $14
     i32.const 20
     i32.shr_u
     i32.const 2047
     i32.and
     i32.sub
     local.set $15
     local.get $15
     i32.const 49
     i32.gt_u
     if
      local.get $9
      local.set $16
      local.get $8
      f64.const 2.0222662487111665e-21
      f64.mul
      local.set $10
      local.get $16
      local.get $10
      f64.sub
      local.set $9
      local.get $8
      f64.const 8.4784276603689e-32
      f64.mul
      local.get $16
      local.get $9
      f64.sub
      local.get $10
      f64.sub
      f64.sub
      local.set $10
      local.get $9
      local.get $10
      f64.sub
      local.set $7
     end
    end
    local.get $9
    local.get $7
    f64.sub
    local.get $10
    f64.sub
    local.set $6
    local.get $7
    global.set $~lib/math/rempio2_y0
    local.get $6
    global.set $~lib/math/rempio2_y1
    local.get $8
    i32.trunc_f64_s
    br $~lib/math/rempio2|inlined.1
   end
   local.get $5
   local.get $11
   call $~lib/math/pio2_large_quot
   local.set $15
   i32.const 0
   local.get $15
   i32.sub
   local.get $15
   local.get $4
   select
  end
  local.set $17
  global.get $~lib/math/rempio2_y0
  local.set $18
  global.get $~lib/math/rempio2_y1
  local.set $19
  local.get $17
  i32.const 1
  i32.and
  if (result f64)
   local.get $18
   local.set $8
   local.get $19
   local.set $16
   local.get $8
   local.get $8
   f64.mul
   local.set $5
   local.get $5
   local.get $5
   f64.mul
   local.set $6
   local.get $5
   f64.const 0.0416666666666666
   local.get $5
   f64.const -0.001388888888887411
   local.get $5
   f64.const 2.480158728947673e-05
   f64.mul
   f64.add
   f64.mul
   f64.add
   f64.mul
   local.get $6
   local.get $6
   f64.mul
   f64.const -2.7557314351390663e-07
   local.get $5
   f64.const 2.087572321298175e-09
   local.get $5
   f64.const -1.1359647557788195e-11
   f64.mul
   f64.add
   f64.mul
   f64.add
   f64.mul
   f64.add
   local.set $7
   f64.const 0.5
   local.get $5
   f64.mul
   local.set $10
   f64.const 1
   local.get $10
   f64.sub
   local.set $6
   local.get $6
   f64.const 1
   local.get $6
   f64.sub
   local.get $10
   f64.sub
   local.get $5
   local.get $7
   f64.mul
   local.get $8
   local.get $16
   f64.mul
   f64.sub
   f64.add
   f64.add
  else
   block $~lib/math/sin_kern|inlined.2 (result f64)
    local.get $18
    local.set $16
    local.get $19
    local.set $9
    i32.const 1
    local.set $13
    local.get $16
    local.get $16
    f64.mul
    local.set $10
    local.get $10
    local.get $10
    f64.mul
    local.set $7
    f64.const 0.00833333333332249
    local.get $10
    f64.const -1.984126982985795e-04
    local.get $10
    f64.const 2.7557313707070068e-06
    f64.mul
    f64.add
    f64.mul
    f64.add
    local.get $10
    local.get $7
    f64.mul
    f64.const -2.5050760253406863e-08
    local.get $10
    f64.const 1.58969099521155e-10
    f64.mul
    f64.add
    f64.mul
    f64.add
    local.set $6
    local.get $10
    local.get $16
    f64.mul
    local.set $5
    local.get $13
    i32.eqz
    if
     local.get $16
     local.get $5
     f64.const -0.16666666666666632
     local.get $10
     local.get $6
     f64.mul
     f64.add
     f64.mul
     f64.add
     br $~lib/math/sin_kern|inlined.2
    else
     local.get $16
     local.get $10
     f64.const 0.5
     local.get $9
     f64.mul
     local.get $5
     local.get $6
     f64.mul
     f64.sub
     f64.mul
     local.get $9
     f64.sub
     local.get $5
     f64.const -0.16666666666666632
     f64.mul
     f64.sub
     f64.sub
     br $~lib/math/sin_kern|inlined.2
    end
    unreachable
   end
  end
  local.set $0
  local.get $17
  i32.const 2
  i32.and
  if (result f64)
   local.get $0
   f64.neg
  else
   local.get $0
  end
 )
 (func $src/as/math/Euler/Euler#get:order (param $0 i32) (result i32)
  local.get $0
  i32.load offset=32
 )
 (func $src/as/math/Matrix4/Matrix4#makeRotationFromEuler (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  (local $8 f64)
  (local $9 f64)
  (local $10 f64)
  (local $11 f64)
  (local $12 f64)
  (local $13 f64)
  (local $14 f64)
  (local $15 f64)
  (local $16 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $1
  call $src/as/math/Euler/Euler#get:x
  local.set $3
  local.get $1
  call $src/as/math/Euler/Euler#get:y
  local.set $4
  local.get $1
  call $src/as/math/Euler/Euler#get:z
  local.set $5
  local.get $3
  call $~lib/math/NativeMath.cos
  local.set $6
  local.get $3
  call $~lib/math/NativeMath.sin
  local.set $7
  local.get $4
  call $~lib/math/NativeMath.cos
  local.set $8
  local.get $4
  call $~lib/math/NativeMath.sin
  local.set $9
  local.get $5
  call $~lib/math/NativeMath.cos
  local.set $10
  local.get $5
  call $~lib/math/NativeMath.sin
  local.set $11
  local.get $1
  call $src/as/math/Euler/Euler#get:order
  global.get $src/as/math/Euler/EulerRotationOrder.XYZ
  i32.eq
  if
   local.get $6
   local.get $10
   f64.mul
   local.set $12
   local.get $6
   local.get $11
   f64.mul
   local.set $13
   local.get $7
   local.get $10
   f64.mul
   local.set $14
   local.get $7
   local.get $11
   f64.mul
   local.set $15
   local.get $2
   i32.const 0
   local.get $8
   local.get $10
   f64.mul
   call $~lib/array/Array<f64>#__set
   local.get $2
   i32.const 4
   local.get $8
   f64.neg
   local.get $11
   f64.mul
   call $~lib/array/Array<f64>#__set
   local.get $2
   i32.const 8
   local.get $9
   call $~lib/array/Array<f64>#__set
   local.get $2
   i32.const 1
   local.get $13
   local.get $14
   local.get $9
   f64.mul
   f64.add
   call $~lib/array/Array<f64>#__set
   local.get $2
   i32.const 5
   local.get $12
   local.get $15
   local.get $9
   f64.mul
   f64.sub
   call $~lib/array/Array<f64>#__set
   local.get $2
   i32.const 9
   local.get $7
   f64.neg
   local.get $8
   f64.mul
   call $~lib/array/Array<f64>#__set
   local.get $2
   i32.const 2
   local.get $15
   local.get $12
   local.get $9
   f64.mul
   f64.sub
   call $~lib/array/Array<f64>#__set
   local.get $2
   i32.const 6
   local.get $14
   local.get $13
   local.get $9
   f64.mul
   f64.add
   call $~lib/array/Array<f64>#__set
   local.get $2
   i32.const 10
   local.get $6
   local.get $8
   f64.mul
   call $~lib/array/Array<f64>#__set
  else
   local.get $1
   call $src/as/math/Euler/Euler#get:order
   global.get $src/as/math/Euler/EulerRotationOrder.YXZ
   i32.eq
   if
    local.get $8
    local.get $10
    f64.mul
    local.set $15
    local.get $8
    local.get $11
    f64.mul
    local.set $14
    local.get $9
    local.get $10
    f64.mul
    local.set $13
    local.get $9
    local.get $11
    f64.mul
    local.set $12
    local.get $2
    i32.const 0
    local.get $15
    local.get $12
    local.get $7
    f64.mul
    f64.add
    call $~lib/array/Array<f64>#__set
    local.get $2
    i32.const 4
    local.get $13
    local.get $7
    f64.mul
    local.get $14
    f64.sub
    call $~lib/array/Array<f64>#__set
    local.get $2
    i32.const 8
    local.get $6
    local.get $9
    f64.mul
    call $~lib/array/Array<f64>#__set
    local.get $2
    i32.const 1
    local.get $6
    local.get $11
    f64.mul
    call $~lib/array/Array<f64>#__set
    local.get $2
    i32.const 5
    local.get $6
    local.get $10
    f64.mul
    call $~lib/array/Array<f64>#__set
    local.get $2
    i32.const 9
    local.get $7
    f64.neg
    call $~lib/array/Array<f64>#__set
    local.get $2
    i32.const 2
    local.get $14
    local.get $7
    f64.mul
    local.get $13
    f64.sub
    call $~lib/array/Array<f64>#__set
    local.get $2
    i32.const 6
    local.get $12
    local.get $15
    local.get $7
    f64.mul
    f64.add
    call $~lib/array/Array<f64>#__set
    local.get $2
    i32.const 10
    local.get $6
    local.get $8
    f64.mul
    call $~lib/array/Array<f64>#__set
   else
    local.get $1
    call $src/as/math/Euler/Euler#get:order
    global.get $src/as/math/Euler/EulerRotationOrder.ZXY
    i32.eq
    if
     local.get $8
     local.get $10
     f64.mul
     local.set $12
     local.get $8
     local.get $11
     f64.mul
     local.set $13
     local.get $9
     local.get $10
     f64.mul
     local.set $14
     local.get $9
     local.get $11
     f64.mul
     local.set $15
     local.get $2
     i32.const 0
     local.get $12
     local.get $15
     local.get $7
     f64.mul
     f64.sub
     call $~lib/array/Array<f64>#__set
     local.get $2
     i32.const 4
     local.get $6
     f64.neg
     local.get $11
     f64.mul
     call $~lib/array/Array<f64>#__set
     local.get $2
     i32.const 8
     local.get $14
     local.get $13
     local.get $7
     f64.mul
     f64.add
     call $~lib/array/Array<f64>#__set
     local.get $2
     i32.const 1
     local.get $13
     local.get $14
     local.get $7
     f64.mul
     f64.add
     call $~lib/array/Array<f64>#__set
     local.get $2
     i32.const 5
     local.get $6
     local.get $10
     f64.mul
     call $~lib/array/Array<f64>#__set
     local.get $2
     i32.const 9
     local.get $15
     local.get $12
     local.get $7
     f64.mul
     f64.sub
     call $~lib/array/Array<f64>#__set
     local.get $2
     i32.const 2
     local.get $6
     f64.neg
     local.get $9
     f64.mul
     call $~lib/array/Array<f64>#__set
     local.get $2
     i32.const 6
     local.get $7
     call $~lib/array/Array<f64>#__set
     local.get $2
     i32.const 10
     local.get $6
     local.get $8
     f64.mul
     call $~lib/array/Array<f64>#__set
    else
     local.get $1
     call $src/as/math/Euler/Euler#get:order
     global.get $src/as/math/Euler/EulerRotationOrder.ZYX
     i32.eq
     if
      local.get $6
      local.get $10
      f64.mul
      local.set $15
      local.get $6
      local.get $11
      f64.mul
      local.set $14
      local.get $7
      local.get $10
      f64.mul
      local.set $13
      local.get $7
      local.get $11
      f64.mul
      local.set $12
      local.get $2
      i32.const 0
      local.get $8
      local.get $10
      f64.mul
      call $~lib/array/Array<f64>#__set
      local.get $2
      i32.const 4
      local.get $13
      local.get $9
      f64.mul
      local.get $14
      f64.sub
      call $~lib/array/Array<f64>#__set
      local.get $2
      i32.const 8
      local.get $15
      local.get $9
      f64.mul
      local.get $12
      f64.add
      call $~lib/array/Array<f64>#__set
      local.get $2
      i32.const 1
      local.get $8
      local.get $11
      f64.mul
      call $~lib/array/Array<f64>#__set
      local.get $2
      i32.const 5
      local.get $12
      local.get $9
      f64.mul
      local.get $15
      f64.add
      call $~lib/array/Array<f64>#__set
      local.get $2
      i32.const 9
      local.get $14
      local.get $9
      f64.mul
      local.get $13
      f64.sub
      call $~lib/array/Array<f64>#__set
      local.get $2
      i32.const 2
      local.get $9
      f64.neg
      call $~lib/array/Array<f64>#__set
      local.get $2
      i32.const 6
      local.get $7
      local.get $8
      f64.mul
      call $~lib/array/Array<f64>#__set
      local.get $2
      i32.const 10
      local.get $6
      local.get $8
      f64.mul
      call $~lib/array/Array<f64>#__set
     else
      local.get $1
      call $src/as/math/Euler/Euler#get:order
      global.get $src/as/math/Euler/EulerRotationOrder.YZX
      i32.eq
      if
       local.get $6
       local.get $8
       f64.mul
       local.set $12
       local.get $6
       local.get $9
       f64.mul
       local.set $13
       local.get $7
       local.get $8
       f64.mul
       local.set $14
       local.get $7
       local.get $9
       f64.mul
       local.set $15
       local.get $2
       i32.const 0
       local.get $8
       local.get $10
       f64.mul
       call $~lib/array/Array<f64>#__set
       local.get $2
       i32.const 4
       local.get $15
       local.get $12
       local.get $11
       f64.mul
       f64.sub
       call $~lib/array/Array<f64>#__set
       local.get $2
       i32.const 8
       local.get $14
       local.get $11
       f64.mul
       local.get $13
       f64.add
       call $~lib/array/Array<f64>#__set
       local.get $2
       i32.const 1
       local.get $11
       call $~lib/array/Array<f64>#__set
       local.get $2
       i32.const 5
       local.get $6
       local.get $10
       f64.mul
       call $~lib/array/Array<f64>#__set
       local.get $2
       i32.const 9
       local.get $7
       f64.neg
       local.get $10
       f64.mul
       call $~lib/array/Array<f64>#__set
       local.get $2
       i32.const 2
       local.get $9
       f64.neg
       local.get $10
       f64.mul
       call $~lib/array/Array<f64>#__set
       local.get $2
       i32.const 6
       local.get $13
       local.get $11
       f64.mul
       local.get $14
       f64.add
       call $~lib/array/Array<f64>#__set
       local.get $2
       i32.const 10
       local.get $12
       local.get $15
       local.get $11
       f64.mul
       f64.sub
       call $~lib/array/Array<f64>#__set
      else
       local.get $1
       call $src/as/math/Euler/Euler#get:order
       global.get $src/as/math/Euler/EulerRotationOrder.XZY
       i32.eq
       if
        local.get $6
        local.get $8
        f64.mul
        local.set $15
        local.get $6
        local.get $9
        f64.mul
        local.set $14
        local.get $7
        local.get $8
        f64.mul
        local.set $13
        local.get $7
        local.get $9
        f64.mul
        local.set $12
        local.get $2
        i32.const 0
        local.get $8
        local.get $10
        f64.mul
        call $~lib/array/Array<f64>#__set
        local.get $2
        i32.const 4
        local.get $11
        f64.neg
        call $~lib/array/Array<f64>#__set
        local.get $2
        i32.const 8
        local.get $9
        local.get $10
        f64.mul
        call $~lib/array/Array<f64>#__set
        local.get $2
        i32.const 1
        local.get $15
        local.get $11
        f64.mul
        local.get $12
        f64.add
        call $~lib/array/Array<f64>#__set
        local.get $2
        i32.const 5
        local.get $6
        local.get $10
        f64.mul
        call $~lib/array/Array<f64>#__set
        local.get $2
        i32.const 9
        local.get $14
        local.get $11
        f64.mul
        local.get $13
        f64.sub
        call $~lib/array/Array<f64>#__set
        local.get $2
        i32.const 2
        local.get $13
        local.get $11
        f64.mul
        local.get $14
        f64.sub
        call $~lib/array/Array<f64>#__set
        local.get $2
        i32.const 6
        local.get $7
        local.get $10
        f64.mul
        call $~lib/array/Array<f64>#__set
        local.get $2
        i32.const 10
        local.get $12
        local.get $11
        f64.mul
        local.get $15
        f64.add
        call $~lib/array/Array<f64>#__set
       end
      end
     end
    end
   end
  end
  local.get $2
  i32.const 3
  f64.const 0
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 7
  f64.const 0
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 11
  f64.const 0
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 12
  f64.const 0
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 13
  f64.const 0
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 14
  f64.const 0
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 15
  f64.const 1
  call $~lib/array/Array<f64>#__set
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $16
  local.get $2
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $16
 )
 (func $src/as/math/Math/clamp (param $0 f64) (param $1 f64) (param $2 f64) (result f64)
  (local $3 f64)
  (local $4 f64)
  (local $5 f64)
  local.get $1
  local.set $5
  local.get $2
  local.set $4
  local.get $0
  local.set $3
  local.get $4
  local.get $3
  f64.min
  local.set $3
  local.get $5
  local.get $3
  f64.max
 )
 (func $~lib/math/R (param $0 f64) (result f64)
  (local $1 f64)
  (local $2 f64)
  local.get $0
  f64.const 0.16666666666666666
  local.get $0
  f64.const -0.3255658186224009
  local.get $0
  f64.const 0.20121253213486293
  local.get $0
  f64.const -0.04005553450067941
  local.get $0
  f64.const 7.915349942898145e-04
  local.get $0
  f64.const 3.479331075960212e-05
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  local.set $1
  f64.const 1
  local.get $0
  f64.const -2.403394911734414
  local.get $0
  f64.const 2.0209457602335057
  local.get $0
  f64.const -0.6882839716054533
  local.get $0
  f64.const 0.07703815055590194
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  local.set $2
  local.get $1
  local.get $2
  f64.div
 )
 (func $~lib/math/NativeMath.asin (param $0 f64) (result f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  (local $8 f64)
  local.get $0
  i64.reinterpret_f64
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.set $1
  local.get $1
  i32.const 2147483647
  i32.and
  local.set $2
  local.get $2
  i32.const 1072693248
  i32.ge_u
  if
   local.get $0
   i64.reinterpret_f64
   i32.wrap_i64
   local.set $3
   local.get $2
   i32.const 1072693248
   i32.sub
   local.get $3
   i32.or
   i32.const 0
   i32.eq
   if
    local.get $0
    f64.const 1.5707963267948966
    f64.mul
    f32.const 7.52316384526264e-37
    f64.promote_f32
    f64.add
    return
   end
   f64.const 0
   local.get $0
   local.get $0
   f64.sub
   f64.div
   return
  end
  local.get $2
  i32.const 1071644672
  i32.lt_u
  if
   local.get $2
   i32.const 1045430272
   i32.lt_u
   if (result i32)
    local.get $2
    i32.const 1048576
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
   f64.mul
   call $~lib/math/R
   f64.mul
   f64.add
   return
  end
  f64.const 0.5
  local.get $0
  f64.abs
  f64.const 0.5
  f64.mul
  f64.sub
  local.set $4
  local.get $4
  f64.sqrt
  local.set $5
  local.get $4
  call $~lib/math/R
  local.set $6
  local.get $2
  i32.const 1072640819
  i32.ge_u
  if
   f64.const 1.5707963267948966
   f64.const 2
   local.get $5
   local.get $5
   local.get $6
   f64.mul
   f64.add
   f64.mul
   f64.const 6.123233995736766e-17
   f64.sub
   f64.sub
   local.set $0
  else
   local.get $5
   i64.reinterpret_f64
   i64.const -4294967296
   i64.and
   f64.reinterpret_i64
   local.set $7
   local.get $4
   local.get $7
   local.get $7
   f64.mul
   f64.sub
   local.get $5
   local.get $7
   f64.add
   f64.div
   local.set $8
   f64.const 0.5
   f64.const 1.5707963267948966
   f64.mul
   f64.const 2
   local.get $5
   f64.mul
   local.get $6
   f64.mul
   f64.const 6.123233995736766e-17
   f64.const 2
   local.get $8
   f64.mul
   f64.sub
   f64.sub
   f64.const 0.5
   f64.const 1.5707963267948966
   f64.mul
   f64.const 2
   local.get $7
   f64.mul
   f64.sub
   f64.sub
   f64.sub
   local.set $0
  end
  local.get $1
  i32.const 31
  i32.shr_u
  if
   local.get $0
   f64.neg
   return
  end
  local.get $0
 )
 (func $~lib/math/NativeMath.atan (param $0 f64) (result f64)
  (local $1 i32)
  (local $2 f64)
  (local $3 f64)
  (local $4 i32)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  (local $8 f64)
  (local $9 i32)
  local.get $0
  i64.reinterpret_f64
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.set $1
  local.get $0
  local.set $2
  local.get $1
  i32.const 2147483647
  i32.and
  local.set $1
  local.get $1
  i32.const 1141899264
  i32.ge_u
  if
   local.get $0
   local.get $0
   f64.ne
   if
    local.get $0
    return
   end
   f64.const 1.5707963267948966
   f32.const 7.52316384526264e-37
   f64.promote_f32
   f64.add
   local.set $3
   local.get $3
   local.get $2
   f64.copysign
   return
  end
  local.get $1
  i32.const 1071382528
  i32.lt_u
  if
   local.get $1
   i32.const 1044381696
   i32.lt_u
   if
    local.get $0
    return
   end
   i32.const -1
   local.set $4
  else
   local.get $0
   f64.abs
   local.set $0
   local.get $1
   i32.const 1072889856
   i32.lt_u
   if
    local.get $1
    i32.const 1072037888
    i32.lt_u
    if
     i32.const 0
     local.set $4
     f64.const 2
     local.get $0
     f64.mul
     f64.const 1
     f64.sub
     f64.const 2
     local.get $0
     f64.add
     f64.div
     local.set $0
    else
     i32.const 1
     local.set $4
     local.get $0
     f64.const 1
     f64.sub
     local.get $0
     f64.const 1
     f64.add
     f64.div
     local.set $0
    end
   else
    local.get $1
    i32.const 1073971200
    i32.lt_u
    if
     i32.const 2
     local.set $4
     local.get $0
     f64.const 1.5
     f64.sub
     f64.const 1
     f64.const 1.5
     local.get $0
     f64.mul
     f64.add
     f64.div
     local.set $0
    else
     i32.const 3
     local.set $4
     f64.const -1
     local.get $0
     f64.div
     local.set $0
    end
   end
  end
  local.get $0
  local.get $0
  f64.mul
  local.set $3
  local.get $3
  local.get $3
  f64.mul
  local.set $5
  local.get $3
  f64.const 0.3333333333333293
  local.get $5
  f64.const 0.14285714272503466
  local.get $5
  f64.const 0.09090887133436507
  local.get $5
  f64.const 0.06661073137387531
  local.get $5
  f64.const 0.049768779946159324
  local.get $5
  f64.const 0.016285820115365782
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  local.set $6
  local.get $5
  f64.const -0.19999999999876483
  local.get $5
  f64.const -0.11111110405462356
  local.get $5
  f64.const -0.0769187620504483
  local.get $5
  f64.const -0.058335701337905735
  local.get $5
  f64.const -0.036531572744216916
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  f64.add
  f64.mul
  local.set $7
  local.get $0
  local.get $6
  local.get $7
  f64.add
  f64.mul
  local.set $8
  local.get $4
  i32.const 0
  i32.lt_s
  if
   local.get $0
   local.get $8
   f64.sub
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
       f64.const 0.4636476090008061
       local.get $8
       f64.const 2.2698777452961687e-17
       f64.sub
       local.get $0
       f64.sub
       f64.sub
       local.set $3
       br $break|0
      end
      f64.const 0.7853981633974483
      local.get $8
      f64.const 3.061616997868383e-17
      f64.sub
      local.get $0
      f64.sub
      f64.sub
      local.set $3
      br $break|0
     end
     f64.const 0.982793723247329
     local.get $8
     f64.const 1.3903311031230998e-17
     f64.sub
     local.get $0
     f64.sub
     f64.sub
     local.set $3
     br $break|0
    end
    f64.const 1.5707963267948966
    local.get $8
    f64.const 6.123233995736766e-17
    f64.sub
    local.get $0
    f64.sub
    f64.sub
    local.set $3
    br $break|0
   end
   unreachable
  end
  local.get $3
  local.get $2
  f64.copysign
 )
 (func $~lib/math/NativeMath.atan2 (param $0 f64) (param $1 f64) (result f64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 f64)
  (local $10 f64)
  local.get $1
  local.get $1
  f64.ne
  if (result i32)
   i32.const 1
  else
   local.get $0
   local.get $0
   f64.ne
  end
  if
   local.get $1
   local.get $0
   f64.add
   return
  end
  local.get $1
  i64.reinterpret_f64
  local.set $2
  local.get $2
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.set $3
  local.get $2
  i32.wrap_i64
  local.set $4
  local.get $0
  i64.reinterpret_f64
  local.set $2
  local.get $2
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.set $5
  local.get $2
  i32.wrap_i64
  local.set $6
  local.get $3
  i32.const 1072693248
  i32.sub
  local.get $4
  i32.or
  i32.const 0
  i32.eq
  if
   local.get $0
   call $~lib/math/NativeMath.atan
   return
  end
  local.get $5
  i32.const 31
  i32.shr_u
  i32.const 1
  i32.and
  local.get $3
  i32.const 30
  i32.shr_u
  i32.const 2
  i32.and
  i32.or
  local.set $7
  local.get $3
  i32.const 2147483647
  i32.and
  local.set $3
  local.get $5
  i32.const 2147483647
  i32.and
  local.set $5
  local.get $5
  local.get $6
  i32.or
  i32.const 0
  i32.eq
  if
   block $break|0
    block $case3|0
     block $case2|0
      block $case1|0
       block $case0|0
        local.get $7
        local.set $8
        local.get $8
        i32.const 0
        i32.eq
        br_if $case0|0
        local.get $8
        i32.const 1
        i32.eq
        br_if $case1|0
        local.get $8
        i32.const 2
        i32.eq
        br_if $case2|0
        local.get $8
        i32.const 3
        i32.eq
        br_if $case3|0
        br $break|0
       end
      end
      local.get $0
      return
     end
     global.get $~lib/math/NativeMath.PI
     return
    end
    global.get $~lib/math/NativeMath.PI
    f64.neg
    return
   end
  end
  local.get $3
  local.get $4
  i32.or
  i32.const 0
  i32.eq
  if
   local.get $7
   i32.const 1
   i32.and
   if (result f64)
    global.get $~lib/math/NativeMath.PI
    f64.neg
    f64.const 2
    f64.div
   else
    global.get $~lib/math/NativeMath.PI
    f64.const 2
    f64.div
   end
   return
  end
  local.get $3
  i32.const 2146435072
  i32.eq
  if
   local.get $5
   i32.const 2146435072
   i32.eq
   if
    local.get $7
    i32.const 2
    i32.and
    if (result f64)
     i32.const 3
     f64.convert_i32_s
     global.get $~lib/math/NativeMath.PI
     f64.mul
     f64.const 4
     f64.div
    else
     global.get $~lib/math/NativeMath.PI
     f64.const 4
     f64.div
    end
    local.set $9
    local.get $7
    i32.const 1
    i32.and
    if (result f64)
     local.get $9
     f64.neg
    else
     local.get $9
    end
    return
   else
    local.get $7
    i32.const 2
    i32.and
    if (result f64)
     global.get $~lib/math/NativeMath.PI
    else
     f64.const 0
    end
    local.set $9
    local.get $7
    i32.const 1
    i32.and
    if (result f64)
     local.get $9
     f64.neg
    else
     local.get $9
    end
    return
   end
   unreachable
  end
  local.get $3
  i32.const 64
  i32.const 20
  i32.shl
  i32.add
  local.get $5
  i32.lt_u
  if (result i32)
   i32.const 1
  else
   local.get $5
   i32.const 2146435072
   i32.eq
  end
  if
   local.get $7
   i32.const 1
   i32.and
   if (result f64)
    global.get $~lib/math/NativeMath.PI
    f64.neg
    f64.const 2
    f64.div
   else
    global.get $~lib/math/NativeMath.PI
    f64.const 2
    f64.div
   end
   return
  end
  local.get $7
  i32.const 2
  i32.and
  if (result i32)
   local.get $5
   i32.const 64
   i32.const 20
   i32.shl
   i32.add
   local.get $3
   i32.lt_u
  else
   i32.const 0
  end
  if
   f64.const 0
   local.set $10
  else
   local.get $0
   local.get $1
   f64.div
   f64.abs
   call $~lib/math/NativeMath.atan
   local.set $10
  end
  block $break|1
   block $case3|1
    block $case2|1
     block $case1|1
      block $case0|1
       local.get $7
       local.set $8
       local.get $8
       i32.const 0
       i32.eq
       br_if $case0|1
       local.get $8
       i32.const 1
       i32.eq
       br_if $case1|1
       local.get $8
       i32.const 2
       i32.eq
       br_if $case2|1
       local.get $8
       i32.const 3
       i32.eq
       br_if $case3|1
       br $break|1
      end
      local.get $10
      return
     end
     local.get $10
     f64.neg
     return
    end
    global.get $~lib/math/NativeMath.PI
    local.get $10
    f64.const 1.2246467991473532e-16
    f64.sub
    f64.sub
    return
   end
   local.get $10
   f64.const 1.2246467991473532e-16
   f64.sub
   global.get $~lib/math/NativeMath.PI
   f64.sub
   return
  end
  unreachable
 )
 (func $src/as/math/Euler/Euler#setFromRotationMatrix (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  (local $8 f64)
  (local $9 f64)
  (local $10 f64)
  (local $11 f64)
  (local $12 f64)
  (local $13 f64)
  (local $14 f64)
  (local $15 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.load
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $4
  i32.const 0
  call $~lib/array/Array<f64>#__get
  local.set $5
  local.get $4
  i32.const 4
  call $~lib/array/Array<f64>#__get
  local.set $6
  local.get $4
  i32.const 8
  call $~lib/array/Array<f64>#__get
  local.set $7
  local.get $4
  i32.const 1
  call $~lib/array/Array<f64>#__get
  local.set $8
  local.get $4
  i32.const 5
  call $~lib/array/Array<f64>#__get
  local.set $9
  local.get $4
  i32.const 9
  call $~lib/array/Array<f64>#__get
  local.set $10
  local.get $4
  i32.const 2
  call $~lib/array/Array<f64>#__get
  local.set $11
  local.get $4
  i32.const 6
  call $~lib/array/Array<f64>#__get
  local.set $12
  local.get $4
  i32.const 10
  call $~lib/array/Array<f64>#__get
  local.set $13
  local.get $2
  global.get $src/as/math/Euler/EulerRotationOrder.XYZ
  i32.eq
  if
   local.get $0
   local.get $7
   f64.const -1
   f64.const 1
   call $src/as/math/Math/clamp
   call $~lib/math/NativeMath.asin
   f64.store offset=16
   local.get $7
   local.set $14
   local.get $14
   f64.abs
   f64.const 0.99999
   f64.lt
   if
    local.get $0
    local.get $10
    f64.neg
    local.get $13
    call $~lib/math/NativeMath.atan2
    f64.store offset=8
    local.get $0
    local.get $6
    f64.neg
    local.get $5
    call $~lib/math/NativeMath.atan2
    f64.store offset=24
   else
    local.get $0
    local.get $12
    local.get $9
    call $~lib/math/NativeMath.atan2
    f64.store offset=8
    local.get $0
    f64.const 0
    f64.store offset=24
   end
  else
   local.get $2
   global.get $src/as/math/Euler/EulerRotationOrder.YXZ
   i32.eq
   if
    local.get $0
    local.get $10
    f64.const -1
    f64.const 1
    call $src/as/math/Math/clamp
    f64.neg
    call $~lib/math/NativeMath.asin
    f64.store offset=8
    local.get $10
    local.set $14
    local.get $14
    f64.abs
    f64.const 0.99999
    f64.lt
    if
     local.get $0
     local.get $7
     local.get $13
     call $~lib/math/NativeMath.atan2
     f64.store offset=16
     local.get $0
     local.get $8
     local.get $9
     call $~lib/math/NativeMath.atan2
     f64.store offset=24
    else
     local.get $0
     local.get $11
     f64.neg
     local.get $5
     call $~lib/math/NativeMath.atan2
     f64.store offset=16
     local.get $0
     f64.const 0
     f64.store offset=24
    end
   else
    local.get $2
    global.get $src/as/math/Euler/EulerRotationOrder.ZXY
    i32.eq
    if
     local.get $0
     local.get $12
     f64.const -1
     f64.const 1
     call $src/as/math/Math/clamp
     call $~lib/math/NativeMath.asin
     f64.store offset=8
     local.get $12
     local.set $14
     local.get $14
     f64.abs
     f64.const 0.99999
     f64.lt
     if
      local.get $0
      local.get $11
      f64.neg
      local.get $13
      call $~lib/math/NativeMath.atan2
      f64.store offset=16
      local.get $0
      local.get $6
      f64.neg
      local.get $9
      call $~lib/math/NativeMath.atan2
      f64.store offset=24
     else
      local.get $0
      f64.const 0
      f64.store offset=16
      local.get $0
      local.get $8
      local.get $5
      call $~lib/math/NativeMath.atan2
      f64.store offset=24
     end
    else
     local.get $2
     global.get $src/as/math/Euler/EulerRotationOrder.ZYX
     i32.eq
     if
      local.get $0
      local.get $11
      f64.const -1
      f64.const 1
      call $src/as/math/Math/clamp
      f64.neg
      call $~lib/math/NativeMath.asin
      f64.store offset=16
      local.get $11
      local.set $14
      local.get $14
      f64.abs
      f64.const 0.99999
      f64.lt
      if
       local.get $0
       local.get $12
       local.get $13
       call $~lib/math/NativeMath.atan2
       f64.store offset=8
       local.get $0
       local.get $8
       local.get $5
       call $~lib/math/NativeMath.atan2
       f64.store offset=24
      else
       local.get $0
       f64.const 0
       f64.store offset=8
       local.get $0
       local.get $6
       f64.neg
       local.get $9
       call $~lib/math/NativeMath.atan2
       f64.store offset=24
      end
     else
      local.get $2
      global.get $src/as/math/Euler/EulerRotationOrder.YZX
      i32.eq
      if
       local.get $0
       local.get $8
       f64.const -1
       f64.const 1
       call $src/as/math/Math/clamp
       call $~lib/math/NativeMath.asin
       f64.store offset=24
       local.get $8
       local.set $14
       local.get $14
       f64.abs
       f64.const 0.99999
       f64.lt
       if
        local.get $0
        local.get $10
        f64.neg
        local.get $9
        call $~lib/math/NativeMath.atan2
        f64.store offset=8
        local.get $0
        local.get $11
        f64.neg
        local.get $5
        call $~lib/math/NativeMath.atan2
        f64.store offset=16
       else
        local.get $0
        f64.const 0
        f64.store offset=8
        local.get $0
        local.get $7
        local.get $13
        call $~lib/math/NativeMath.atan2
        f64.store offset=16
       end
      else
       local.get $2
       global.get $src/as/math/Euler/EulerRotationOrder.XZY
       i32.eq
       if
        local.get $0
        local.get $6
        f64.const -1
        f64.const 1
        call $src/as/math/Math/clamp
        f64.neg
        call $~lib/math/NativeMath.asin
        f64.store offset=24
        local.get $6
        local.set $14
        local.get $14
        f64.abs
        f64.const 0.99999
        f64.lt
        if
         local.get $0
         local.get $12
         local.get $9
         call $~lib/math/NativeMath.atan2
         f64.store offset=8
         local.get $0
         local.get $7
         local.get $5
         call $~lib/math/NativeMath.atan2
         f64.store offset=16
        else
         local.get $0
         local.get $10
         f64.neg
         local.get $13
         call $~lib/math/NativeMath.atan2
         f64.store offset=8
         local.get $0
         f64.const 0
         f64.store offset=16
        end
       else
        local.get $2
        local.set $15
        i32.const 1568
        i32.const 1696
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
  i32.store offset=32
  local.get $3
  if
   i32.const 0
   global.set $~argumentsLength
   local.get $0
   i32.load offset=36
   call_indirect (type $none_=>_none)
  end
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $15
  local.get $4
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $15
 )
 (func $src/as/math/Euler/eulerEquals (param $0 i32) (param $1 i32) (param $2 f64) (result i32)
  (local $3 f64)
  (local $4 f64)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  call $src/as/math/Euler/Euler#get:x
  local.get $1
  call $src/as/math/Euler/Euler#get:x
  f64.sub
  local.set $3
  local.get $3
  f64.abs
  local.get $0
  call $src/as/math/Euler/Euler#get:y
  local.get $1
  call $src/as/math/Euler/Euler#get:y
  f64.sub
  local.set $3
  local.get $3
  f64.abs
  f64.add
  local.get $0
  call $src/as/math/Euler/Euler#get:z
  local.get $1
  call $src/as/math/Euler/Euler#get:z
  f64.sub
  local.set $3
  local.get $3
  f64.abs
  f64.add
  local.set $4
  local.get $4
  local.get $2
  f64.lt
  local.set $5
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $5
 )
 (func $src/as/math/Vector3/Vector3#fromArray (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  local.get $1
  local.get $2
  call $~lib/array/Array<f64>#__get
  f64.store
  local.get $0
  local.get $1
  local.get $2
  i32.const 1
  i32.add
  call $~lib/array/Array<f64>#__get
  f64.store offset=8
  local.get $0
  local.get $1
  local.get $2
  i32.const 2
  i32.add
  call $~lib/array/Array<f64>#__get
  f64.store offset=16
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $src/as/math/Vector3/Vector3#setFromMatrixColumn (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  local.get $1
  i32.load
  local.get $2
  i32.const 4
  i32.mul
  call $src/as/math/Vector3/Vector3#fromArray
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $src/as/math/Vector3/Vector3#length (param $0 i32) (result f64)
  (local $1 f64)
  local.get $0
  f64.load
  local.get $0
  f64.load
  f64.mul
  local.get $0
  f64.load offset=8
  local.get $0
  f64.load offset=8
  f64.mul
  f64.add
  local.get $0
  f64.load offset=16
  local.get $0
  f64.load offset=16
  f64.mul
  f64.add
  local.set $1
  local.get $1
  f64.sqrt
 )
 (func $src/as/math/Matrix4/Matrix4#extractRotation (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f64)
  (local $7 i32)
  (local $8 f64)
  (local $9 i32)
  (local $10 f64)
  (local $11 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $src/as/math/Vector3/Vector3#constructor
  local.set $2
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  i32.load
  call $~lib/rt/pure/__retain
  local.set $4
  i32.const 1
  f64.convert_i32_s
  local.get $2
  local.get $1
  i32.const 0
  call $src/as/math/Vector3/Vector3#setFromMatrixColumn
  local.tee $5
  call $src/as/math/Vector3/Vector3#length
  f64.div
  local.set $6
  i32.const 1
  f64.convert_i32_s
  local.get $2
  local.get $1
  i32.const 1
  call $src/as/math/Vector3/Vector3#setFromMatrixColumn
  local.tee $7
  call $src/as/math/Vector3/Vector3#length
  f64.div
  local.set $8
  i32.const 1
  f64.convert_i32_s
  local.get $2
  local.get $1
  i32.const 2
  call $src/as/math/Vector3/Vector3#setFromMatrixColumn
  local.tee $9
  call $src/as/math/Vector3/Vector3#length
  f64.div
  local.set $10
  local.get $3
  i32.const 0
  local.get $4
  i32.const 0
  call $~lib/array/Array<f64>#__get
  local.get $6
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $3
  i32.const 1
  local.get $4
  i32.const 1
  call $~lib/array/Array<f64>#__get
  local.get $6
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $3
  i32.const 2
  local.get $4
  i32.const 2
  call $~lib/array/Array<f64>#__get
  local.get $6
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $3
  i32.const 3
  f64.const 0
  call $~lib/array/Array<f64>#__set
  local.get $3
  i32.const 4
  local.get $4
  i32.const 4
  call $~lib/array/Array<f64>#__get
  local.get $8
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $3
  i32.const 5
  local.get $4
  i32.const 5
  call $~lib/array/Array<f64>#__get
  local.get $8
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $3
  i32.const 6
  local.get $4
  i32.const 6
  call $~lib/array/Array<f64>#__get
  local.get $8
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $3
  i32.const 7
  f64.const 0
  call $~lib/array/Array<f64>#__set
  local.get $3
  i32.const 8
  local.get $4
  i32.const 8
  call $~lib/array/Array<f64>#__get
  local.get $10
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $3
  i32.const 9
  local.get $4
  i32.const 9
  call $~lib/array/Array<f64>#__get
  local.get $10
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $3
  i32.const 10
  local.get $4
  i32.const 10
  call $~lib/array/Array<f64>#__get
  local.get $10
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $3
  i32.const 11
  f64.const 0
  call $~lib/array/Array<f64>#__set
  local.get $3
  i32.const 12
  f64.const 0
  call $~lib/array/Array<f64>#__set
  local.get $3
  i32.const 13
  f64.const 0
  call $~lib/array/Array<f64>#__set
  local.get $3
  i32.const 14
  f64.const 0
  call $~lib/array/Array<f64>#__set
  local.get $3
  i32.const 15
  f64.const 1
  call $~lib/array/Array<f64>#__set
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $11
  local.get $5
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $11
 )
 (func $start:src/as/math/Matrix4.spec~anonymous|0~anonymous|0~anonymous|5
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
  i32.const 5
  i32.const 2
  i32.const 11
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  global.get $src/as/math/Euler/EulerRotationOrder.XYZ
  call $src/as/math/Euler/Euler#constructor
  i32.store
  local.get $1
  i32.const 0
  f64.const 1
  f64.const 0
  f64.const 0
  global.get $src/as/math/Euler/EulerRotationOrder.XYZ
  call $src/as/math/Euler/Euler#constructor
  i32.store offset=4
  local.get $1
  i32.const 0
  f64.const 0
  f64.const 1
  f64.const 0
  global.get $src/as/math/Euler/EulerRotationOrder.ZYX
  call $src/as/math/Euler/Euler#constructor
  i32.store offset=8
  local.get $1
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0.5
  global.get $src/as/math/Euler/EulerRotationOrder.YZX
  call $src/as/math/Euler/Euler#constructor
  i32.store offset=12
  local.get $1
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const -0.5
  global.get $src/as/math/Euler/EulerRotationOrder.YZX
  call $src/as/math/Euler/Euler#constructor
  i32.store offset=16
  local.get $0
  local.set $2
  i32.const 0
  local.set $3
  loop $for-loop|0
   local.get $3
   local.get $2
   call $~lib/array/Array<src/as/math/Euler/Euler>#get:length
   i32.lt_s
   local.set $1
   local.get $1
   if
    local.get $2
    local.get $3
    call $~lib/array/Array<src/as/math/Euler/Euler>#__get
    local.set $4
    i32.const 0
    call $src/as/math/Matrix4/Matrix4#constructor
    local.set $5
    local.get $5
    local.get $4
    call $src/as/math/Matrix4/Matrix4#makeRotationFromEuler
    call $~lib/rt/pure/__release
    i32.const 0
    f64.const 0
    f64.const 0
    f64.const 0
    global.get $src/as/math/Euler/Euler.DefaultOrder
    call $src/as/math/Euler/Euler#constructor
    local.set $6
    local.get $6
    local.get $5
    local.get $4
    call $src/as/math/Euler/Euler#get:order
    i32.const 1
    call $src/as/math/Euler/Euler#setFromRotationMatrix
    call $~lib/rt/pure/__release
    i32.const 0
    call $src/as/math/Matrix4/Matrix4#constructor
    local.set $7
    local.get $7
    local.get $6
    call $src/as/math/Matrix4/Matrix4#makeRotationFromEuler
    call $~lib/rt/pure/__release
    local.get $5
    local.get $7
    global.get $src/as/math/Constants.tests/eps
    call $src/as/math/Matrix4/matrixEquals4
    i32.eqz
    if
     i32.const 1760
     i32.const 592
     i32.const 183
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $4
    local.get $6
    global.get $src/as/math/Constants.tests/eps
    call $src/as/math/Euler/eulerEquals
    i32.eqz
    if
     i32.const 1760
     i32.const 592
     i32.const 188
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    i32.const 0
    call $src/as/math/Matrix4/Matrix4#constructor
    local.set $8
    local.get $8
    local.get $7
    call $src/as/math/Matrix4/Matrix4#extractRotation
    call $~lib/rt/pure/__release
    i32.const 0
    f64.const 0
    f64.const 0
    f64.const 0
    global.get $src/as/math/Euler/Euler.DefaultOrder
    call $src/as/math/Euler/Euler#constructor
    local.set $9
    local.get $9
    local.get $8
    local.get $4
    call $src/as/math/Euler/Euler#get:order
    i32.const 1
    call $src/as/math/Euler/Euler#setFromRotationMatrix
    call $~lib/rt/pure/__release
    local.get $5
    local.get $8
    global.get $src/as/math/Constants.tests/eps
    call $src/as/math/Matrix4/matrixEquals4
    i32.eqz
    if
     i32.const 1760
     i32.const 592
     i32.const 200
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $4
    local.get $9
    global.get $src/as/math/Constants.tests/eps
    call $src/as/math/Euler/eulerEquals
    i32.eqz
    if
     i32.const 1760
     i32.const 592
     i32.const 205
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
 )
 (func $src/as/math/Matrix4/Matrix4#multiplyMatrices (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f64)
  (local $7 f64)
  (local $8 f64)
  (local $9 f64)
  (local $10 f64)
  (local $11 f64)
  (local $12 f64)
  (local $13 f64)
  (local $14 f64)
  (local $15 f64)
  (local $16 f64)
  (local $17 f64)
  (local $18 f64)
  (local $19 f64)
  (local $20 f64)
  (local $21 f64)
  (local $22 f64)
  (local $23 f64)
  (local $24 f64)
  (local $25 f64)
  (local $26 f64)
  (local $27 f64)
  (local $28 f64)
  (local $29 f64)
  (local $30 f64)
  (local $31 f64)
  (local $32 f64)
  (local $33 f64)
  (local $34 f64)
  (local $35 f64)
  (local $36 f64)
  (local $37 f64)
  (local $38 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $2
  i32.load
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $3
  i32.const 0
  call $~lib/array/Array<f64>#__get
  local.set $6
  local.get $3
  i32.const 4
  call $~lib/array/Array<f64>#__get
  local.set $7
  local.get $3
  i32.const 8
  call $~lib/array/Array<f64>#__get
  local.set $8
  local.get $3
  i32.const 12
  call $~lib/array/Array<f64>#__get
  local.set $9
  local.get $3
  i32.const 1
  call $~lib/array/Array<f64>#__get
  local.set $10
  local.get $3
  i32.const 5
  call $~lib/array/Array<f64>#__get
  local.set $11
  local.get $3
  i32.const 9
  call $~lib/array/Array<f64>#__get
  local.set $12
  local.get $3
  i32.const 13
  call $~lib/array/Array<f64>#__get
  local.set $13
  local.get $3
  i32.const 2
  call $~lib/array/Array<f64>#__get
  local.set $14
  local.get $3
  i32.const 6
  call $~lib/array/Array<f64>#__get
  local.set $15
  local.get $3
  i32.const 10
  call $~lib/array/Array<f64>#__get
  local.set $16
  local.get $3
  i32.const 14
  call $~lib/array/Array<f64>#__get
  local.set $17
  local.get $3
  i32.const 3
  call $~lib/array/Array<f64>#__get
  local.set $18
  local.get $3
  i32.const 7
  call $~lib/array/Array<f64>#__get
  local.set $19
  local.get $3
  i32.const 11
  call $~lib/array/Array<f64>#__get
  local.set $20
  local.get $3
  i32.const 15
  call $~lib/array/Array<f64>#__get
  local.set $21
  local.get $4
  i32.const 0
  call $~lib/array/Array<f64>#__get
  local.set $22
  local.get $4
  i32.const 4
  call $~lib/array/Array<f64>#__get
  local.set $23
  local.get $4
  i32.const 8
  call $~lib/array/Array<f64>#__get
  local.set $24
  local.get $4
  i32.const 12
  call $~lib/array/Array<f64>#__get
  local.set $25
  local.get $4
  i32.const 1
  call $~lib/array/Array<f64>#__get
  local.set $26
  local.get $4
  i32.const 5
  call $~lib/array/Array<f64>#__get
  local.set $27
  local.get $4
  i32.const 9
  call $~lib/array/Array<f64>#__get
  local.set $28
  local.get $4
  i32.const 13
  call $~lib/array/Array<f64>#__get
  local.set $29
  local.get $4
  i32.const 2
  call $~lib/array/Array<f64>#__get
  local.set $30
  local.get $4
  i32.const 6
  call $~lib/array/Array<f64>#__get
  local.set $31
  local.get $4
  i32.const 10
  call $~lib/array/Array<f64>#__get
  local.set $32
  local.get $4
  i32.const 14
  call $~lib/array/Array<f64>#__get
  local.set $33
  local.get $4
  i32.const 3
  call $~lib/array/Array<f64>#__get
  local.set $34
  local.get $4
  i32.const 7
  call $~lib/array/Array<f64>#__get
  local.set $35
  local.get $4
  i32.const 11
  call $~lib/array/Array<f64>#__get
  local.set $36
  local.get $4
  i32.const 15
  call $~lib/array/Array<f64>#__get
  local.set $37
  local.get $5
  i32.const 0
  local.get $6
  local.get $22
  f64.mul
  local.get $7
  local.get $26
  f64.mul
  f64.add
  local.get $8
  local.get $30
  f64.mul
  f64.add
  local.get $9
  local.get $34
  f64.mul
  f64.add
  call $~lib/array/Array<f64>#__set
  local.get $5
  i32.const 4
  local.get $6
  local.get $23
  f64.mul
  local.get $7
  local.get $27
  f64.mul
  f64.add
  local.get $8
  local.get $31
  f64.mul
  f64.add
  local.get $9
  local.get $35
  f64.mul
  f64.add
  call $~lib/array/Array<f64>#__set
  local.get $5
  i32.const 8
  local.get $6
  local.get $24
  f64.mul
  local.get $7
  local.get $28
  f64.mul
  f64.add
  local.get $8
  local.get $32
  f64.mul
  f64.add
  local.get $9
  local.get $36
  f64.mul
  f64.add
  call $~lib/array/Array<f64>#__set
  local.get $5
  i32.const 12
  local.get $6
  local.get $25
  f64.mul
  local.get $7
  local.get $29
  f64.mul
  f64.add
  local.get $8
  local.get $33
  f64.mul
  f64.add
  local.get $9
  local.get $37
  f64.mul
  f64.add
  call $~lib/array/Array<f64>#__set
  local.get $5
  i32.const 1
  local.get $10
  local.get $22
  f64.mul
  local.get $11
  local.get $26
  f64.mul
  f64.add
  local.get $12
  local.get $30
  f64.mul
  f64.add
  local.get $13
  local.get $34
  f64.mul
  f64.add
  call $~lib/array/Array<f64>#__set
  local.get $5
  i32.const 5
  local.get $10
  local.get $23
  f64.mul
  local.get $11
  local.get $27
  f64.mul
  f64.add
  local.get $12
  local.get $31
  f64.mul
  f64.add
  local.get $13
  local.get $35
  f64.mul
  f64.add
  call $~lib/array/Array<f64>#__set
  local.get $5
  i32.const 9
  local.get $10
  local.get $24
  f64.mul
  local.get $11
  local.get $28
  f64.mul
  f64.add
  local.get $12
  local.get $32
  f64.mul
  f64.add
  local.get $13
  local.get $36
  f64.mul
  f64.add
  call $~lib/array/Array<f64>#__set
  local.get $5
  i32.const 13
  local.get $10
  local.get $25
  f64.mul
  local.get $11
  local.get $29
  f64.mul
  f64.add
  local.get $12
  local.get $33
  f64.mul
  f64.add
  local.get $13
  local.get $37
  f64.mul
  f64.add
  call $~lib/array/Array<f64>#__set
  local.get $5
  i32.const 2
  local.get $14
  local.get $22
  f64.mul
  local.get $15
  local.get $26
  f64.mul
  f64.add
  local.get $16
  local.get $30
  f64.mul
  f64.add
  local.get $17
  local.get $34
  f64.mul
  f64.add
  call $~lib/array/Array<f64>#__set
  local.get $5
  i32.const 6
  local.get $14
  local.get $23
  f64.mul
  local.get $15
  local.get $27
  f64.mul
  f64.add
  local.get $16
  local.get $31
  f64.mul
  f64.add
  local.get $17
  local.get $35
  f64.mul
  f64.add
  call $~lib/array/Array<f64>#__set
  local.get $5
  i32.const 10
  local.get $14
  local.get $24
  f64.mul
  local.get $15
  local.get $28
  f64.mul
  f64.add
  local.get $16
  local.get $32
  f64.mul
  f64.add
  local.get $17
  local.get $36
  f64.mul
  f64.add
  call $~lib/array/Array<f64>#__set
  local.get $5
  i32.const 14
  local.get $14
  local.get $25
  f64.mul
  local.get $15
  local.get $29
  f64.mul
  f64.add
  local.get $16
  local.get $33
  f64.mul
  f64.add
  local.get $17
  local.get $37
  f64.mul
  f64.add
  call $~lib/array/Array<f64>#__set
  local.get $5
  i32.const 3
  local.get $18
  local.get $22
  f64.mul
  local.get $19
  local.get $26
  f64.mul
  f64.add
  local.get $20
  local.get $30
  f64.mul
  f64.add
  local.get $21
  local.get $34
  f64.mul
  f64.add
  call $~lib/array/Array<f64>#__set
  local.get $5
  i32.const 7
  local.get $18
  local.get $23
  f64.mul
  local.get $19
  local.get $27
  f64.mul
  f64.add
  local.get $20
  local.get $31
  f64.mul
  f64.add
  local.get $21
  local.get $35
  f64.mul
  f64.add
  call $~lib/array/Array<f64>#__set
  local.get $5
  i32.const 11
  local.get $18
  local.get $24
  f64.mul
  local.get $19
  local.get $28
  f64.mul
  f64.add
  local.get $20
  local.get $32
  f64.mul
  f64.add
  local.get $21
  local.get $36
  f64.mul
  f64.add
  call $~lib/array/Array<f64>#__set
  local.get $5
  i32.const 15
  local.get $18
  local.get $25
  f64.mul
  local.get $19
  local.get $29
  f64.mul
  f64.add
  local.get $20
  local.get $33
  f64.mul
  f64.add
  local.get $21
  local.get $37
  f64.mul
  f64.add
  call $~lib/array/Array<f64>#__set
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $38
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $38
 )
 (func $start:src/as/math/Matrix4.spec~anonymous|0~anonymous|0~anonymous|6
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  local.set $0
  local.get $0
  f64.const 2
  f64.const 3
  f64.const 5
  f64.const 7
  f64.const 11
  f64.const 13
  f64.const 17
  f64.const 19
  f64.const 23
  f64.const 29
  f64.const 31
  f64.const 37
  f64.const 41
  f64.const 43
  f64.const 47
  f64.const 53
  call $src/as/math/Matrix4/Matrix4#set
  call $~lib/rt/pure/__release
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  local.set $1
  local.get $1
  f64.const 59
  f64.const 61
  f64.const 67
  f64.const 71
  f64.const 73
  f64.const 79
  f64.const 83
  f64.const 89
  f64.const 97
  f64.const 101
  f64.const 103
  f64.const 107
  f64.const 109
  f64.const 113
  f64.const 127
  f64.const 131
  call $src/as/math/Matrix4/Matrix4#set
  call $~lib/rt/pure/__release
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  local.set $2
  local.get $2
  local.get $0
  local.get $1
  call $src/as/math/Matrix4/Matrix4#multiplyMatrices
  call $~lib/rt/pure/__release
  local.get $2
  i32.load
  i32.const 0
  call $~lib/array/Array<f64>#__get
  f64.const 1585
  f64.eq
  i32.eqz
  if
   i32.const 1968
   i32.const 592
   i32.const 266
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.load
  i32.const 1
  call $~lib/array/Array<f64>#__get
  f64.const 5318
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 267
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.load
  i32.const 2
  call $~lib/array/Array<f64>#__get
  f64.const 10514
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 268
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.load
  i32.const 3
  call $~lib/array/Array<f64>#__get
  f64.const 15894
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 269
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.load
  i32.const 4
  call $~lib/array/Array<f64>#__get
  f64.const 1655
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 270
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.load
  i32.const 5
  call $~lib/array/Array<f64>#__get
  f64.const 5562
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 271
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.load
  i32.const 6
  call $~lib/array/Array<f64>#__get
  f64.const 11006
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 272
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.load
  i32.const 7
  call $~lib/array/Array<f64>#__get
  f64.const 16634
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 273
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.load
  i32.const 8
  call $~lib/array/Array<f64>#__get
  f64.const 1787
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 274
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.load
  i32.const 9
  call $~lib/array/Array<f64>#__get
  f64.const 5980
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 275
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.load
  i32.const 10
  call $~lib/array/Array<f64>#__get
  f64.const 11840
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 276
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.load
  i32.const 11
  call $~lib/array/Array<f64>#__get
  f64.const 17888
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 277
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.load
  i32.const 12
  call $~lib/array/Array<f64>#__get
  f64.const 1861
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 278
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.load
  i32.const 13
  call $~lib/array/Array<f64>#__get
  f64.const 6246
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 279
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.load
  i32.const 14
  call $~lib/array/Array<f64>#__get
  f64.const 12378
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 280
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.load
  i32.const 15
  call $~lib/array/Array<f64>#__get
  f64.const 18710
  f64.eq
  i32.eqz
  if
   i32.const 720
   i32.const 592
   i32.const 281
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $start:src/as/math/Matrix4.spec~anonymous|0~anonymous|0~anonymous|7
  (local $0 i32)
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  local.set $0
  local.get $0
  call $src/as/math/Matrix4/Matrix4#determinant
  f64.const 1
  f64.eq
  i32.eqz
  if
   i32.const 560
   i32.const 592
   i32.const 354
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  i32.const 0
  f64.const 2
  call $~lib/array/Array<f64>#__set
  local.get $0
  call $src/as/math/Matrix4/Matrix4#determinant
  f64.const 2
  f64.eq
  i32.eqz
  if
   i32.const 560
   i32.const 592
   i32.const 357
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  i32.const 0
  f64.const 0
  call $~lib/array/Array<f64>#__set
  local.get $0
  call $src/as/math/Matrix4/Matrix4#determinant
  f64.const 0
  f64.eq
  i32.eqz
  if
   i32.const 560
   i32.const 592
   i32.const 360
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  f64.const 2
  f64.const 3
  f64.const 4
  f64.const 5
  f64.const -1
  f64.const -21
  f64.const -3
  f64.const -4
  f64.const 6
  f64.const 7
  f64.const 8
  f64.const 10
  f64.const -8
  f64.const -9
  f64.const -10
  f64.const -12
  call $src/as/math/Matrix4/Matrix4#set
  call $~lib/rt/pure/__release
  local.get $0
  call $src/as/math/Matrix4/Matrix4#determinant
  f64.const 76
  f64.eq
  i32.eqz
  if
   i32.const 560
   i32.const 592
   i32.const 364
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $src/as/math/Matrix4/Matrix4#getInverse (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  (local $8 f64)
  (local $9 f64)
  (local $10 f64)
  (local $11 f64)
  (local $12 f64)
  (local $13 f64)
  (local $14 f64)
  (local $15 f64)
  (local $16 f64)
  (local $17 f64)
  (local $18 f64)
  (local $19 f64)
  (local $20 f64)
  (local $21 f64)
  (local $22 f64)
  (local $23 f64)
  (local $24 f64)
  (local $25 i32)
  (local $26 f64)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $3
  i32.const 0
  call $~lib/array/Array<f64>#__get
  local.set $4
  local.get $3
  i32.const 1
  call $~lib/array/Array<f64>#__get
  local.set $5
  local.get $3
  i32.const 2
  call $~lib/array/Array<f64>#__get
  local.set $6
  local.get $3
  i32.const 3
  call $~lib/array/Array<f64>#__get
  local.set $7
  local.get $3
  i32.const 4
  call $~lib/array/Array<f64>#__get
  local.set $8
  local.get $3
  i32.const 5
  call $~lib/array/Array<f64>#__get
  local.set $9
  local.get $3
  i32.const 6
  call $~lib/array/Array<f64>#__get
  local.set $10
  local.get $3
  i32.const 7
  call $~lib/array/Array<f64>#__get
  local.set $11
  local.get $3
  i32.const 8
  call $~lib/array/Array<f64>#__get
  local.set $12
  local.get $3
  i32.const 9
  call $~lib/array/Array<f64>#__get
  local.set $13
  local.get $3
  i32.const 10
  call $~lib/array/Array<f64>#__get
  local.set $14
  local.get $3
  i32.const 11
  call $~lib/array/Array<f64>#__get
  local.set $15
  local.get $3
  i32.const 12
  call $~lib/array/Array<f64>#__get
  local.set $16
  local.get $3
  i32.const 13
  call $~lib/array/Array<f64>#__get
  local.set $17
  local.get $3
  i32.const 14
  call $~lib/array/Array<f64>#__get
  local.set $18
  local.get $3
  i32.const 15
  call $~lib/array/Array<f64>#__get
  local.set $19
  local.get $13
  local.get $18
  f64.mul
  local.get $11
  f64.mul
  local.get $17
  local.get $14
  f64.mul
  local.get $11
  f64.mul
  f64.sub
  local.get $17
  local.get $10
  f64.mul
  local.get $15
  f64.mul
  f64.add
  local.get $9
  local.get $18
  f64.mul
  local.get $15
  f64.mul
  f64.sub
  local.get $13
  local.get $10
  f64.mul
  local.get $19
  f64.mul
  f64.sub
  local.get $9
  local.get $14
  f64.mul
  local.get $19
  f64.mul
  f64.add
  local.set $20
  local.get $16
  local.get $14
  f64.mul
  local.get $11
  f64.mul
  local.get $12
  local.get $18
  f64.mul
  local.get $11
  f64.mul
  f64.sub
  local.get $16
  local.get $10
  f64.mul
  local.get $15
  f64.mul
  f64.sub
  local.get $8
  local.get $18
  f64.mul
  local.get $15
  f64.mul
  f64.add
  local.get $12
  local.get $10
  f64.mul
  local.get $19
  f64.mul
  f64.add
  local.get $8
  local.get $14
  f64.mul
  local.get $19
  f64.mul
  f64.sub
  local.set $21
  local.get $12
  local.get $17
  f64.mul
  local.get $11
  f64.mul
  local.get $16
  local.get $13
  f64.mul
  local.get $11
  f64.mul
  f64.sub
  local.get $16
  local.get $9
  f64.mul
  local.get $15
  f64.mul
  f64.add
  local.get $8
  local.get $17
  f64.mul
  local.get $15
  f64.mul
  f64.sub
  local.get $12
  local.get $9
  f64.mul
  local.get $19
  f64.mul
  f64.sub
  local.get $8
  local.get $13
  f64.mul
  local.get $19
  f64.mul
  f64.add
  local.set $22
  local.get $16
  local.get $13
  f64.mul
  local.get $10
  f64.mul
  local.get $12
  local.get $17
  f64.mul
  local.get $10
  f64.mul
  f64.sub
  local.get $16
  local.get $9
  f64.mul
  local.get $14
  f64.mul
  f64.sub
  local.get $8
  local.get $17
  f64.mul
  local.get $14
  f64.mul
  f64.add
  local.get $12
  local.get $9
  f64.mul
  local.get $18
  f64.mul
  f64.add
  local.get $8
  local.get $13
  f64.mul
  local.get $18
  f64.mul
  f64.sub
  local.set $23
  local.get $4
  local.get $20
  f64.mul
  local.get $5
  local.get $21
  f64.mul
  f64.add
  local.get $6
  local.get $22
  f64.mul
  f64.add
  local.get $7
  local.get $23
  f64.mul
  f64.add
  local.set $24
  local.get $24
  f64.const 0
  f64.eq
  if
   local.get $0
   call $src/as/math/Matrix4/Matrix4#identity
   call $~lib/rt/pure/__release
   i32.const 0
   local.set $25
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $25
   return
  end
  i32.const 1
  f64.convert_i32_s
  local.get $24
  f64.div
  local.set $26
  local.get $2
  i32.const 0
  local.get $20
  local.get $26
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 1
  local.get $17
  local.get $14
  f64.mul
  local.get $7
  f64.mul
  local.get $13
  local.get $18
  f64.mul
  local.get $7
  f64.mul
  f64.sub
  local.get $17
  local.get $6
  f64.mul
  local.get $15
  f64.mul
  f64.sub
  local.get $5
  local.get $18
  f64.mul
  local.get $15
  f64.mul
  f64.add
  local.get $13
  local.get $6
  f64.mul
  local.get $19
  f64.mul
  f64.add
  local.get $5
  local.get $14
  f64.mul
  local.get $19
  f64.mul
  f64.sub
  local.get $26
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 2
  local.get $9
  local.get $18
  f64.mul
  local.get $7
  f64.mul
  local.get $17
  local.get $10
  f64.mul
  local.get $7
  f64.mul
  f64.sub
  local.get $17
  local.get $6
  f64.mul
  local.get $11
  f64.mul
  f64.add
  local.get $5
  local.get $18
  f64.mul
  local.get $11
  f64.mul
  f64.sub
  local.get $9
  local.get $6
  f64.mul
  local.get $19
  f64.mul
  f64.sub
  local.get $5
  local.get $10
  f64.mul
  local.get $19
  f64.mul
  f64.add
  local.get $26
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 3
  local.get $13
  local.get $10
  f64.mul
  local.get $7
  f64.mul
  local.get $9
  local.get $14
  f64.mul
  local.get $7
  f64.mul
  f64.sub
  local.get $13
  local.get $6
  f64.mul
  local.get $11
  f64.mul
  f64.sub
  local.get $5
  local.get $14
  f64.mul
  local.get $11
  f64.mul
  f64.add
  local.get $9
  local.get $6
  f64.mul
  local.get $15
  f64.mul
  f64.add
  local.get $5
  local.get $10
  f64.mul
  local.get $15
  f64.mul
  f64.sub
  local.get $26
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 4
  local.get $21
  local.get $26
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 5
  local.get $12
  local.get $18
  f64.mul
  local.get $7
  f64.mul
  local.get $16
  local.get $14
  f64.mul
  local.get $7
  f64.mul
  f64.sub
  local.get $16
  local.get $6
  f64.mul
  local.get $15
  f64.mul
  f64.add
  local.get $4
  local.get $18
  f64.mul
  local.get $15
  f64.mul
  f64.sub
  local.get $12
  local.get $6
  f64.mul
  local.get $19
  f64.mul
  f64.sub
  local.get $4
  local.get $14
  f64.mul
  local.get $19
  f64.mul
  f64.add
  local.get $26
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 6
  local.get $16
  local.get $10
  f64.mul
  local.get $7
  f64.mul
  local.get $8
  local.get $18
  f64.mul
  local.get $7
  f64.mul
  f64.sub
  local.get $16
  local.get $6
  f64.mul
  local.get $11
  f64.mul
  f64.sub
  local.get $4
  local.get $18
  f64.mul
  local.get $11
  f64.mul
  f64.add
  local.get $8
  local.get $6
  f64.mul
  local.get $19
  f64.mul
  f64.add
  local.get $4
  local.get $10
  f64.mul
  local.get $19
  f64.mul
  f64.sub
  local.get $26
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 7
  local.get $8
  local.get $14
  f64.mul
  local.get $7
  f64.mul
  local.get $12
  local.get $10
  f64.mul
  local.get $7
  f64.mul
  f64.sub
  local.get $12
  local.get $6
  f64.mul
  local.get $11
  f64.mul
  f64.add
  local.get $4
  local.get $14
  f64.mul
  local.get $11
  f64.mul
  f64.sub
  local.get $8
  local.get $6
  f64.mul
  local.get $15
  f64.mul
  f64.sub
  local.get $4
  local.get $10
  f64.mul
  local.get $15
  f64.mul
  f64.add
  local.get $26
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 8
  local.get $22
  local.get $26
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 9
  local.get $16
  local.get $13
  f64.mul
  local.get $7
  f64.mul
  local.get $12
  local.get $17
  f64.mul
  local.get $7
  f64.mul
  f64.sub
  local.get $16
  local.get $5
  f64.mul
  local.get $15
  f64.mul
  f64.sub
  local.get $4
  local.get $17
  f64.mul
  local.get $15
  f64.mul
  f64.add
  local.get $12
  local.get $5
  f64.mul
  local.get $19
  f64.mul
  f64.add
  local.get $4
  local.get $13
  f64.mul
  local.get $19
  f64.mul
  f64.sub
  local.get $26
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 10
  local.get $8
  local.get $17
  f64.mul
  local.get $7
  f64.mul
  local.get $16
  local.get $9
  f64.mul
  local.get $7
  f64.mul
  f64.sub
  local.get $16
  local.get $5
  f64.mul
  local.get $11
  f64.mul
  f64.add
  local.get $4
  local.get $17
  f64.mul
  local.get $11
  f64.mul
  f64.sub
  local.get $8
  local.get $5
  f64.mul
  local.get $19
  f64.mul
  f64.sub
  local.get $4
  local.get $9
  f64.mul
  local.get $19
  f64.mul
  f64.add
  local.get $26
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 11
  local.get $12
  local.get $9
  f64.mul
  local.get $7
  f64.mul
  local.get $8
  local.get $13
  f64.mul
  local.get $7
  f64.mul
  f64.sub
  local.get $12
  local.get $5
  f64.mul
  local.get $11
  f64.mul
  f64.sub
  local.get $4
  local.get $13
  f64.mul
  local.get $11
  f64.mul
  f64.add
  local.get $8
  local.get $5
  f64.mul
  local.get $15
  f64.mul
  f64.add
  local.get $4
  local.get $9
  f64.mul
  local.get $15
  f64.mul
  f64.sub
  local.get $26
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 12
  local.get $23
  local.get $26
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 13
  local.get $12
  local.get $17
  f64.mul
  local.get $6
  f64.mul
  local.get $16
  local.get $13
  f64.mul
  local.get $6
  f64.mul
  f64.sub
  local.get $16
  local.get $5
  f64.mul
  local.get $14
  f64.mul
  f64.add
  local.get $4
  local.get $17
  f64.mul
  local.get $14
  f64.mul
  f64.sub
  local.get $12
  local.get $5
  f64.mul
  local.get $18
  f64.mul
  f64.sub
  local.get $4
  local.get $13
  f64.mul
  local.get $18
  f64.mul
  f64.add
  local.get $26
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 14
  local.get $16
  local.get $9
  f64.mul
  local.get $6
  f64.mul
  local.get $8
  local.get $17
  f64.mul
  local.get $6
  f64.mul
  f64.sub
  local.get $16
  local.get $5
  f64.mul
  local.get $10
  f64.mul
  f64.sub
  local.get $4
  local.get $17
  f64.mul
  local.get $10
  f64.mul
  f64.add
  local.get $8
  local.get $5
  f64.mul
  local.get $18
  f64.mul
  f64.add
  local.get $4
  local.get $9
  f64.mul
  local.get $18
  f64.mul
  f64.sub
  local.get $26
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 15
  local.get $8
  local.get $13
  f64.mul
  local.get $6
  f64.mul
  local.get $12
  local.get $9
  f64.mul
  local.get $6
  f64.mul
  f64.sub
  local.get $12
  local.get $5
  f64.mul
  local.get $10
  f64.mul
  f64.add
  local.get $4
  local.get $13
  f64.mul
  local.get $10
  f64.mul
  f64.sub
  local.get $8
  local.get $5
  f64.mul
  local.get $14
  f64.mul
  f64.sub
  local.get $4
  local.get $9
  f64.mul
  local.get $14
  f64.mul
  f64.add
  local.get $26
  f64.mul
  call $~lib/array/Array<f64>#__set
  i32.const 1
  local.set $25
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $25
 )
 (func $~lib/array/Array<src/as/math/Matrix4/Matrix4>#__uget (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<src/as/math/Matrix4/Matrix4>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 448
   i32.const 512
   i32.const 104
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<src/as/math/Matrix4/Matrix4>#__uget
  local.set $2
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $2
  i32.eqz
  if
   i32.const 1264
   i32.const 512
   i32.const 108
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
 )
 (func $src/as/math/Matrix4/Matrix4#makeRotationX (param $0 i32) (param $1 f64) (result i32)
  (local $2 f64)
  (local $3 f64)
  local.get $1
  call $~lib/math/NativeMath.cos
  local.set $2
  local.get $1
  call $~lib/math/NativeMath.sin
  local.set $3
  local.get $0
  f64.const 1
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  local.get $2
  local.get $3
  f64.neg
  f64.const 0
  f64.const 0
  local.get $3
  local.get $2
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 1
  call $src/as/math/Matrix4/Matrix4#set
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $src/as/math/Matrix4/Matrix4#makeRotationY (param $0 i32) (param $1 f64) (result i32)
  (local $2 f64)
  (local $3 f64)
  local.get $1
  call $~lib/math/NativeMath.cos
  local.set $2
  local.get $1
  call $~lib/math/NativeMath.sin
  local.set $3
  local.get $0
  local.get $2
  f64.const 0
  local.get $3
  f64.const 0
  f64.const 0
  f64.const 1
  f64.const 0
  f64.const 0
  local.get $3
  f64.neg
  f64.const 0
  local.get $2
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 1
  call $src/as/math/Matrix4/Matrix4#set
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $src/as/math/Matrix4/Matrix4#makeRotationZ (param $0 i32) (param $1 f64) (result i32)
  (local $2 f64)
  (local $3 f64)
  local.get $1
  call $~lib/math/NativeMath.cos
  local.set $2
  local.get $1
  call $~lib/math/NativeMath.sin
  local.set $3
  local.get $0
  local.get $2
  local.get $3
  f64.neg
  f64.const 0
  f64.const 0
  local.get $3
  local.get $2
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 1
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 1
  call $src/as/math/Matrix4/Matrix4#set
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $src/as/math/Matrix4/Matrix4#makeScale (param $0 i32) (param $1 f64) (param $2 f64) (param $3 f64) (result i32)
  local.get $0
  local.get $1
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  local.get $2
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  local.get $3
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 1
  call $src/as/math/Matrix4/Matrix4#set
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $src/as/math/Matrix4/Matrix4#makePerspective (param $0 i32) (param $1 f64) (param $2 f64) (param $3 f64) (param $4 f64) (param $5 f64) (param $6 f64) (result i32)
  (local $7 i32)
  (local $8 f64)
  (local $9 f64)
  (local $10 f64)
  (local $11 f64)
  (local $12 f64)
  (local $13 f64)
  (local $14 i32)
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
  local.set $7
  i32.const 2
  f64.convert_i32_s
  local.get $5
  f64.mul
  local.get $2
  local.get $1
  f64.sub
  f64.div
  local.set $8
  i32.const 2
  f64.convert_i32_s
  local.get $5
  f64.mul
  local.get $4
  local.get $3
  f64.sub
  f64.div
  local.set $9
  local.get $2
  local.get $1
  f64.add
  local.get $2
  local.get $1
  f64.sub
  f64.div
  local.set $10
  local.get $4
  local.get $3
  f64.add
  local.get $4
  local.get $3
  f64.sub
  f64.div
  local.set $11
  local.get $6
  local.get $5
  f64.add
  f64.neg
  local.get $6
  local.get $5
  f64.sub
  f64.div
  local.set $12
  i32.const -2
  f64.convert_i32_s
  local.get $6
  f64.mul
  local.get $5
  f64.mul
  local.get $6
  local.get $5
  f64.sub
  f64.div
  local.set $13
  local.get $7
  i32.const 0
  local.get $8
  call $~lib/array/Array<f64>#__set
  local.get $7
  i32.const 4
  f64.const 0
  call $~lib/array/Array<f64>#__set
  local.get $7
  i32.const 8
  local.get $10
  call $~lib/array/Array<f64>#__set
  local.get $7
  i32.const 12
  f64.const 0
  call $~lib/array/Array<f64>#__set
  local.get $7
  i32.const 1
  f64.const 0
  call $~lib/array/Array<f64>#__set
  local.get $7
  i32.const 5
  local.get $9
  call $~lib/array/Array<f64>#__set
  local.get $7
  i32.const 9
  local.get $11
  call $~lib/array/Array<f64>#__set
  local.get $7
  i32.const 13
  f64.const 0
  call $~lib/array/Array<f64>#__set
  local.get $7
  i32.const 2
  f64.const 0
  call $~lib/array/Array<f64>#__set
  local.get $7
  i32.const 6
  f64.const 0
  call $~lib/array/Array<f64>#__set
  local.get $7
  i32.const 10
  local.get $12
  call $~lib/array/Array<f64>#__set
  local.get $7
  i32.const 14
  local.get $13
  call $~lib/array/Array<f64>#__set
  local.get $7
  i32.const 3
  f64.const 0
  call $~lib/array/Array<f64>#__set
  local.get $7
  i32.const 7
  f64.const 0
  call $~lib/array/Array<f64>#__set
  local.get $7
  i32.const 11
  f64.const -1
  call $~lib/array/Array<f64>#__set
  local.get $7
  i32.const 15
  f64.const 0
  call $~lib/array/Array<f64>#__set
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $14
  local.get $7
  call $~lib/rt/pure/__release
  local.get $14
 )
 (func $src/as/math/Matrix4/Matrix4#makeTranslation (param $0 i32) (param $1 f64) (param $2 f64) (param $3 f64) (result i32)
  local.get $0
  f64.const 1
  f64.const 0
  f64.const 0
  local.get $1
  f64.const 0
  f64.const 1
  f64.const 0
  local.get $2
  f64.const 0
  f64.const 0
  f64.const 1
  local.get $3
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 1
  call $src/as/math/Matrix4/Matrix4#set
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<src/as/math/Matrix4/Matrix4>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $start:src/as/math/Matrix4.spec~anonymous|0~anonymous|0~anonymous|8
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
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 f64)
  (local $24 i32)
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  local.set $0
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  local.set $1
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  local.set $2
  local.get $2
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $src/as/math/Matrix4/Matrix4#set
  call $~lib/rt/pure/__release
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  local.set $3
  local.get $3
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $src/as/math/Matrix4/Matrix4#set
  call $~lib/rt/pure/__release
  local.get $1
  local.get $2
  f64.const 0.0001
  call $src/as/math/Matrix4/matrixEquals4
  i32.eqz
  i32.eqz
  if
   i32.const 560
   i32.const 592
   i32.const 390
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $1
  call $src/as/math/Matrix4/Matrix4#getInverse
  drop
  local.get $2
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  local.tee $4
  f64.const 0.0001
  call $src/as/math/Matrix4/matrixEquals4
  i32.eqz
  if
   i32.const 560
   i32.const 592
   i32.const 392
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $3
  call $src/as/math/Matrix4/Matrix4#getInverse
  i32.eqz
  i32.eqz
  if
   i32.const 2176
   i32.const 592
   i32.const 394
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 11
  i32.const 2
  i32.const 12
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $5
  i32.load offset=4
  local.set $6
  local.get $6
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  i32.store
  local.get $6
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  i32.store offset=4
  local.get $6
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  i32.store offset=8
  local.get $6
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  i32.store offset=12
  local.get $6
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  i32.store offset=16
  local.get $6
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  i32.store offset=20
  local.get $6
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  i32.store offset=24
  local.get $6
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  i32.store offset=28
  local.get $6
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  i32.store offset=32
  local.get $6
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  i32.store offset=36
  local.get $6
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  i32.store offset=40
  local.get $5
  local.set $7
  local.get $7
  i32.const 0
  call $~lib/array/Array<src/as/math/Matrix4/Matrix4>#__get
  local.tee $6
  f64.const 0.3
  call $src/as/math/Matrix4/Matrix4#makeRotationX
  call $~lib/rt/pure/__release
  local.get $7
  i32.const 1
  call $~lib/array/Array<src/as/math/Matrix4/Matrix4>#__get
  local.tee $5
  f64.const -0.3
  call $src/as/math/Matrix4/Matrix4#makeRotationX
  call $~lib/rt/pure/__release
  local.get $7
  i32.const 2
  call $~lib/array/Array<src/as/math/Matrix4/Matrix4>#__get
  local.tee $8
  f64.const 0.3
  call $src/as/math/Matrix4/Matrix4#makeRotationY
  call $~lib/rt/pure/__release
  local.get $7
  i32.const 3
  call $~lib/array/Array<src/as/math/Matrix4/Matrix4>#__get
  local.tee $9
  f64.const -0.3
  call $src/as/math/Matrix4/Matrix4#makeRotationY
  call $~lib/rt/pure/__release
  local.get $7
  i32.const 4
  call $~lib/array/Array<src/as/math/Matrix4/Matrix4>#__get
  local.tee $10
  f64.const 0.3
  call $src/as/math/Matrix4/Matrix4#makeRotationZ
  call $~lib/rt/pure/__release
  local.get $7
  i32.const 5
  call $~lib/array/Array<src/as/math/Matrix4/Matrix4>#__get
  local.tee $11
  f64.const -0.3
  call $src/as/math/Matrix4/Matrix4#makeRotationZ
  call $~lib/rt/pure/__release
  local.get $7
  i32.const 6
  call $~lib/array/Array<src/as/math/Matrix4/Matrix4>#__get
  local.tee $12
  f64.const 1
  f64.const 2
  f64.const 3
  call $src/as/math/Matrix4/Matrix4#makeScale
  call $~lib/rt/pure/__release
  local.get $7
  i32.const 7
  call $~lib/array/Array<src/as/math/Matrix4/Matrix4>#__get
  local.tee $13
  f64.const 1
  f64.const 8
  f64.div
  f64.const 1
  f64.const 2
  f64.div
  f64.const 1
  f64.const 3
  f64.div
  call $src/as/math/Matrix4/Matrix4#makeScale
  call $~lib/rt/pure/__release
  local.get $7
  i32.const 8
  call $~lib/array/Array<src/as/math/Matrix4/Matrix4>#__get
  local.tee $14
  f64.const -1
  f64.const 1
  f64.const 1
  f64.const -1
  f64.const 1
  f64.const 1e3
  call $src/as/math/Matrix4/Matrix4#makePerspective
  call $~lib/rt/pure/__release
  local.get $7
  i32.const 9
  call $~lib/array/Array<src/as/math/Matrix4/Matrix4>#__get
  local.tee $15
  f64.const -16
  f64.const 16
  f64.const 9
  f64.const -9
  f64.const 0.1
  f64.const 1e4
  call $src/as/math/Matrix4/Matrix4#makePerspective
  call $~lib/rt/pure/__release
  local.get $7
  i32.const 10
  call $~lib/array/Array<src/as/math/Matrix4/Matrix4>#__get
  local.tee $16
  f64.const 1
  f64.const 2
  f64.const 3
  call $src/as/math/Matrix4/Matrix4#makeTranslation
  call $~lib/rt/pure/__release
  i32.const 0
  local.set $17
  local.get $7
  call $~lib/array/Array<src/as/math/Matrix4/Matrix4>#get:length
  local.set $18
  loop $for-loop|0
   local.get $17
   local.get $18
   i32.lt_s
   local.set $19
   local.get $19
   if
    local.get $7
    local.get $17
    call $~lib/array/Array<src/as/math/Matrix4/Matrix4>#__get
    local.set $20
    i32.const 0
    call $src/as/math/Matrix4/Matrix4#constructor
    local.set $21
    local.get $21
    local.get $20
    call $src/as/math/Matrix4/Matrix4#getInverse
    i32.eqz
    if
     i32.const 2272
     i32.const 592
     i32.const 426
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $20
    call $src/as/math/Matrix4/Matrix4#clone
    local.set $22
    local.get $22
    local.get $22
    call $src/as/math/Matrix4/Matrix4#getInverse
    drop
    local.get $22
    local.get $21
    f64.const 0.0001
    call $src/as/math/Matrix4/matrixEquals4
    i32.eqz
    if
     i32.const 560
     i32.const 592
     i32.const 431
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $20
    call $src/as/math/Matrix4/Matrix4#determinant
    local.get $21
    call $src/as/math/Matrix4/Matrix4#determinant
    f64.mul
    f64.const 1
    f64.sub
    local.set $23
    local.get $23
    f64.abs
    f64.const 0.0001
    f64.lt
    i32.eqz
    if
     i32.const 560
     i32.const 592
     i32.const 434
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    i32.const 0
    call $src/as/math/Matrix4/Matrix4#constructor
    local.set $24
    local.get $24
    local.get $20
    local.get $21
    call $src/as/math/Matrix4/Matrix4#multiplyMatrices
    call $~lib/rt/pure/__release
    local.get $24
    call $src/as/math/Matrix4/Matrix4#determinant
    f64.const 1
    f64.sub
    local.set $23
    local.get $23
    f64.abs
    f64.const 0.0001
    f64.lt
    i32.eqz
    if
     i32.const 560
     i32.const 592
     i32.const 440
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $24
    local.get $0
    f64.const 0.0001
    call $src/as/math/Matrix4/matrixEquals4
    i32.eqz
    if
     i32.const 560
     i32.const 592
     i32.const 441
     i32.const 5
     call $~lib/builtins/abort
     unreachable
    end
    local.get $17
    i32.const 1
    i32.add
    local.set $17
    br $for-loop|0
   end
  end
  local.get $4
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $10
  call $~lib/rt/pure/__release
  local.get $11
  call $~lib/rt/pure/__release
  local.get $12
  call $~lib/rt/pure/__release
  local.get $13
  call $~lib/rt/pure/__release
  local.get $14
  call $~lib/rt/pure/__release
  local.get $15
  call $~lib/rt/pure/__release
  local.get $16
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $20
  call $~lib/rt/pure/__release
  local.get $21
  call $~lib/rt/pure/__release
  local.get $22
  call $~lib/rt/pure/__release
  local.get $24
  call $~lib/rt/pure/__release
 )
 (func $src/as/math/Matrix4/Matrix4#getMaxScaleOnAxis (param $0 i32) (result f64)
  (local $1 i32)
  (local $2 f64)
  (local $3 f64)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  call $~lib/array/Array<f64>#__get
  local.get $1
  i32.const 0
  call $~lib/array/Array<f64>#__get
  f64.mul
  local.get $1
  i32.const 1
  call $~lib/array/Array<f64>#__get
  local.get $1
  i32.const 1
  call $~lib/array/Array<f64>#__get
  f64.mul
  f64.add
  local.get $1
  i32.const 2
  call $~lib/array/Array<f64>#__get
  local.get $1
  i32.const 2
  call $~lib/array/Array<f64>#__get
  f64.mul
  f64.add
  local.set $2
  local.get $1
  i32.const 4
  call $~lib/array/Array<f64>#__get
  local.get $1
  i32.const 4
  call $~lib/array/Array<f64>#__get
  f64.mul
  local.get $1
  i32.const 5
  call $~lib/array/Array<f64>#__get
  local.get $1
  i32.const 5
  call $~lib/array/Array<f64>#__get
  f64.mul
  f64.add
  local.get $1
  i32.const 6
  call $~lib/array/Array<f64>#__get
  local.get $1
  i32.const 6
  call $~lib/array/Array<f64>#__get
  f64.mul
  f64.add
  local.set $3
  local.get $1
  i32.const 8
  call $~lib/array/Array<f64>#__get
  local.get $1
  i32.const 8
  call $~lib/array/Array<f64>#__get
  f64.mul
  local.get $1
  i32.const 9
  call $~lib/array/Array<f64>#__get
  local.get $1
  i32.const 9
  call $~lib/array/Array<f64>#__get
  f64.mul
  f64.add
  local.get $1
  i32.const 10
  call $~lib/array/Array<f64>#__get
  local.get $1
  i32.const 10
  call $~lib/array/Array<f64>#__get
  f64.mul
  f64.add
  local.set $4
  local.get $2
  local.set $6
  local.get $3
  local.set $5
  local.get $6
  local.get $5
  f64.max
  local.set $6
  local.get $6
  local.set $7
  local.get $4
  local.set $5
  local.get $7
  local.get $5
  f64.max
  local.set $6
  local.get $6
  local.set $5
  local.get $5
  f64.sqrt
  local.set $5
  local.get $1
  call $~lib/rt/pure/__release
  local.get $5
 )
 (func $start:src/as/math/Matrix4.spec~anonymous|0~anonymous|0~anonymous|9
  (local $0 i32)
  (local $1 f64)
  (local $2 f64)
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  local.set $0
  local.get $0
  f64.const 1
  f64.const 2
  f64.const 3
  f64.const 4
  f64.const 5
  f64.const 6
  f64.const 7
  f64.const 8
  f64.const 9
  f64.const 10
  f64.const 11
  f64.const 12
  f64.const 13
  f64.const 14
  f64.const 15
  f64.const 16
  call $src/as/math/Matrix4/Matrix4#set
  call $~lib/rt/pure/__release
  f64.const 3
  f64.const 3
  f64.mul
  f64.const 7
  f64.const 7
  f64.mul
  f64.add
  f64.const 11
  f64.const 11
  f64.mul
  f64.add
  local.set $1
  local.get $1
  f64.sqrt
  local.set $2
  local.get $0
  call $src/as/math/Matrix4/Matrix4#getMaxScaleOnAxis
  local.get $2
  f64.sub
  local.set $1
  local.get $1
  f64.abs
  global.get $src/as/math/Constants.tests/eps
  f64.le
  i32.eqz
  if
   i32.const 2416
   i32.const 592
   i32.const 452
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/array/Array<src/as/math/Quaternion/Quaternion>#__uget (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<src/as/math/Quaternion/Quaternion>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 448
   i32.const 512
   i32.const 104
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<src/as/math/Quaternion/Quaternion>#__uget
  local.set $2
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $2
  i32.eqz
  if
   i32.const 1264
   i32.const 512
   i32.const 108
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
 )
 (func $src/as/math/Quaternion/Quaternion#setFromEuler (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 f64)
  (local $4 f64)
  (local $5 f64)
  (local $6 i32)
  (local $7 f64)
  (local $8 f64)
  (local $9 f64)
  (local $10 f64)
  (local $11 f64)
  (local $12 f64)
  (local $13 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  f64.load offset=8
  local.set $3
  local.get $1
  f64.load offset=16
  local.set $4
  local.get $1
  f64.load offset=24
  local.set $5
  local.get $1
  call $src/as/math/Euler/Euler#get:order
  local.set $6
  local.get $3
  f64.const 2
  f64.div
  call $~lib/math/NativeMath.cos
  local.set $7
  local.get $4
  f64.const 2
  f64.div
  call $~lib/math/NativeMath.cos
  local.set $8
  local.get $5
  f64.const 2
  f64.div
  call $~lib/math/NativeMath.cos
  local.set $9
  local.get $3
  f64.const 2
  f64.div
  call $~lib/math/NativeMath.sin
  local.set $10
  local.get $4
  f64.const 2
  f64.div
  call $~lib/math/NativeMath.sin
  local.set $11
  local.get $5
  f64.const 2
  f64.div
  call $~lib/math/NativeMath.sin
  local.set $12
  local.get $6
  global.get $src/as/math/Euler/EulerRotationOrder.XYZ
  i32.eq
  if
   local.get $0
   local.get $10
   local.get $8
   f64.mul
   local.get $9
   f64.mul
   local.get $7
   local.get $11
   f64.mul
   local.get $12
   f64.mul
   f64.add
   f64.store
   local.get $0
   local.get $7
   local.get $11
   f64.mul
   local.get $9
   f64.mul
   local.get $10
   local.get $8
   f64.mul
   local.get $12
   f64.mul
   f64.sub
   f64.store offset=8
   local.get $0
   local.get $7
   local.get $8
   f64.mul
   local.get $12
   f64.mul
   local.get $10
   local.get $11
   f64.mul
   local.get $9
   f64.mul
   f64.add
   f64.store offset=16
   local.get $0
   local.get $7
   local.get $8
   f64.mul
   local.get $9
   f64.mul
   local.get $10
   local.get $11
   f64.mul
   local.get $12
   f64.mul
   f64.sub
   f64.store offset=24
  else
   local.get $6
   global.get $src/as/math/Euler/EulerRotationOrder.YXZ
   i32.eq
   if
    local.get $0
    local.get $10
    local.get $8
    f64.mul
    local.get $9
    f64.mul
    local.get $7
    local.get $11
    f64.mul
    local.get $12
    f64.mul
    f64.add
    f64.store
    local.get $0
    local.get $7
    local.get $11
    f64.mul
    local.get $9
    f64.mul
    local.get $10
    local.get $8
    f64.mul
    local.get $12
    f64.mul
    f64.sub
    f64.store offset=8
    local.get $0
    local.get $7
    local.get $8
    f64.mul
    local.get $12
    f64.mul
    local.get $10
    local.get $11
    f64.mul
    local.get $9
    f64.mul
    f64.sub
    f64.store offset=16
    local.get $0
    local.get $7
    local.get $8
    f64.mul
    local.get $9
    f64.mul
    local.get $10
    local.get $11
    f64.mul
    local.get $12
    f64.mul
    f64.add
    f64.store offset=24
   else
    local.get $6
    global.get $src/as/math/Euler/EulerRotationOrder.ZXY
    i32.eq
    if
     local.get $0
     local.get $10
     local.get $8
     f64.mul
     local.get $9
     f64.mul
     local.get $7
     local.get $11
     f64.mul
     local.get $12
     f64.mul
     f64.sub
     f64.store
     local.get $0
     local.get $7
     local.get $11
     f64.mul
     local.get $9
     f64.mul
     local.get $10
     local.get $8
     f64.mul
     local.get $12
     f64.mul
     f64.add
     f64.store offset=8
     local.get $0
     local.get $7
     local.get $8
     f64.mul
     local.get $12
     f64.mul
     local.get $10
     local.get $11
     f64.mul
     local.get $9
     f64.mul
     f64.add
     f64.store offset=16
     local.get $0
     local.get $7
     local.get $8
     f64.mul
     local.get $9
     f64.mul
     local.get $10
     local.get $11
     f64.mul
     local.get $12
     f64.mul
     f64.sub
     f64.store offset=24
    else
     local.get $6
     global.get $src/as/math/Euler/EulerRotationOrder.ZYX
     i32.eq
     if
      local.get $0
      local.get $10
      local.get $8
      f64.mul
      local.get $9
      f64.mul
      local.get $7
      local.get $11
      f64.mul
      local.get $12
      f64.mul
      f64.sub
      f64.store
      local.get $0
      local.get $7
      local.get $11
      f64.mul
      local.get $9
      f64.mul
      local.get $10
      local.get $8
      f64.mul
      local.get $12
      f64.mul
      f64.add
      f64.store offset=8
      local.get $0
      local.get $7
      local.get $8
      f64.mul
      local.get $12
      f64.mul
      local.get $10
      local.get $11
      f64.mul
      local.get $9
      f64.mul
      f64.sub
      f64.store offset=16
      local.get $0
      local.get $7
      local.get $8
      f64.mul
      local.get $9
      f64.mul
      local.get $10
      local.get $11
      f64.mul
      local.get $12
      f64.mul
      f64.add
      f64.store offset=24
     else
      local.get $6
      global.get $src/as/math/Euler/EulerRotationOrder.YZX
      i32.eq
      if
       local.get $0
       local.get $10
       local.get $8
       f64.mul
       local.get $9
       f64.mul
       local.get $7
       local.get $11
       f64.mul
       local.get $12
       f64.mul
       f64.add
       f64.store
       local.get $0
       local.get $7
       local.get $11
       f64.mul
       local.get $9
       f64.mul
       local.get $10
       local.get $8
       f64.mul
       local.get $12
       f64.mul
       f64.add
       f64.store offset=8
       local.get $0
       local.get $7
       local.get $8
       f64.mul
       local.get $12
       f64.mul
       local.get $10
       local.get $11
       f64.mul
       local.get $9
       f64.mul
       f64.sub
       f64.store offset=16
       local.get $0
       local.get $7
       local.get $8
       f64.mul
       local.get $9
       f64.mul
       local.get $10
       local.get $11
       f64.mul
       local.get $12
       f64.mul
       f64.sub
       f64.store offset=24
      else
       local.get $6
       global.get $src/as/math/Euler/EulerRotationOrder.XZY
       i32.eq
       if
        local.get $0
        local.get $10
        local.get $8
        f64.mul
        local.get $9
        f64.mul
        local.get $7
        local.get $11
        f64.mul
        local.get $12
        f64.mul
        f64.sub
        f64.store
        local.get $0
        local.get $7
        local.get $11
        f64.mul
        local.get $9
        f64.mul
        local.get $10
        local.get $8
        f64.mul
        local.get $12
        f64.mul
        f64.sub
        f64.store offset=8
        local.get $0
        local.get $7
        local.get $8
        f64.mul
        local.get $12
        f64.mul
        local.get $10
        local.get $11
        f64.mul
        local.get $9
        f64.mul
        f64.add
        f64.store offset=16
        local.get $0
        local.get $7
        local.get $8
        f64.mul
        local.get $9
        f64.mul
        local.get $10
        local.get $11
        f64.mul
        local.get $12
        f64.mul
        f64.add
        f64.store offset=24
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
   i32.load offset=36
   call_indirect (type $none_=>_none)
  end
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $13
  local.get $1
  call $~lib/rt/pure/__release
  local.get $13
 )
 (func $~lib/array/Array<src/as/math/Vector3/Vector3>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<src/as/math/Quaternion/Quaternion>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<src/as/math/Vector3/Vector3>#__uget (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<src/as/math/Vector3/Vector3>#__get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 448
   i32.const 512
   i32.const 104
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<src/as/math/Vector3/Vector3>#__uget
  local.set $2
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $2
  i32.eqz
  if
   i32.const 1264
   i32.const 512
   i32.const 108
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
 )
 (func $src/as/math/Matrix4/Matrix4#compose (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  (local $8 f64)
  (local $9 f64)
  (local $10 f64)
  (local $11 f64)
  (local $12 f64)
  (local $13 f64)
  (local $14 f64)
  (local $15 f64)
  (local $16 f64)
  (local $17 f64)
  (local $18 f64)
  (local $19 f64)
  (local $20 f64)
  (local $21 f64)
  (local $22 f64)
  (local $23 f64)
  (local $24 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $2
  f64.load
  local.set $5
  local.get $2
  f64.load offset=8
  local.set $6
  local.get $2
  f64.load offset=16
  local.set $7
  local.get $2
  f64.load offset=24
  local.set $8
  local.get $5
  local.get $5
  f64.add
  local.set $9
  local.get $6
  local.get $6
  f64.add
  local.set $10
  local.get $7
  local.get $7
  f64.add
  local.set $11
  local.get $5
  local.get $9
  f64.mul
  local.set $12
  local.get $5
  local.get $10
  f64.mul
  local.set $13
  local.get $5
  local.get $11
  f64.mul
  local.set $14
  local.get $6
  local.get $10
  f64.mul
  local.set $15
  local.get $6
  local.get $11
  f64.mul
  local.set $16
  local.get $7
  local.get $11
  f64.mul
  local.set $17
  local.get $8
  local.get $9
  f64.mul
  local.set $18
  local.get $8
  local.get $10
  f64.mul
  local.set $19
  local.get $8
  local.get $11
  f64.mul
  local.set $20
  local.get $3
  f64.load
  local.set $21
  local.get $3
  f64.load offset=8
  local.set $22
  local.get $3
  f64.load offset=16
  local.set $23
  local.get $4
  i32.const 0
  f64.const 1
  local.get $15
  local.get $17
  f64.add
  f64.sub
  local.get $21
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $4
  i32.const 1
  local.get $13
  local.get $20
  f64.add
  local.get $21
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $4
  i32.const 2
  local.get $14
  local.get $19
  f64.sub
  local.get $21
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $4
  i32.const 3
  f64.const 0
  call $~lib/array/Array<f64>#__set
  local.get $4
  i32.const 4
  local.get $13
  local.get $20
  f64.sub
  local.get $22
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $4
  i32.const 5
  f64.const 1
  local.get $12
  local.get $17
  f64.add
  f64.sub
  local.get $22
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $4
  i32.const 6
  local.get $16
  local.get $18
  f64.add
  local.get $22
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $4
  i32.const 7
  f64.const 0
  call $~lib/array/Array<f64>#__set
  local.get $4
  i32.const 8
  local.get $14
  local.get $19
  f64.add
  local.get $23
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $4
  i32.const 9
  local.get $16
  local.get $18
  f64.sub
  local.get $23
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $4
  i32.const 10
  f64.const 1
  local.get $12
  local.get $15
  f64.add
  f64.sub
  local.get $23
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $4
  i32.const 11
  f64.const 0
  call $~lib/array/Array<f64>#__set
  local.get $4
  i32.const 12
  local.get $1
  f64.load
  call $~lib/array/Array<f64>#__set
  local.get $4
  i32.const 13
  local.get $1
  f64.load offset=8
  call $~lib/array/Array<f64>#__set
  local.get $4
  i32.const 14
  local.get $1
  f64.load offset=16
  call $~lib/array/Array<f64>#__set
  local.get $4
  i32.const 15
  f64.const 1
  call $~lib/array/Array<f64>#__set
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $24
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $24
 )
 (func $src/as/math/Vector3/Vector3#set (param $0 i32) (param $1 f64) (param $2 f64) (param $3 f64) (result i32)
  local.get $0
  local.get $1
  f64.store
  local.get $0
  local.get $2
  f64.store offset=8
  local.get $0
  local.get $3
  f64.store offset=16
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $src/as/math/Quaternion/Quaternion#setFromRotationMatrix (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  (local $8 f64)
  (local $9 f64)
  (local $10 f64)
  (local $11 f64)
  (local $12 f64)
  (local $13 f64)
  (local $14 f64)
  (local $15 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.load
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $2
  i32.const 0
  call $~lib/array/Array<f64>#__get
  local.set $3
  local.get $2
  i32.const 4
  call $~lib/array/Array<f64>#__get
  local.set $4
  local.get $2
  i32.const 8
  call $~lib/array/Array<f64>#__get
  local.set $5
  local.get $2
  i32.const 1
  call $~lib/array/Array<f64>#__get
  local.set $6
  local.get $2
  i32.const 5
  call $~lib/array/Array<f64>#__get
  local.set $7
  local.get $2
  i32.const 9
  call $~lib/array/Array<f64>#__get
  local.set $8
  local.get $2
  i32.const 2
  call $~lib/array/Array<f64>#__get
  local.set $9
  local.get $2
  i32.const 6
  call $~lib/array/Array<f64>#__get
  local.set $10
  local.get $2
  i32.const 10
  call $~lib/array/Array<f64>#__get
  local.set $11
  local.get $3
  local.get $7
  f64.add
  local.get $11
  f64.add
  local.set $12
  f64.const 0
  local.set $13
  local.get $12
  f64.const 0
  f64.gt
  if
   f64.const 0.5
   local.get $12
   f64.const 1
   f64.add
   local.set $14
   local.get $14
   f64.sqrt
   f64.div
   local.set $13
   local.get $0
   f64.const 0.25
   local.get $13
   f64.div
   f64.store offset=24
   local.get $0
   local.get $10
   local.get $8
   f64.sub
   local.get $13
   f64.mul
   f64.store
   local.get $0
   local.get $5
   local.get $9
   f64.sub
   local.get $13
   f64.mul
   f64.store offset=8
   local.get $0
   local.get $6
   local.get $4
   f64.sub
   local.get $13
   f64.mul
   f64.store offset=16
  else
   local.get $3
   local.get $7
   f64.gt
   if (result i32)
    local.get $3
    local.get $11
    f64.gt
   else
    i32.const 0
   end
   if
    f64.const 2
    f64.const 1
    local.get $3
    f64.add
    local.get $7
    f64.sub
    local.get $11
    f64.sub
    local.set $14
    local.get $14
    f64.sqrt
    f64.mul
    local.set $13
    local.get $0
    local.get $10
    local.get $8
    f64.sub
    local.get $13
    f64.div
    f64.store offset=24
    local.get $0
    f64.const 0.25
    local.get $13
    f64.mul
    f64.store
    local.get $0
    local.get $4
    local.get $6
    f64.add
    local.get $13
    f64.div
    f64.store offset=8
    local.get $0
    local.get $5
    local.get $9
    f64.add
    local.get $13
    f64.div
    f64.store offset=16
   else
    local.get $7
    local.get $11
    f64.gt
    if
     f64.const 2
     f64.const 1
     local.get $7
     f64.add
     local.get $3
     f64.sub
     local.get $11
     f64.sub
     local.set $14
     local.get $14
     f64.sqrt
     f64.mul
     local.set $13
     local.get $0
     local.get $5
     local.get $9
     f64.sub
     local.get $13
     f64.div
     f64.store offset=24
     local.get $0
     local.get $4
     local.get $6
     f64.add
     local.get $13
     f64.div
     f64.store
     local.get $0
     f64.const 0.25
     local.get $13
     f64.mul
     f64.store offset=8
     local.get $0
     local.get $8
     local.get $10
     f64.add
     local.get $13
     f64.div
     f64.store offset=16
    else
     f64.const 2
     f64.const 1
     local.get $11
     f64.add
     local.get $3
     f64.sub
     local.get $7
     f64.sub
     local.set $14
     local.get $14
     f64.sqrt
     f64.mul
     local.set $13
     local.get $0
     local.get $6
     local.get $4
     f64.sub
     local.get $13
     f64.div
     f64.store offset=24
     local.get $0
     local.get $5
     local.get $9
     f64.add
     local.get $13
     f64.div
     f64.store
     local.get $0
     local.get $8
     local.get $10
     f64.add
     local.get $13
     f64.div
     f64.store offset=8
     local.get $0
     f64.const 0.25
     local.get $13
     f64.mul
     f64.store offset=16
    end
   end
  end
  i32.const 0
  global.set $~argumentsLength
  local.get $0
  i32.load offset=36
  call_indirect (type $none_=>_none)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $15
  local.get $2
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $15
 )
 (func $src/as/math/Matrix4/Matrix4#decompose (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f64)
  (local $9 i32)
  (local $10 f64)
  (local $11 i32)
  (local $12 f64)
  (local $13 f64)
  (local $14 f64)
  (local $15 f64)
  (local $16 f64)
  (local $17 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $3
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $src/as/math/Vector3/Vector3#constructor
  local.set $4
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  local.set $5
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
  local.set $6
  local.get $4
  local.get $6
  i32.const 0
  call $~lib/array/Array<f64>#__get
  local.get $6
  i32.const 1
  call $~lib/array/Array<f64>#__get
  local.get $6
  i32.const 2
  call $~lib/array/Array<f64>#__get
  call $src/as/math/Vector3/Vector3#set
  local.tee $7
  call $src/as/math/Vector3/Vector3#length
  local.set $8
  local.get $4
  local.get $6
  i32.const 4
  call $~lib/array/Array<f64>#__get
  local.get $6
  i32.const 5
  call $~lib/array/Array<f64>#__get
  local.get $6
  i32.const 6
  call $~lib/array/Array<f64>#__get
  call $src/as/math/Vector3/Vector3#set
  local.tee $9
  call $src/as/math/Vector3/Vector3#length
  local.set $10
  local.get $4
  local.get $6
  i32.const 8
  call $~lib/array/Array<f64>#__get
  local.get $6
  i32.const 9
  call $~lib/array/Array<f64>#__get
  local.get $6
  i32.const 10
  call $~lib/array/Array<f64>#__get
  call $src/as/math/Vector3/Vector3#set
  local.tee $11
  call $src/as/math/Vector3/Vector3#length
  local.set $12
  local.get $0
  call $src/as/math/Matrix4/Matrix4#determinant
  local.set $13
  local.get $13
  f64.const 0
  f64.lt
  if
   local.get $8
   f64.neg
   local.set $8
  end
  local.get $1
  local.get $6
  i32.const 12
  call $~lib/array/Array<f64>#__get
  f64.store
  local.get $1
  local.get $6
  i32.const 13
  call $~lib/array/Array<f64>#__get
  f64.store offset=8
  local.get $1
  local.get $6
  i32.const 14
  call $~lib/array/Array<f64>#__get
  f64.store offset=16
  local.get $5
  local.get $0
  call $src/as/math/Matrix4/Matrix4#copy
  call $~lib/rt/pure/__release
  i32.const 1
  f64.convert_i32_s
  local.get $8
  f64.div
  local.set $14
  i32.const 1
  f64.convert_i32_s
  local.get $10
  f64.div
  local.set $15
  i32.const 1
  f64.convert_i32_s
  local.get $12
  f64.div
  local.set $16
  local.get $5
  i32.load
  i32.const 0
  local.get $5
  i32.load
  i32.const 0
  call $~lib/array/Array<f64>#__get
  local.get $14
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $5
  i32.load
  i32.const 1
  local.get $5
  i32.load
  i32.const 1
  call $~lib/array/Array<f64>#__get
  local.get $14
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $5
  i32.load
  i32.const 2
  local.get $5
  i32.load
  i32.const 2
  call $~lib/array/Array<f64>#__get
  local.get $14
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $5
  i32.load
  i32.const 4
  local.get $5
  i32.load
  i32.const 4
  call $~lib/array/Array<f64>#__get
  local.get $15
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $5
  i32.load
  i32.const 5
  local.get $5
  i32.load
  i32.const 5
  call $~lib/array/Array<f64>#__get
  local.get $15
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $5
  i32.load
  i32.const 6
  local.get $5
  i32.load
  i32.const 6
  call $~lib/array/Array<f64>#__get
  local.get $15
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $5
  i32.load
  i32.const 8
  local.get $5
  i32.load
  i32.const 8
  call $~lib/array/Array<f64>#__get
  local.get $16
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $5
  i32.load
  i32.const 9
  local.get $5
  i32.load
  i32.const 9
  call $~lib/array/Array<f64>#__get
  local.get $16
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $5
  i32.load
  i32.const 10
  local.get $5
  i32.load
  i32.const 10
  call $~lib/array/Array<f64>#__get
  local.get $16
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $2
  local.get $5
  call $src/as/math/Quaternion/Quaternion#setFromRotationMatrix
  call $~lib/rt/pure/__release
  local.get $3
  local.get $8
  f64.store
  local.get $3
  local.get $10
  f64.store offset=8
  local.get $3
  local.get $12
  f64.store offset=16
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $17
  local.get $7
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $11
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $17
 )
 (func $start:src/as/math/Matrix4.spec~anonymous|0~anonymous|0~anonymous|10
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
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  i32.const 9
  i32.const 2
  i32.const 13
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $src/as/math/Vector3/Vector3#constructor
  i32.store
  local.get $1
  i32.const 0
  f64.const 3
  f64.const 0
  f64.const 0
  call $src/as/math/Vector3/Vector3#constructor
  i32.store offset=4
  local.get $1
  i32.const 0
  f64.const 0
  f64.const 4
  f64.const 0
  call $src/as/math/Vector3/Vector3#constructor
  i32.store offset=8
  local.get $1
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 5
  call $src/as/math/Vector3/Vector3#constructor
  i32.store offset=12
  local.get $1
  i32.const 0
  f64.const -6
  f64.const 0
  f64.const 0
  call $src/as/math/Vector3/Vector3#constructor
  i32.store offset=16
  local.get $1
  i32.const 0
  f64.const 0
  f64.const -7
  f64.const 0
  call $src/as/math/Vector3/Vector3#constructor
  i32.store offset=20
  local.get $1
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const -8
  call $src/as/math/Vector3/Vector3#constructor
  i32.store offset=24
  local.get $1
  i32.const 0
  f64.const -2
  f64.const 5
  f64.const -9
  call $src/as/math/Vector3/Vector3#constructor
  i32.store offset=28
  local.get $1
  i32.const 0
  f64.const -2
  f64.const -5
  f64.const -9
  call $src/as/math/Vector3/Vector3#constructor
  i32.store offset=32
  local.get $0
  local.set $2
  i32.const 9
  i32.const 2
  i32.const 13
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.load offset=4
  local.set $0
  local.get $0
  i32.const 0
  f64.const 1
  f64.const 1
  f64.const 1
  call $src/as/math/Vector3/Vector3#constructor
  i32.store
  local.get $0
  i32.const 0
  f64.const 2
  f64.const 2
  f64.const 2
  call $src/as/math/Vector3/Vector3#constructor
  i32.store offset=4
  local.get $0
  i32.const 0
  f64.const 1
  f64.const -1
  f64.const 1
  call $src/as/math/Vector3/Vector3#constructor
  i32.store offset=8
  local.get $0
  i32.const 0
  f64.const -1
  f64.const 1
  f64.const 1
  call $src/as/math/Vector3/Vector3#constructor
  i32.store offset=12
  local.get $0
  i32.const 0
  f64.const 1
  f64.const 1
  f64.const -1
  call $src/as/math/Vector3/Vector3#constructor
  i32.store offset=16
  local.get $0
  i32.const 0
  f64.const 2
  f64.const -2
  f64.const 1
  call $src/as/math/Vector3/Vector3#constructor
  i32.store offset=20
  local.get $0
  i32.const 0
  f64.const -1
  f64.const 2
  f64.const -2
  call $src/as/math/Vector3/Vector3#constructor
  i32.store offset=24
  local.get $0
  i32.const 0
  f64.const -1
  f64.const -1
  f64.const -1
  call $src/as/math/Vector3/Vector3#constructor
  i32.store offset=28
  local.get $0
  i32.const 0
  f64.const -2
  f64.const -2
  f64.const -2
  call $src/as/math/Vector3/Vector3#constructor
  i32.store offset=32
  local.get $1
  local.set $3
  i32.const 4
  i32.const 2
  i32.const 14
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 1
  call $src/as/math/Quaternion/Quaternion#constructor
  i32.store
  local.get $1
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 1
  call $src/as/math/Quaternion/Quaternion#constructor
  i32.store offset=4
  local.get $1
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 1
  call $src/as/math/Quaternion/Quaternion#constructor
  i32.store offset=8
  local.get $1
  i32.const 0
  f64.const 0
  f64.const 0.9238795292366128
  f64.const 0
  f64.const 0.38268342717215614
  call $src/as/math/Quaternion/Quaternion#constructor
  i32.store offset=12
  local.get $0
  local.set $4
  local.get $4
  i32.const 1
  call $~lib/array/Array<src/as/math/Quaternion/Quaternion>#__get
  local.tee $1
  i32.const 0
  f64.const 1
  f64.const 1
  f64.const 0
  global.get $src/as/math/Euler/Euler.DefaultOrder
  call $src/as/math/Euler/Euler#constructor
  local.tee $0
  i32.const 1
  call $src/as/math/Quaternion/Quaternion#setFromEuler
  call $~lib/rt/pure/__release
  local.get $4
  i32.const 2
  call $~lib/array/Array<src/as/math/Quaternion/Quaternion>#__get
  local.tee $5
  i32.const 0
  f64.const 1
  f64.const -1
  f64.const 1
  global.get $src/as/math/Euler/Euler.DefaultOrder
  call $src/as/math/Euler/Euler#constructor
  local.tee $6
  i32.const 1
  call $src/as/math/Quaternion/Quaternion#setFromEuler
  call $~lib/rt/pure/__release
  i32.const 0
  local.set $7
  loop $for-loop|0
   local.get $7
   local.get $2
   call $~lib/array/Array<src/as/math/Vector3/Vector3>#get:length
   i32.lt_s
   local.set $8
   local.get $8
   if
    i32.const 0
    local.set $9
    loop $for-loop|1
     local.get $9
     local.get $3
     call $~lib/array/Array<src/as/math/Vector3/Vector3>#get:length
     i32.lt_s
     local.set $10
     local.get $10
     if
      i32.const 0
      local.set $11
      loop $for-loop|2
       local.get $11
       local.get $4
       call $~lib/array/Array<src/as/math/Quaternion/Quaternion>#get:length
       i32.lt_s
       local.set $12
       local.get $12
       if
        local.get $2
        local.get $7
        call $~lib/array/Array<src/as/math/Vector3/Vector3>#__get
        local.set $13
        local.get $3
        local.get $9
        call $~lib/array/Array<src/as/math/Vector3/Vector3>#__get
        local.set $14
        local.get $4
        local.get $11
        call $~lib/array/Array<src/as/math/Quaternion/Quaternion>#__get
        local.set $15
        i32.const 0
        call $src/as/math/Matrix4/Matrix4#constructor
        local.set $16
        local.get $16
        local.get $13
        local.get $15
        local.get $14
        call $src/as/math/Matrix4/Matrix4#compose
        call $~lib/rt/pure/__release
        i32.const 0
        f64.const 0
        f64.const 0
        f64.const 0
        call $src/as/math/Vector3/Vector3#constructor
        local.set $17
        i32.const 0
        f64.const 0
        f64.const 0
        f64.const 0
        f64.const 1
        call $src/as/math/Quaternion/Quaternion#constructor
        local.set $18
        i32.const 0
        f64.const 0
        f64.const 0
        f64.const 0
        call $src/as/math/Vector3/Vector3#constructor
        local.set $19
        local.get $16
        local.get $17
        local.get $18
        local.get $19
        call $src/as/math/Matrix4/Matrix4#decompose
        call $~lib/rt/pure/__release
        i32.const 0
        call $src/as/math/Matrix4/Matrix4#constructor
        local.set $20
        local.get $20
        local.get $17
        local.get $18
        local.get $19
        call $src/as/math/Matrix4/Matrix4#compose
        call $~lib/rt/pure/__release
        local.get $16
        local.get $20
        f64.const 0.0001
        call $src/as/math/Matrix4/matrixEquals4
        i32.eqz
        if
         i32.const 560
         i32.const 592
         i32.const 559
         i32.const 7
         call $~lib/builtins/abort
         unreachable
        end
        local.get $11
        i32.const 1
        i32.add
        local.set $11
        br $for-loop|2
       end
      end
      local.get $9
      i32.const 1
      i32.add
      local.set $9
      br $for-loop|1
     end
    end
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $for-loop|0
   end
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $13
  call $~lib/rt/pure/__release
  local.get $14
  call $~lib/rt/pure/__release
  local.get $15
  call $~lib/rt/pure/__release
  local.get $16
  call $~lib/rt/pure/__release
  local.get $17
  call $~lib/rt/pure/__release
  local.get $18
  call $~lib/rt/pure/__release
  local.get $19
  call $~lib/rt/pure/__release
  local.get $20
  call $~lib/rt/pure/__release
 )
 (func $start:src/as/math/Matrix4.spec~anonymous|0~anonymous|0
  i32.const 400
  i32.const 1
  call $node_modules/@as-pect/assembly/assembly/internal/Test/test
  i32.const 768
  call $node_modules/@as-pect/assembly/assembly/internal/Test/todo
  i32.const 816
  i32.const 2
  call $node_modules/@as-pect/assembly/assembly/internal/Test/test
  i32.const 848
  i32.const 3
  call $node_modules/@as-pect/assembly/assembly/internal/Test/test
  i32.const 880
  i32.const 4
  call $node_modules/@as-pect/assembly/assembly/internal/Test/test
  i32.const 1088
  i32.const 5
  call $node_modules/@as-pect/assembly/assembly/internal/Test/test
  i32.const 1120
  call $node_modules/@as-pect/assembly/assembly/internal/Test/todo
  i32.const 1168
  i32.const 7
  call $node_modules/@as-pect/assembly/assembly/internal/Test/test
  i32.const 1840
  call $node_modules/@as-pect/assembly/assembly/internal/Test/todo
  i32.const 1872
  call $node_modules/@as-pect/assembly/assembly/internal/Test/todo
  i32.const 1920
  i32.const 8
  call $node_modules/@as-pect/assembly/assembly/internal/Test/test
  i32.const 2032
  i32.const 9
  call $node_modules/@as-pect/assembly/assembly/internal/Test/test
  i32.const 2080
  call $node_modules/@as-pect/assembly/assembly/internal/Test/todo
  i32.const 2128
  i32.const 10
  call $node_modules/@as-pect/assembly/assembly/internal/Test/test
  i32.const 2320
  call $node_modules/@as-pect/assembly/assembly/internal/Test/todo
  i32.const 2352
  i32.const 11
  call $node_modules/@as-pect/assembly/assembly/internal/Test/test
  i32.const 2464
  call $node_modules/@as-pect/assembly/assembly/internal/Test/todo
  i32.const 2512
  call $node_modules/@as-pect/assembly/assembly/internal/Test/todo
  i32.const 2560
  call $node_modules/@as-pect/assembly/assembly/internal/Test/todo
  i32.const 2608
  call $node_modules/@as-pect/assembly/assembly/internal/Test/todo
  i32.const 2656
  call $node_modules/@as-pect/assembly/assembly/internal/Test/todo
  i32.const 2704
  call $node_modules/@as-pect/assembly/assembly/internal/Test/todo
  i32.const 2752
  i32.const 12
  call $node_modules/@as-pect/assembly/assembly/internal/Test/test
  i32.const 2816
  call $node_modules/@as-pect/assembly/assembly/internal/Test/todo
  i32.const 2864
  call $node_modules/@as-pect/assembly/assembly/internal/Test/todo
 )
 (func $start:src/as/math/Matrix4.spec~anonymous|0
  i32.const 368
  i32.const 13
  call $node_modules/@as-pect/assembly/assembly/internal/Test/describe
 )
 (func $start:src/as/math/Matrix4.spec
  call $start:src/as/math/Matrix4
  call $start:src/as/core/BufferAttribute
  call $start:src/as/math/Constants.tests
  i32.const 336
  i32.const 14
  call $node_modules/@as-pect/assembly/assembly/internal/Test/describe
 )
 (func $start:node_modules/@as-pect/assembly/assembly/internal/noOp~anonymous|0
  nop
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/call/__call (param $0 i32)
  i32.const 0
  global.set $~argumentsLength
  local.get $0
  call_indirect (type $none_=>_none)
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/log/__ignoreLogs (param $0 i32)
  local.get $0
  i32.const 0
  i32.ne
  global.set $node_modules/@as-pect/assembly/assembly/internal/log/ignoreLogs
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/RTrace/__disableRTrace
  i32.const 0
  global.set $node_modules/@as-pect/assembly/assembly/internal/RTrace/RTrace.enabled
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/RTrace/__getUsizeArrayId (result i32)
  i32.const 15
 )
 (func $~start
  global.get $~started
  if
   return
  else
   i32.const 1
   global.set $~started
  end
  call $start:src/as/math/Matrix4.spec
 )
 (func $~lib/rt/pure/__collect
  i32.const 1
  drop
  return
 )
 (func $~lib/rt/pure/decrement (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 268435455
  i32.and
  local.set $2
  i32.const 1
  drop
  local.get $0
  call $~lib/rt/rtrace/ondecrement
  i32.const 1
  drop
  local.get $0
  i32.load
  i32.const 1
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 122
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  i32.eq
  if
   local.get $0
   i32.const 16
   i32.add
   i32.const 1
   call $~lib/rt/__visit_members
   i32.const 1
   drop
   i32.const 1
   drop
   local.get $1
   i32.const -2147483648
   i32.and
   i32.eqz
   i32.eqz
   if
    i32.const 0
    i32.const 144
    i32.const 126
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/rt/tlsf/ROOT
   local.get $0
   call $~lib/rt/tlsf/freeBlock
  else
   i32.const 1
   drop
   local.get $2
   i32.const 0
   i32.gt_u
   i32.eqz
   if
    i32.const 0
    i32.const 144
    i32.const 136
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 1
   drop
   local.get $0
   local.get $1
   i32.const 268435455
   i32.const -1
   i32.xor
   i32.and
   local.get $2
   i32.const 1
   i32.sub
   i32.or
   i32.store offset=4
  end
 )
 (func $~lib/rt/pure/__visit (param $0 i32) (param $1 i32)
  local.get $0
  global.get $~lib/heap/__heap_base
  i32.lt_u
  if
   return
  end
  i32.const 1
  drop
  i32.const 1
  drop
  local.get $1
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 144
   i32.const 69
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 16
  i32.sub
  call $~lib/rt/pure/decrement
 )
 (func $~lib/array/Array<f64>#__visit_impl (param $0 i32) (param $1 i32)
  i32.const 0
  drop
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/array/Array<i32>#__visit_impl (param $0 i32) (param $1 i32)
  i32.const 0
  drop
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/array/Array<src/as/math/Euler/Euler>#__visit_impl (param $0 i32) (param $1 i32)
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
     call $~lib/rt/pure/__visit
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
  call $~lib/rt/pure/__visit
 )
 (func $~lib/array/Array<src/as/math/Matrix4/Matrix4>#__visit_impl (param $0 i32) (param $1 i32)
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
     call $~lib/rt/pure/__visit
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
  call $~lib/rt/pure/__visit
 )
 (func $~lib/array/Array<src/as/math/Vector3/Vector3>#__visit_impl (param $0 i32) (param $1 i32)
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
     call $~lib/rt/pure/__visit
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
  call $~lib/rt/pure/__visit
 )
 (func $~lib/array/Array<src/as/math/Quaternion/Quaternion>#__visit_impl (param $0 i32) (param $1 i32)
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
     call $~lib/rt/pure/__visit
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
  call $~lib/rt/pure/__visit
 )
 (func $~lib/array/Array<usize>#__visit_impl (param $0 i32) (param $1 i32)
  i32.const 0
  drop
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
 )
 (func $~lib/rt/__visit_members (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $switch$1$default
   block $switch$1$case$17
    block $switch$1$case$16
     block $switch$1$case$15
      block $switch$1$case$14
       block $switch$1$case$13
        block $switch$1$case$7
         block $switch$1$case$6
          block $switch$1$case$4
           block $switch$1$case$2
            local.get $0
            i32.const 8
            i32.sub
            i32.load
            br_table $switch$1$case$2 $switch$1$case$2 $switch$1$case$4 $switch$1$case$4 $switch$1$case$6 $switch$1$case$7 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$13 $switch$1$case$14 $switch$1$case$15 $switch$1$case$16 $switch$1$case$17 $switch$1$default
           end
           return
          end
          local.get $0
          i32.load
          local.tee $2
          if
           local.get $2
           local.get $1
           call $~lib/rt/pure/__visit
          end
          return
         end
         local.get $0
         local.get $1
         call $~lib/array/Array<f64>#__visit_impl
         return
        end
        local.get $0
        local.get $1
        call $~lib/array/Array<i32>#__visit_impl
        return
       end
       local.get $0
       local.get $1
       call $~lib/array/Array<src/as/math/Euler/Euler>#__visit_impl
       return
      end
      local.get $0
      local.get $1
      call $~lib/array/Array<src/as/math/Matrix4/Matrix4>#__visit_impl
      return
     end
     local.get $0
     local.get $1
     call $~lib/array/Array<src/as/math/Vector3/Vector3>#__visit_impl
     return
    end
    local.get $0
    local.get $1
    call $~lib/array/Array<src/as/math/Quaternion/Quaternion>#__visit_impl
    return
   end
   local.get $0
   local.get $1
   call $~lib/array/Array<usize>#__visit_impl
   return
  end
  unreachable
 )
)
