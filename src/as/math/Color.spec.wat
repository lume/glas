(module
 (type $none_=>_none (func))
 (type $i32_=>_none (func (param i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_f64_=>_i32 (func (param i32 f64) (result i32)))
 (type $i32_f64_f64_f64_=>_i32 (func (param i32 f64 f64 f64) (result i32)))
 (type $f64_i32_=>_i32 (func (param f64 i32) (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_f64_i32_=>_none (func (param i32 f64 i32)))
 (type $i32_f64_f64_f64_=>_none (func (param i32 f64 f64 f64)))
 (type $f64_=>_none (func (param f64)))
 (type $f64_i32_=>_none (func (param f64 i32)))
 (type $i32_i32_i32_i32_f64_=>_i32 (func (param i32 i32 i32 i32 f64) (result i32)))
 (type $f64_=>_i32 (func (param f64) (result i32)))
 (import "env" "memory" (memory $0 1))
 (data (i32.const 16) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00")
 (data (i32.const 64) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00")
 (data (i32.const 128) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00p\00u\00r\00e\00.\00t\00s\00")
 (data (i32.const 176) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00C\00o\00l\00o\00r\00")
 (data (i32.const 208) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00.\00c\00o\00n\00s\00t\00r\00u\00c\00t\00o\00r\00")
 (data (i32.const 256) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00d\00e\00f\00a\00u\00l\00t\00 \00a\00r\00g\00s\00")
 (data (i32.const 304) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00f\006\004\00")
 (data (i32.const 336) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data (i32.const 384) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 448) "t\00\00\00\01\00\00\00\01\00\00\00t\00\00\00n\00o\00d\00e\00_\00m\00o\00d\00u\00l\00e\00s\00/\00@\00a\00s\00-\00p\00e\00c\00t\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00s\00s\00e\00r\00t\00.\00t\00s\00")
 (data (i32.const 592) "\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 608) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00r\00g\00b\00 \00a\00r\00g\00s\00")
 (data (i32.const 640) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00.\00s\00e\00t\00H\00e\00x\00")
 (data (i32.const 672) "P\00\00\00\01\00\00\00\01\00\00\00P\00\00\00s\00e\00t\00s\00 \00t\00h\00e\00 \00c\00o\00l\00o\00r\00 \00v\00a\00l\00u\00e\00s\00 \00u\00s\00i\00n\00g\00 \00a\00 \00h\00e\00x\00 \00n\00u\00m\00b\00e\00r\00")
 (data (i32.const 768) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00i\003\002\00")
 (data (i32.const 800) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00.\00c\00l\00o\00n\00e\00")
 (data (i32.const 832) "P\00\00\00\01\00\00\00\01\00\00\00P\00\00\00c\00r\00e\00a\00t\00e\00s\00 \00a\00 \00n\00e\00w\00 \00C\00o\00l\00o\00r\00 \00w\00i\00t\00h\00 \00t\00h\00e\00 \00s\00a\00m\00e\00 \00v\00a\00l\00u\00e\00s\00")
 (data (i32.const 928) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00b\00o\00o\00l\00")
 (data (i32.const 960) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00.\00c\00o\00p\00y\00")
 (data (i32.const 992) "@\00\00\00\01\00\00\00\01\00\00\00@\00\00\00c\00o\00p\00i\00e\00s\00 \00v\00a\00l\00u\00e\00s\00 \00f\00r\00o\00m\00 \00a\00n\00o\00t\00h\00e\00r\00 \00C\00o\00l\00o\00r\00")
 (data (i32.const 1072) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00.\00m\00u\00l\00t\00i\00p\00l\00y\00S\00c\00a\00l\00a\00r\00")
 (data (i32.const 1120) "\\\00\00\00\01\00\00\00\01\00\00\00\\\00\00\00m\00u\00l\00t\00i\00p\00l\00i\00e\00s\00 \00t\00h\00e\00 \00c\00o\00l\00o\00r\00 \00v\00a\00l\00u\00e\00s\00 \00b\00y\00 \00a\00 \00s\00c\00a\00l\00a\00r\00 \00n\00u\00m\00b\00e\00r\00")
 (data (i32.const 1232) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00s\00e\00t\00R\00G\00B\00")
 (data (i32.const 1264) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00s\00e\00t\00s\00 \00R\00G\00B\00 \00v\00a\00l\00u\00e\00s\00")
 (data (i32.const 1312) "\n\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\000\t\02\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00\"\01\00\00\00\00\00\00")
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "rtrace" "onalloc" (func $~lib/rt/rtrace/onalloc (param i32)))
 (import "rtrace" "onincrement" (func $~lib/rt/rtrace/onincrement (param i32)))
 (import "__aspect" "createReflectedNumber" (func $node_modules/@as-pect/assembly/assembly/internal/Reflect/createReflectedNumber (param i32 i32 i32 i32 f64) (result i32)))
 (import "__aspect" "attachStackTraceToReflectedValue" (func $node_modules/@as-pect/assembly/assembly/internal/Reflect/attachStackTraceToReflectedValue (param i32)))
 (import "__aspect" "reportActualReflectedValue" (func $node_modules/@as-pect/assembly/assembly/internal/Actual/reportActualReflectedValue (param i32)))
 (import "__aspect" "reportExpectedReflectedValue" (func $node_modules/@as-pect/assembly/assembly/internal/Expected/reportExpectedReflectedValue (param i32 i32)))
 (import "__aspect" "clearActual" (func $node_modules/@as-pect/assembly/assembly/internal/Actual/clearActual))
 (import "__aspect" "clearExpected" (func $node_modules/@as-pect/assembly/assembly/internal/Expected/clearExpected))
 (import "__aspect" "reportTestTypeNode" (func $node_modules/@as-pect/assembly/assembly/internal/Test/test (param i32 i32)))
 (import "__aspect" "reportGroupTypeNode" (func $node_modules/@as-pect/assembly/assembly/internal/Test/describe (param i32 i32)))
 (import "__aspect" "reportTestTypeNode" (func $node_modules/@as-pect/assembly/assembly/internal/Test/it (param i32 i32)))
 (import "__aspect" "reportExpectedTruthy" (func $node_modules/@as-pect/assembly/assembly/internal/Expected/reportExpectedTruthy (param i32)))
 (import "rtrace" "ondecrement" (func $~lib/rt/rtrace/ondecrement (param i32)))
 (import "rtrace" "onfree" (func $~lib/rt/rtrace/onfree (param i32)))
 (table $0 16 funcref)
 (elem (i32.const 1) $start:src/as/math/Color.spec~anonymous|0~anonymous|0~anonymous|0 $start:src/as/math/Color.spec~anonymous|0~anonymous|0~anonymous|1 $start:src/as/math/Color.spec~anonymous|0~anonymous|0 $start:src/as/math/Color.spec~anonymous|0~anonymous|1~anonymous|0 $start:src/as/math/Color.spec~anonymous|0~anonymous|1 $start:src/as/math/Color.spec~anonymous|0~anonymous|2~anonymous|0 $start:src/as/math/Color.spec~anonymous|0~anonymous|2 $start:src/as/math/Color.spec~anonymous|0~anonymous|3~anonymous|0 $start:src/as/math/Color.spec~anonymous|0~anonymous|3 $start:src/as/math/Color.spec~anonymous|0~anonymous|4~anonymous|0 $start:src/as/math/Color.spec~anonymous|0~anonymous|4 $start:src/as/math/Color.spec~anonymous|0~anonymous|5~anonymous|0 $start:src/as/math/Color.spec~anonymous|0~anonymous|5 $start:src/as/math/Color.spec~anonymous|0 $start:node_modules/@as-pect/assembly/assembly/internal/noOp~anonymous|0)
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/ASC_LOW_MEMORY_LIMIT i32 (i32.const 0))
 (global $~lib/rt/tlsf/collectLock (mut i32) (i32.const 0))
 (global $~lib/gc/gc.auto (mut i32) (i32.const 1))
 (global $~lib/math/NativeMath.PI f64 (f64.const 3.141592653589793))
 (global $src/as/math/Math/DEG2RAD f64 (f64.const 0.017453292519943295))
 (global $src/as/math/Math/RAD2DEG f64 (f64.const 57.29577951308232))
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
 (global $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.FAILED_MATCH i32 (i32.const 0))
 (global $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.SUCCESSFUL_MATCH i32 (i32.const 1))
 (global $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.DEFER_MATCH i32 (i32.const 2))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $node_modules/@as-pect/assembly/assembly/internal/noOp/noOp i32 (i32.const 15))
 (global $node_modules/@as-pect/assembly/assembly/internal/log/ignoreLogs (mut i32) (i32.const 0))
 (global $node_modules/@as-pect/assembly/assembly/internal/RTrace/RTrace.enabled (mut i32) (i32.const 1))
 (global $~started (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 1312))
 (global $~lib/heap/__heap_base i32 (i32.const 1396))
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
 (func $src/as/math/Color/HSL#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 3
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
 (func $src/as/math/Color/Color<f64>#setRGB (param $0 i32) (param $1 f64) (param $2 f64) (param $3 f64) (result i32)
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
 (func $src/as/math/Color/Color<f64>#constructor (param $0 i32) (param $1 f64) (param $2 f64) (param $3 f64) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 25
   i32.const 4
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
  local.get $2
  local.get $3
  call $src/as/math/Color/Color<f64>#setRGB
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#constructor (param $0 i32) (param $1 f64) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 5
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  f64.const 0
  f64.store offset=8
  local.get $0
  local.get $1
  f64.store offset=8
  local.get $0
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64> (param $0 f64) (result i32)
  i32.const 0
  local.get $0
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#constructor
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.toReflectedValue<f64> (param $0 f64) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  i32.const 0
  drop
  i32.const 3
  i32.const 3
  i32.eq
  if (result i32)
   i32.const 0
  else
   i32.const 0
  end
  drop
  i32.const 1
  i32.const 8
  i32.const 8
  i32.const 320
  local.get $0
  call $node_modules/@as-pect/assembly/assembly/internal/Reflect/createReflectedNumber
  local.set $2
  local.get $2
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
  return
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
 (func $~lib/arraybuffer/ArrayBuffer#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i32.const 1073741808
  i32.gt_u
  if
   i32.const 352
   i32.const 400
   i32.const 49
   i32.const 43
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $2
  local.get $2
  i32.const 0
  local.get $1
  call $~lib/memory/memory.fill
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/map/Map<usize,i32>#clear (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  local.tee $1
  i32.const 0
  i32.const 16
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $2
  local.get $1
  i32.load
  call $~lib/rt/pure/__release
  local.get $2
  i32.store
  local.get $0
  i32.const 4
  i32.const 1
  i32.sub
  i32.store offset=4
  local.get $0
  local.tee $2
  i32.const 0
  i32.const 48
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  local.get $2
  i32.load offset=8
  call $~lib/rt/pure/__release
  local.get $1
  i32.store offset=8
  local.get $0
  i32.const 4
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
 )
 (func $~lib/map/Map<usize,i32>#constructor (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 24
   i32.const 6
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 0
  i32.store offset=12
  local.get $0
  i32.const 0
  i32.store offset=16
  local.get $0
  i32.const 0
  i32.store offset=20
  local.get $0
  call $~lib/map/Map<usize,i32>#clear
  local.get $0
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.toReflectedValue<f64>@varargs (param $0 f64) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
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
   call $~lib/map/Map<usize,i32>#constructor
   local.tee $2
   local.set $1
  end
  local.get $0
  local.get $1
  call $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.toReflectedValue<f64>
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.attachStackTrace (param $0 i32)
  local.get $0
  call $node_modules/@as-pect/assembly/assembly/internal/Reflect/attachStackTraceToReflectedValue
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Actual/Actual.report<f64> (param $0 f64)
  (local $1 i32)
  local.get $0
  i32.const 1
  global.set $~argumentsLength
  i32.const 0
  call $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.toReflectedValue<f64>@varargs
  local.set $1
  local.get $1
  call $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.attachStackTrace
  local.get $1
  call $node_modules/@as-pect/assembly/assembly/internal/Actual/reportActualReflectedValue
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Expected/Expected.report<f64> (param $0 f64) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 1
  global.set $~argumentsLength
  i32.const 0
  call $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.toReflectedValue<f64>@varargs
  local.set $2
  local.get $2
  call $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.attachStackTrace
  local.get $2
  local.get $1
  call $node_modules/@as-pect/assembly/assembly/internal/Expected/reportExpectedReflectedValue
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/assert/assert (param $0 i32) (param $1 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.eqz
  if
   local.get $1
   i32.const 464
   i32.const 2
   i32.const 19
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Actual/Actual.clear
  call $node_modules/@as-pect/assembly/assembly/internal/Actual/clearActual
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Expected/Expected.clear
  call $node_modules/@as-pect/assembly/assembly/internal/Expected/clearExpected
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe (param $0 i32) (param $1 f64) (param $2 i32)
  (local $3 f64)
  (local $4 i32)
  (local $5 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  f64.load offset=8
  local.set $3
  local.get $3
  local.get $1
  f64.eq
  local.set $4
  local.get $0
  i32.load
  local.set $5
  local.get $3
  call $node_modules/@as-pect/assembly/assembly/internal/Actual/Actual.report<f64>
  i32.const 0
  if (result i32)
   i32.const 0
   i32.eqz
  else
   i32.const 0
  end
  drop
  local.get $1
  local.get $5
  call $node_modules/@as-pect/assembly/assembly/internal/Expected/Expected.report<f64>
  local.get $4
  local.get $5
  i32.xor
  local.get $2
  call $node_modules/@as-pect/assembly/assembly/internal/assert/assert
  call $node_modules/@as-pect/assembly/assembly/internal/Actual/Actual.clear
  call $node_modules/@as-pect/assembly/assembly/internal/Expected/Expected.clear
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $start:src/as/math/Color.spec~anonymous|0~anonymous|0~anonymous|0
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $src/as/math/Color/Color<f64>#constructor
  local.set $0
  local.get $0
  f64.load
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $1
  f64.const 0
  i32.const 608
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  f64.load offset=8
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $2
  f64.const 0
  i32.const 608
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  f64.load offset=16
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $3
  f64.const 0
  i32.const 608
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $start:src/as/math/Color.spec~anonymous|0~anonymous|0~anonymous|1
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  f64.const 1
  f64.const 1
  f64.const 1
  call $src/as/math/Color/Color<f64>#constructor
  local.set $0
  local.get $0
  f64.load
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $1
  f64.const 1
  i32.const 608
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  f64.load offset=8
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $2
  f64.const 1
  i32.const 608
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  f64.load offset=16
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $3
  f64.const 1
  i32.const 608
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $start:src/as/math/Color.spec~anonymous|0~anonymous|0
  i32.const 272
  i32.const 1
  call $node_modules/@as-pect/assembly/assembly/internal/Test/test
  i32.const 624
  i32.const 2
  call $node_modules/@as-pect/assembly/assembly/internal/Test/test
 )
 (func $src/as/math/Color/Color<f64>#setHex (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  i32.const 16
  i32.shr_s
  i32.const 255
  i32.and
  f64.convert_i32_s
  f64.const 255
  f64.div
  f64.store
  local.get $0
  local.get $1
  i32.const 8
  i32.shr_s
  i32.const 255
  i32.and
  f64.convert_i32_s
  f64.const 255
  f64.div
  f64.store offset=8
  local.get $0
  local.get $1
  i32.const 0
  i32.shr_s
  i32.const 255
  i32.and
  f64.convert_i32_s
  f64.const 255
  f64.div
  f64.store offset=16
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $src/as/math/Color/Color<f64>#getHex (param $0 i32) (result i32)
  local.get $0
  f64.load
  f64.const 255
  f64.mul
  i32.trunc_f64_s
  i32.const 16
  i32.shl
  local.get $0
  f64.load offset=8
  f64.const 255
  f64.mul
  i32.trunc_f64_s
  i32.const 8
  i32.shl
  i32.xor
  local.get $0
  f64.load offset=16
  f64.const 255
  f64.mul
  i32.trunc_f64_s
  i32.const 0
  i32.shl
  i32.xor
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<i32>#constructor (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 7
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<i32> (param $0 i32) (result i32)
  i32.const 0
  local.get $0
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<i32>#constructor
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.toReflectedValue<i32> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  i32.const 0
  drop
  i32.const 2
  i32.const 3
  i32.eq
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  drop
  i32.const 1
  i32.const 4
  i32.const 7
  i32.const 784
  local.get $0
  f64.convert_i32_s
  call $node_modules/@as-pect/assembly/assembly/internal/Reflect/createReflectedNumber
  local.set $2
  local.get $2
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
  return
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.toReflectedValue<i32>@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
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
   call $~lib/map/Map<usize,i32>#constructor
   local.tee $2
   local.set $1
  end
  local.get $0
  local.get $1
  call $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.toReflectedValue<i32>
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Actual/Actual.report<i32> (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.const 1
  global.set $~argumentsLength
  i32.const 0
  call $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.toReflectedValue<i32>@varargs
  local.set $1
  local.get $1
  call $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.attachStackTrace
  local.get $1
  call $node_modules/@as-pect/assembly/assembly/internal/Actual/reportActualReflectedValue
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Expected/Expected.report<i32> (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 1
  global.set $~argumentsLength
  i32.const 0
  call $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.toReflectedValue<i32>@varargs
  local.set $2
  local.get $2
  call $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.attachStackTrace
  local.get $2
  local.get $1
  call $node_modules/@as-pect/assembly/assembly/internal/Expected/reportExpectedReflectedValue
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<i32>#toBe (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $3
  local.get $1
  i32.eq
  local.set $4
  local.get $0
  i32.load
  local.set $5
  local.get $3
  call $node_modules/@as-pect/assembly/assembly/internal/Actual/Actual.report<i32>
  i32.const 0
  if (result i32)
   i32.const 0
   i32.eqz
  else
   i32.const 0
  end
  drop
  local.get $1
  local.get $5
  call $node_modules/@as-pect/assembly/assembly/internal/Expected/Expected.report<i32>
  local.get $4
  local.get $5
  i32.xor
  local.get $2
  call $node_modules/@as-pect/assembly/assembly/internal/assert/assert
  call $node_modules/@as-pect/assembly/assembly/internal/Actual/Actual.clear
  call $node_modules/@as-pect/assembly/assembly/internal/Expected/Expected.clear
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $start:src/as/math/Color.spec~anonymous|0~anonymous|1~anonymous|0
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $src/as/math/Color/Color<f64>#constructor
  local.set $0
  local.get $0
  i32.const 16416882
  call $src/as/math/Color/Color<f64>#setHex
  call $~lib/rt/pure/__release
  local.get $0
  call $src/as/math/Color/Color<f64>#getHex
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<i32>
  local.tee $1
  i32.const 16416882
  i32.const 608
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<i32>#toBe
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $start:src/as/math/Color.spec~anonymous|0~anonymous|1
  i32.const 688
  i32.const 4
  call $node_modules/@as-pect/assembly/assembly/internal/Test/it
 )
 (func $src/as/math/Color/Color<f64>#clone (param $0 i32) (result i32)
  i32.const 0
  local.get $0
  f64.load
  local.get $0
  f64.load offset=8
  local.get $0
  f64.load offset=16
  call $src/as/math/Color/Color<f64>#constructor
 )
 (func $src/as/math/Color/Color<f64>#equals (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  f64.load
  local.get $0
  f64.load
  f64.eq
  if (result i32)
   local.get $1
   f64.load offset=8
   local.get $0
   f64.load offset=8
   f64.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   f64.load offset=16
   local.get $0
   f64.load offset=16
   f64.eq
  else
   i32.const 0
  end
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<bool>#constructor (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 5
   i32.const 8
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store8 offset=4
  local.get $0
  local.get $1
  i32.store8 offset=4
  local.get $0
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<bool> (param $0 i32) (result i32)
  i32.const 0
  local.get $0
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<bool>#constructor
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.toReflectedValue<bool> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  i32.const 0
  drop
  i32.const 0
  i32.const 3
  i32.eq
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  drop
  i32.const 0
  i32.const 1
  i32.const 9
  i32.const 944
  local.get $0
  f64.convert_i32_u
  call $node_modules/@as-pect/assembly/assembly/internal/Reflect/createReflectedNumber
  local.set $2
  local.get $2
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
  return
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.toReflectedValue<bool>@varargs (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
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
   call $~lib/map/Map<usize,i32>#constructor
   local.tee $2
   local.set $1
  end
  local.get $0
  local.get $1
  call $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.toReflectedValue<bool>
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Actual/Actual.report<bool> (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.const 1
  global.set $~argumentsLength
  i32.const 0
  call $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.toReflectedValue<bool>@varargs
  local.set $1
  local.get $1
  call $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.attachStackTrace
  local.get $1
  call $node_modules/@as-pect/assembly/assembly/internal/Actual/reportActualReflectedValue
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Expected/Expected.reportTruthy (param $0 i32)
  local.get $0
  call $node_modules/@as-pect/assembly/assembly/internal/Expected/reportExpectedTruthy
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<bool>#toBeTruthy (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load8_u offset=4
  local.set $2
  local.get $2
  call $node_modules/@as-pect/assembly/assembly/internal/Actual/Actual.report<bool>
  local.get $0
  i32.load
  local.set $3
  local.get $3
  call $node_modules/@as-pect/assembly/assembly/internal/Expected/Expected.reportTruthy
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 1
  drop
  local.get $2
  i32.const 0
  i32.ne
  i32.const 0
  i32.ne
  local.set $4
  local.get $4
  local.get $3
  i32.xor
  local.get $1
  call $node_modules/@as-pect/assembly/assembly/internal/assert/assert
  call $node_modules/@as-pect/assembly/assembly/internal/Actual/Actual.clear
  call $node_modules/@as-pect/assembly/assembly/internal/Expected/Expected.clear
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $start:src/as/math/Color.spec~anonymous|0~anonymous|2~anonymous|0
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  f64.const 0.2
  f64.const 0.3
  f64.const 0.4
  call $src/as/math/Color/Color<f64>#constructor
  local.set $0
  local.get $0
  call $src/as/math/Color/Color<f64>#clone
  local.set $1
  local.get $0
  local.get $1
  call $src/as/math/Color/Color<f64>#equals
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<bool>
  local.tee $2
  i32.const 608
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<bool>#toBeTruthy
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $start:src/as/math/Color.spec~anonymous|0~anonymous|2
  i32.const 848
  i32.const 6
  call $node_modules/@as-pect/assembly/assembly/internal/Test/it
 )
 (func $src/as/math/Color/Color<f64>#copy (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  local.get $1
  f64.load
  f64.store
  local.get $0
  local.get $1
  f64.load offset=8
  f64.store offset=8
  local.get $0
  local.get $1
  f64.load offset=16
  f64.store offset=16
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $src/as/math/Color.spec/checkColor (param $0 i32) (param $1 f64) (param $2 f64) (param $3 f64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $0
  f64.load
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $4
  local.get $1
  i32.const 608
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  f64.load offset=8
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $5
  local.get $2
  i32.const 608
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  f64.load offset=16
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $6
  local.get $3
  i32.const 608
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $start:src/as/math/Color.spec~anonymous|0~anonymous|3~anonymous|0
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  f64.const 0.1
  f64.const 0.2
  f64.const 0.3
  call $src/as/math/Color/Color<f64>#constructor
  local.set $0
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $src/as/math/Color/Color<f64>#constructor
  local.set $1
  local.get $1
  local.get $0
  call $src/as/math/Color/Color<f64>#copy
  call $~lib/rt/pure/__release
  local.get $1
  f64.const 0.1
  f64.const 0.2
  f64.const 0.3
  call $src/as/math/Color.spec/checkColor
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $start:src/as/math/Color.spec~anonymous|0~anonymous|3
  i32.const 1008
  i32.const 8
  call $node_modules/@as-pect/assembly/assembly/internal/Test/it
 )
 (func $src/as/math/Color/Color<f64>#multiplyScalar (param $0 i32) (param $1 f64) (result i32)
  local.get $0
  local.get $0
  f64.load
  local.get $1
  f64.mul
  f64.store
  local.get $0
  local.get $0
  f64.load offset=8
  local.get $1
  f64.mul
  f64.store offset=8
  local.get $0
  local.get $0
  f64.load offset=16
  local.get $1
  f64.mul
  f64.store offset=16
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $start:src/as/math/Color.spec~anonymous|0~anonymous|4~anonymous|0
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  f64.const 0.25
  f64.const 0
  f64.const 0.5
  call $src/as/math/Color/Color<f64>#constructor
  local.set $0
  i32.const 0
  f64.const 0.5
  f64.const 0
  f64.const 1
  call $src/as/math/Color/Color<f64>#constructor
  local.set $1
  local.get $0
  f64.const 2
  call $src/as/math/Color/Color<f64>#multiplyScalar
  call $~lib/rt/pure/__release
  local.get $0
  local.get $1
  call $src/as/math/Color/Color<f64>#equals
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<bool>
  local.tee $2
  i32.const 608
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<bool>#toBeTruthy
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $start:src/as/math/Color.spec~anonymous|0~anonymous|4
  i32.const 1136
  i32.const 10
  call $node_modules/@as-pect/assembly/assembly/internal/Test/it
 )
 (func $start:src/as/math/Color.spec~anonymous|0~anonymous|5~anonymous|0
  (local $0 i32)
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $src/as/math/Color/Color<f64>#constructor
  local.set $0
  local.get $0
  f64.const 1
  f64.const 0.2
  f64.const 0.1
  call $src/as/math/Color/Color<f64>#setRGB
  call $~lib/rt/pure/__release
  local.get $0
  f64.const 1
  f64.const 0.2
  f64.const 0.1
  call $src/as/math/Color.spec/checkColor
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $start:src/as/math/Color.spec~anonymous|0~anonymous|5
  i32.const 1280
  i32.const 12
  call $node_modules/@as-pect/assembly/assembly/internal/Test/it
 )
 (func $start:src/as/math/Color.spec~anonymous|0
  i32.const 224
  i32.const 3
  call $node_modules/@as-pect/assembly/assembly/internal/Test/describe
  i32.const 656
  i32.const 5
  call $node_modules/@as-pect/assembly/assembly/internal/Test/describe
  i32.const 816
  i32.const 7
  call $node_modules/@as-pect/assembly/assembly/internal/Test/describe
  i32.const 976
  i32.const 9
  call $node_modules/@as-pect/assembly/assembly/internal/Test/describe
  i32.const 1088
  i32.const 11
  call $node_modules/@as-pect/assembly/assembly/internal/Test/describe
  i32.const 1248
  i32.const 13
  call $node_modules/@as-pect/assembly/assembly/internal/Test/describe
 )
 (func $start:src/as/math/Color.spec
  call $start:src/as/math/Color
  i32.const 192
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
  i32.const 9
 )
 (func $~start
  global.get $~started
  if
   return
  else
   i32.const 1
   global.set $~started
  end
  call $start:src/as/math/Color.spec
 )
 (func $~lib/rt/pure/__collect
  i32.const 1
  drop
  return
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
 (func $~lib/map/Map<usize,i32>#__visit_impl (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load
  local.get $1
  call $~lib/rt/pure/__visit
  local.get $0
  i32.load offset=8
  local.set $2
  i32.const 0
  if (result i32)
   i32.const 1
  else
   i32.const 0
  end
  drop
  local.get $2
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
   block $switch$1$case$11
    block $switch$1$case$8
     block $switch$1$case$4
      block $switch$1$case$2
       local.get $0
       i32.const 8
       i32.sub
       i32.load
       br_table $switch$1$case$2 $switch$1$case$2 $switch$1$case$4 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$8 $switch$1$case$2 $switch$1$case$2 $switch$1$case$11 $switch$1$default
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
    call $~lib/map/Map<usize,i32>#__visit_impl
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
