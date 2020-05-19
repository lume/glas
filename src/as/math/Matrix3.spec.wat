(module
 (type $none_=>_none (func))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_f64_=>_i32 (func (param i32 f64) (result i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i32_i32_f64_=>_none (func (param i32 i32 f64)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_f64_f64_=>_i32 (func (param i32 f64 f64) (result i32)))
 (type $f64_i32_=>_i32 (func (param f64 i32) (result i32)))
 (type $i32_=>_f64 (func (param i32) (result f64)))
 (type $i32_i32_=>_f64 (func (param i32 i32) (result f64)))
 (type $f64_=>_f64 (func (param f64) (result f64)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_f64_i32_=>_none (func (param i32 f64 i32)))
 (type $f64_=>_none (func (param f64)))
 (type $f64_i32_=>_none (func (param f64 i32)))
 (type $i32_i32_i32_i32_i32_i32_i32_i32_i32_i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32) (result i32)))
 (type $i32_i32_i32_i32_f64_=>_i32 (func (param i32 i32 i32 i32 f64) (result i32)))
 (type $i32_i32_f64_=>_i32 (func (param i32 i32 f64) (result i32)))
 (type $i32_f64_f64_f64_=>_i32 (func (param i32 f64 f64 f64) (result i32)))
 (type $i32_f64_f64_f64_f64_=>_i32 (func (param i32 f64 f64 f64 f64) (result i32)))
 (type $i32_f64_f64_f64_f64_f64_f64_f64_f64_f64_=>_i32 (func (param i32 f64 f64 f64 f64 f64 f64 f64 f64 f64) (result i32)))
 (type $i32_f64_f64_f64_f64_f64_f64_f64_f64_f64_f64_f64_f64_f64_f64_f64_f64_=>_i32 (func (param i32 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64) (result i32)))
 (type $f64_=>_i32 (func (param f64) (result i32)))
 (type $f64_i64_=>_i32 (func (param f64 i64) (result i32)))
 (type $f64_f64_i32_i32_=>_i32 (func (param f64 f64 i32 i32) (result i32)))
 (import "env" "memory" (memory $0 1))
 (data (i32.const 16) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00")
 (data (i32.const 64) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00")
 (data (i32.const 128) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00p\00u\00r\00e\00.\00t\00s\00")
 (data (i32.const 176) "\80\00\00\00\01\00\00\00\00\00\00\00\80\00\00\00\00\00\00\00\00\00\f0?\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0?\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0?\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0?")
 (data (i32.const 320) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00M\00a\00t\00r\00i\00x\003\00")
 (data (i32.const 352) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00c\00o\00n\00s\00t\00r\00u\00c\00t\00o\00r\00")
 (data (i32.const 400) "H\00\00\00\01\00\00\00\00\00\00\00H\00\00\00\00\00\00\00\00\00\f0?\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0?\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0?")
 (data (i32.const 496) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00")
 (data (i32.const 560) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 608) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00f\006\004\00")
 (data (i32.const 640) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data (i32.const 688) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 752) "t\00\00\00\01\00\00\00\01\00\00\00t\00\00\00n\00o\00d\00e\00_\00m\00o\00d\00u\00l\00e\00s\00/\00@\00a\00s\00-\00p\00e\00c\00t\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00s\00s\00e\00r\00t\00.\00t\00s\00")
 (data (i32.const 896) "\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 912) "6\00\00\00\01\00\00\00\01\00\00\006\00\00\00s\00r\00c\00/\00a\00s\00/\00m\00a\00t\00h\00/\00M\00a\00t\00r\00i\00x\003\00.\00s\00p\00e\00c\00.\00t\00s\00")
 (data (i32.const 992) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00i\00s\00M\00a\00t\00r\00i\00x\003\00")
 (data (i32.const 1040) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00s\00e\00t\00")
 (data (i32.const 1072) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00i\00d\00e\00n\00t\00i\00t\00y\00")
 (data (i32.const 1104) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00b\00o\00o\00l\00")
 (data (i32.const 1136) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00c\00l\00o\00n\00e\00")
 (data (i32.const 1168) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00c\00o\00p\00y\00")
 (data (i32.const 1200) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00s\00e\00t\00F\00r\00o\00m\00M\00a\00t\00r\00i\00x\004\00")
 (data (i32.const 1248) ",\00\00\00\01\00\00\00\01\00\00\00,\00\00\00a\00p\00p\00l\00y\00T\00o\00B\00u\00f\00f\00e\00r\00A\00t\00t\00r\00i\00b\00u\00t\00e\00")
 (data (i32.const 1312) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00m\00u\00l\00t\00i\00p\00l\00y\00/\00p\00r\00e\00m\00u\00l\00t\00i\00p\00l\00y\00")
 (data (i32.const 1376) "H\00\00\00\01\00\00\00\00\00\00\00H\00\00\00\00\00\00\00\00\e0{@\00\00\00\00\00\fc\94@\00\00\00\00\00v\a3@\00\00\00\00\00`~@\00\00\00\00\00\c4\96@\00\00\00\00\00\1a\a5@\00\00\00\00\00@\80@\00\00\00\00\00\84\98@\00\00\00\00\00\da\a6@")
 (data (i32.const 1472) "H\00\00\00\01\00\00\00\00\00\00\00H\00\00\00\00\00\00\00\00@\8c@\00\00\00\00\00x\92@\00\00\00\00\00P\98@\00\00\00\00\00\ac\91@\00\00\00\00\00D\97@\00\00\00\00\00\bc\9e@\00\00\00\00\00\dc\95@\00\00\00\00\00\d4\9c@\00\00\00\00\00\06\a3@")
 (data (i32.const 1568) "4\00\00\00\01\00\00\00\01\00\00\004\00\00\00c\00a\00c\00h\00e\00L\00e\00n\00g\00t\00h\00 \00s\00h\00o\00u\00l\00d\00 \00b\00e\00 \00e\00v\00e\00n\00")
 (data (i32.const 1648) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1664) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1680) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00A\00r\00r\00a\00y\00<\00f\006\004\00>\00")
 (data (i32.const 1728) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00K\00e\00y\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00x\00i\00s\00t\00")
 (data (i32.const 1792) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00~\00l\00i\00b\00/\00m\00a\00p\00.\00t\00s\00")
 (data (i32.const 1840) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00m\00u\00l\00t\00i\00p\00l\00y\00M\00a\00t\00r\00i\00c\00e\00s\00")
 (data (i32.const 1888) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00m\00u\00l\00t\00i\00p\00l\00y\00S\00c\00a\00l\00a\00r\00")
 (data (i32.const 1936) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00d\00e\00t\00e\00r\00m\00i\00n\00a\00n\00t\00")
 (data (i32.const 1984) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00g\00e\00t\00I\00n\00v\00e\00r\00s\00e\00")
 (data (i32.const 2032) "6\00\00\00\01\00\00\00\01\00\00\006\00\00\00M\00a\00t\00r\00i\00x\00 \00a\00 \00i\00s\00 \00i\00d\00e\00n\00t\00i\00t\00y\00 \00m\00a\00t\00r\00i\00x\00")
 (data (i32.const 2112) "J\00\00\00\01\00\00\00\01\00\00\00J\00\00\00T\00h\00e\00 \00i\00n\00v\00e\00r\00s\00e\00 \00s\00h\00o\00u\00l\00d\00 \00n\00o\00t\00 \00b\00e\00 \00c\00a\00l\00c\00u\00l\00a\00b\00l\00e\00.\00")
 (data (i32.const 2208) "^\00\00\00\01\00\00\00\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y\00")
 (data (i32.const 2320) "n\83\f9\a2\00\00\00\00\d1W\'\fc)\15DN\99\95b\db\c0\dd4\f5\abcQ\feA\90C<:n$\b7a\c5\bb\de\ea.I\06\e0\d2MB\1c\eb\1d\fe\1c\92\d1\t\f55\82\e8>\a7)\b1&p\9c\e9\84D\bb.9\d6\919A~_\b4\8b_\84\9c\f49S\83\ff\97\f8\1f;(\f9\bd\8b\11/\ef\0f\98\05\de\cf~6m\1fm\nZf?FO\b7\t\cb\'\c7\ba\'u-\ea_\9e\f79\07={\f1\e5\eb\b1_\fbk\ea\92R\8aF0\03V\08]\8d\1f \bc\cf\f0\abk{\fca\91\e3\a9\1d6\f4\9a_\85\99e\08\1b\e6^\80\d8\ff\8d@h\a0\14W\15\06\061\'sM")
 (data (i32.const 2512) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00t\00r\00a\00n\00s\00p\00o\00s\00e\00")
 (data (i32.const 2560) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00g\00e\00t\00N\00o\00r\00m\00a\00l\00M\00a\00t\00r\00i\00x\00")
 (data (i32.const 2608) ".\00\00\00\01\00\00\00\01\00\00\00.\00\00\00C\00h\00e\00c\00k\00 \00r\00e\00s\00u\00l\00t\00i\00n\00g\00 \00M\00a\00t\00r\00i\00x\003\00")
 (data (i32.const 2672) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00t\00r\00a\00n\00s\00p\00o\00s\00e\00I\00n\00t\00o\00A\00r\00r\00a\00y\00")
 (data (i32.const 2736) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00s\00e\00t\00U\00v\00T\00r\00a\00n\00s\00f\00o\00r\00m\00")
 (data (i32.const 2784) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00s\00c\00a\00l\00e\00")
 (data (i32.const 2816) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00C\00h\00e\00c\00k\00 \00s\00c\00a\00l\00i\00n\00g\00 \00r\00e\00s\00u\00l\00t\00")
 (data (i32.const 2880) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00r\00o\00t\00a\00t\00e\00")
 (data (i32.const 2912) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00C\00h\00e\00c\00k\00 \00r\00o\00t\00a\00t\00e\00d\00 \00r\00e\00s\00u\00l\00t\00")
 (data (i32.const 2976) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00t\00r\00a\00n\00s\00l\00a\00t\00e\00")
 (data (i32.const 3024) "0\00\00\00\01\00\00\00\01\00\00\000\00\00\00C\00h\00e\00c\00k\00 \00t\00r\00a\00n\00s\00l\00a\00t\00i\00o\00n\00 \00r\00e\00s\00u\00l\00t\00")
 (data (i32.const 3088) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00e\00q\00u\00a\00l\00s\00")
 (data (i32.const 3120) ":\00\00\00\01\00\00\00\01\00\00\00:\00\00\00C\00h\00e\00c\00k\00 \00t\00h\00a\00t\00 \00a\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00q\00u\00a\00l\00 \00b\00")
 (data (i32.const 3200) ":\00\00\00\01\00\00\00\01\00\00\00:\00\00\00C\00h\00e\00c\00k\00 \00t\00h\00a\00t\00 \00b\00 \00d\00o\00e\00s\00 \00n\00o\00t\00 \00e\00q\00u\00a\00l\00 \00a\00")
 (data (i32.const 3280) "D\00\00\00\01\00\00\00\01\00\00\00D\00\00\00C\00h\00e\00c\00k\00 \00t\00h\00a\00t\00 \00a\00 \00e\00q\00u\00a\00l\00s\00 \00b\00 \00a\00f\00t\00e\00r\00 \00c\00o\00p\00y\00(\00)\00")
 (data (i32.const 3376) "D\00\00\00\01\00\00\00\01\00\00\00D\00\00\00C\00h\00e\00c\00k\00 \00t\00h\00a\00t\00 \00b\00 \00e\00q\00u\00a\00l\00s\00 \00a\00 \00a\00f\00t\00e\00r\00 \00c\00o\00p\00y\00(\00)\00")
 (data (i32.const 3472) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00f\00r\00o\00m\00A\00r\00r\00a\00y\00")
 (data (i32.const 3520) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00t\00o\00A\00r\00r\00a\00y\00")
 (data (i32.const 3552) "H\00\00\00\01\00\00\00\00\00\00\00H\00\00\00\00\00\00\00\00\00\f0?\00\00\00\00\00\00\10@\00\00\00\00\00\00\1c@\00\00\00\00\00\00\00@\00\00\00\00\00\00\14@\00\00\00\00\00\00 @\00\00\00\00\00\00\08@\00\00\00\00\00\00\18@\00\00\00\00\00\00\"@")
 (data (i32.const 3648) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 3664) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00N\00o\00 \00a\00r\00r\00a\00y\00,\00 \00n\00o\00 \00o\00f\00f\00s\00e\00t\00")
 (data (i32.const 3728) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 3744) "*\00\00\00\01\00\00\00\01\00\00\00*\00\00\00W\00i\00t\00h\00 \00a\00r\00r\00a\00y\00,\00 \00n\00o\00 \00o\00f\00f\00s\00e\00t\00")
 (data (i32.const 3808) "P\00\00\00\01\00\00\00\00\00\00\00P\00\00\00\00\00\00\00\008\8f\c0\00\00\00\00\00\00\f0?\00\00\00\00\00\00\10@\00\00\00\00\00\00\1c@\00\00\00\00\00\00\00@\00\00\00\00\00\00\14@\00\00\00\00\00\00 @\00\00\00\00\00\00\08@\00\00\00\00\00\00\18@\00\00\00\00\00\00\"@")
 (data (i32.const 3904) "\08\00\00\00\01\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\008\8f\c0")
 (data (i32.const 3936) ".\00\00\00\01\00\00\00\01\00\00\00.\00\00\00W\00i\00t\00h\00 \00a\00r\00r\00a\00y\00,\00 \00w\00i\00t\00h\00 \00o\00f\00f\00s\00e\00t\00")
 (data (i32.const 4000) "\10\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00\"\1a\00\00\00\00\00\00\"\t\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\000\t\02\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00\"\01\00\00\00\00\00\00\"A\00\00\00\00\00\00")
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "rtrace" "onalloc" (func $~lib/rt/rtrace/onalloc (param i32)))
 (import "rtrace" "onincrement" (func $~lib/rt/rtrace/onincrement (param i32)))
 (import "__aspect" "createReflectedNumber" (func $node_modules/@as-pect/assembly/assembly/internal/Reflect/createReflectedNumber (param i32 i32 i32 i32 f64) (result i32)))
 (import "__aspect" "attachStackTraceToReflectedValue" (func $node_modules/@as-pect/assembly/assembly/internal/Reflect/attachStackTraceToReflectedValue (param i32)))
 (import "__aspect" "reportActualReflectedValue" (func $node_modules/@as-pect/assembly/assembly/internal/Actual/reportActualReflectedValue (param i32)))
 (import "__aspect" "reportExpectedReflectedValue" (func $node_modules/@as-pect/assembly/assembly/internal/Expected/reportExpectedReflectedValue (param i32 i32)))
 (import "__aspect" "clearActual" (func $node_modules/@as-pect/assembly/assembly/internal/Actual/clearActual))
 (import "__aspect" "clearExpected" (func $node_modules/@as-pect/assembly/assembly/internal/Expected/clearExpected))
 (import "rtrace" "onrealloc" (func $~lib/rt/rtrace/onrealloc (param i32 i32)))
 (import "rtrace" "onfree" (func $~lib/rt/rtrace/onfree (param i32)))
 (import "__aspect" "reportTestTypeNode" (func $node_modules/@as-pect/assembly/assembly/internal/Test/test (param i32 i32)))
 (import "__aspect" "reportTodo" (func $node_modules/@as-pect/assembly/assembly/internal/Test/todo (param i32)))
 (import "__aspect" "reportExpectedTruthy" (func $node_modules/@as-pect/assembly/assembly/internal/Expected/reportExpectedTruthy (param i32)))
 (import "__aspect" "reportExpectedFalsy" (func $node_modules/@as-pect/assembly/assembly/internal/Expected/reportExpectedFalsy (param i32)))
 (import "__aspect" "createReflectedValue" (func $node_modules/@as-pect/assembly/assembly/internal/Reflect/createReflectedValue (param i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32) (result i32)))
 (import "__aspect" "pushReflectedObjectValue" (func $node_modules/@as-pect/assembly/assembly/internal/Reflect/__aspectPushReflectedObjectValue (param i32 i32)))
 (import "__aspect" "reportGroupTypeNode" (func $node_modules/@as-pect/assembly/assembly/internal/Test/describe (param i32 i32)))
 (import "rtrace" "ondecrement" (func $~lib/rt/rtrace/ondecrement (param i32)))
 (table $0 21 funcref)
 (elem (i32.const 1) $src/as/math/Quaternion/Quaternion#constructor~anonymous|0 $start:src/as/math/Matrix3.spec~anonymous|0~anonymous|0 $start:src/as/math/Matrix3.spec~anonymous|0~anonymous|1 $start:src/as/math/Matrix3.spec~anonymous|0~anonymous|2 $start:src/as/math/Matrix3.spec~anonymous|0~anonymous|3 $start:src/as/math/Matrix3.spec~anonymous|0~anonymous|4 $start:src/as/math/Matrix3.spec~anonymous|0~anonymous|5 $start:src/as/math/Matrix3.spec~anonymous|0~anonymous|6 $start:src/as/math/Matrix3.spec~anonymous|0~anonymous|7 $start:src/as/math/Matrix3.spec~anonymous|0~anonymous|8 $start:src/as/math/Matrix3.spec~anonymous|0~anonymous|9 $start:src/as/math/Matrix3.spec~anonymous|0~anonymous|10 $start:src/as/math/Matrix3.spec~anonymous|0~anonymous|11 $start:src/as/math/Matrix3.spec~anonymous|0~anonymous|12 $start:src/as/math/Matrix3.spec~anonymous|0~anonymous|13 $start:src/as/math/Matrix3.spec~anonymous|0~anonymous|14 $start:src/as/math/Matrix3.spec~anonymous|0~anonymous|15 $start:src/as/math/Matrix3.spec~anonymous|0~anonymous|16 $start:src/as/math/Matrix3.spec~anonymous|0 $start:node_modules/@as-pect/assembly/assembly/internal/noOp~anonymous|0)
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
 (global $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.FAILED_MATCH i32 (i32.const 0))
 (global $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.SUCCESSFUL_MATCH i32 (i32.const 1))
 (global $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.DEFER_MATCH i32 (i32.const 2))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/math/rempio2_y0 (mut f64) (f64.const 0))
 (global $~lib/math/rempio2_y1 (mut f64) (f64.const 0))
 (global $~lib/math/res128_hi (mut i64) (i64.const 0))
 (global $node_modules/@as-pect/assembly/assembly/internal/noOp/noOp i32 (i32.const 20))
 (global $node_modules/@as-pect/assembly/assembly/internal/log/ignoreLogs (mut i32) (i32.const 0))
 (global $node_modules/@as-pect/assembly/assembly/internal/RTrace/RTrace.enabled (mut i32) (i32.const 1))
 (global $~started (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 4000))
 (global $~lib/heap/__heap_base i32 (i32.const 4132))
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
 (func $src/as/math/Quaternion/Quaternion#constructor~anonymous|0
  nop
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
  i32.const 1
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
 (func $start:src/as/math/Matrix3
  call $start:src/as/math/Matrix4
  call $start:src/as/core/BufferAttribute
 )
 (func $src/as/math/Matrix3/Matrix3#constructor (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   i32.const 9
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 0
  i32.store
  local.get $0
  local.tee $1
  i32.const 9
  i32.const 3
  i32.const 4
  i32.const 416
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
   i32.const 512
   i32.const 576
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
 (func $src/as/math/Matrix3/Matrix3#determinant (param $0 i32) (result f64)
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
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  call $~lib/array/Array<f64>#__get
  local.set $2
  local.get $1
  i32.const 1
  call $~lib/array/Array<f64>#__get
  local.set $3
  local.get $1
  i32.const 2
  call $~lib/array/Array<f64>#__get
  local.set $4
  local.get $1
  i32.const 3
  call $~lib/array/Array<f64>#__get
  local.set $5
  local.get $1
  i32.const 4
  call $~lib/array/Array<f64>#__get
  local.set $6
  local.get $1
  i32.const 5
  call $~lib/array/Array<f64>#__get
  local.set $7
  local.get $1
  i32.const 6
  call $~lib/array/Array<f64>#__get
  local.set $8
  local.get $1
  i32.const 7
  call $~lib/array/Array<f64>#__get
  local.set $9
  local.get $1
  i32.const 8
  call $~lib/array/Array<f64>#__get
  local.set $10
  local.get $2
  local.get $6
  f64.mul
  local.get $10
  f64.mul
  local.get $2
  local.get $7
  f64.mul
  local.get $9
  f64.mul
  f64.sub
  local.get $3
  local.get $5
  f64.mul
  local.get $10
  f64.mul
  f64.sub
  local.get $3
  local.get $7
  f64.mul
  local.get $8
  f64.mul
  f64.add
  local.get $4
  local.get $5
  f64.mul
  local.get $9
  f64.mul
  f64.add
  local.get $4
  local.get $6
  f64.mul
  local.get $8
  f64.mul
  f64.sub
  local.set $11
  local.get $1
  call $~lib/rt/pure/__release
  local.get $11
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#constructor (param $0 i32) (param $1 f64) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 16
   i32.const 10
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
  i32.const 624
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
   i32.const 656
   i32.const 704
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
   i32.const 11
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
   i32.const 768
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
    i32.const 656
    i32.const 576
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
    i32.const 512
    i32.const 576
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
 (func $src/as/math/Matrix3/Matrix3#set (param $0 i32) (param $1 f64) (param $2 f64) (param $3 f64) (param $4 f64) (param $5 f64) (param $6 f64) (param $7 f64) (param $8 f64) (param $9 f64) (result i32)
  (local $10 i32)
  (local $11 i32)
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
  local.set $10
  local.get $10
  i32.const 0
  local.get $1
  call $~lib/array/Array<f64>#__set
  local.get $10
  i32.const 1
  local.get $4
  call $~lib/array/Array<f64>#__set
  local.get $10
  i32.const 2
  local.get $7
  call $~lib/array/Array<f64>#__set
  local.get $10
  i32.const 3
  local.get $2
  call $~lib/array/Array<f64>#__set
  local.get $10
  i32.const 4
  local.get $5
  call $~lib/array/Array<f64>#__set
  local.get $10
  i32.const 5
  local.get $8
  call $~lib/array/Array<f64>#__set
  local.get $10
  i32.const 6
  local.get $3
  call $~lib/array/Array<f64>#__set
  local.get $10
  i32.const 7
  local.get $6
  call $~lib/array/Array<f64>#__set
  local.get $10
  i32.const 8
  local.get $9
  call $~lib/array/Array<f64>#__set
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $11
  local.get $10
  call $~lib/rt/pure/__release
  local.get $11
 )
 (func $~lib/array/Array<f64>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $src/as/math/Matrix3.spec/arraysApproxEquals (param $0 i32) (param $1 i32) (param $2 f64) (result i32)
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
  call $~lib/array/Array<f64>#get:length
  local.get $1
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
    local.get $4
    call $~lib/array/Array<f64>#__get
    local.get $1
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
 (func $start:src/as/math/Matrix3.spec~anonymous|0~anonymous|0
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
  i32.const 0
  call $src/as/math/Matrix3/Matrix3#constructor
  local.set $0
  local.get $0
  call $src/as/math/Matrix3/Matrix3#determinant
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $1
  f64.const 1
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  i32.const 0
  call $src/as/math/Matrix3/Matrix3#constructor
  local.set $2
  local.get $2
  f64.const 0
  f64.const 1
  f64.const 2
  f64.const 3
  f64.const 4
  f64.const 5
  f64.const 6
  f64.const 7
  f64.const 8
  call $src/as/math/Matrix3/Matrix3#set
  call $~lib/rt/pure/__release
  local.get $2
  i32.load
  i32.const 0
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $3
  f64.const 0
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $2
  i32.load
  i32.const 1
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $4
  f64.const 3
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $2
  i32.load
  i32.const 2
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $5
  f64.const 6
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $2
  i32.load
  i32.const 3
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $6
  f64.const 1
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $2
  i32.load
  i32.const 4
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $7
  f64.const 4
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $2
  i32.load
  i32.const 5
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $8
  f64.const 7
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $2
  i32.load
  i32.const 6
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $9
  f64.const 2
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $2
  i32.load
  i32.const 7
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $10
  f64.const 5
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $2
  i32.load
  i32.const 8
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $11
  f64.const 8
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  local.get $2
  i32.load
  f64.const 0.0001
  call $src/as/math/Matrix3.spec/arraysApproxEquals
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 928
   i32.const 75
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
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
  local.get $10
  call $~lib/rt/pure/__release
  local.get $11
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $start:src/as/math/Matrix3.spec~anonymous|0~anonymous|1
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
  i32.const 0
  call $src/as/math/Matrix3/Matrix3#constructor
  local.set $0
  local.get $0
  call $src/as/math/Matrix3/Matrix3#determinant
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $1
  f64.const 1
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
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
  call $src/as/math/Matrix3/Matrix3#set
  call $~lib/rt/pure/__release
  local.get $0
  i32.load
  i32.const 0
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $2
  f64.const 0
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 1
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $3
  f64.const 3
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 2
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $4
  f64.const 6
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 3
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $5
  f64.const 1
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 4
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $6
  f64.const 4
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 5
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $7
  f64.const 7
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 6
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $8
  f64.const 2
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 7
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $9
  f64.const 5
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 8
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $10
  f64.const 8
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
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
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $10
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<bool>#constructor (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 5
   i32.const 12
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
  i32.const 1120
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
 (func $node_modules/@as-pect/assembly/assembly/internal/Expected/Expected.reportFalsy (param $0 i32)
  local.get $0
  call $node_modules/@as-pect/assembly/assembly/internal/Expected/reportExpectedFalsy
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<bool>#toBeFalsy (param $0 i32) (param $1 i32)
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
  call $node_modules/@as-pect/assembly/assembly/internal/Expected/Expected.reportFalsy
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
  i32.eq
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
 (func $src/as/math/Matrix3/Matrix3#identity (param $0 i32) (result i32)
  local.get $0
  f64.const 1
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 1
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 1
  call $src/as/math/Matrix3/Matrix3#set
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $start:src/as/math/Matrix3.spec~anonymous|0~anonymous|2
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
  call $src/as/math/Matrix3/Matrix3#constructor
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
  call $src/as/math/Matrix3/Matrix3#set
  call $~lib/rt/pure/__release
  local.get $0
  i32.load
  i32.const 0
  call $~lib/array/Array<f64>#__get
  f64.const 0
  f64.eq
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<bool>
  local.tee $1
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<bool>#toBeTruthy
  local.get $0
  i32.load
  i32.const 1
  call $~lib/array/Array<f64>#__get
  f64.const 3
  f64.eq
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<bool>
  local.tee $2
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<bool>#toBeTruthy
  local.get $0
  i32.load
  i32.const 2
  call $~lib/array/Array<f64>#__get
  f64.const 6
  f64.eq
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<bool>
  local.tee $3
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<bool>#toBeTruthy
  local.get $0
  i32.load
  i32.const 3
  call $~lib/array/Array<f64>#__get
  f64.const 1
  f64.eq
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<bool>
  local.tee $4
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<bool>#toBeTruthy
  local.get $0
  i32.load
  i32.const 4
  call $~lib/array/Array<f64>#__get
  f64.const 4
  f64.eq
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<bool>
  local.tee $5
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<bool>#toBeTruthy
  local.get $0
  i32.load
  i32.const 5
  call $~lib/array/Array<f64>#__get
  f64.const 7
  f64.eq
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<bool>
  local.tee $6
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<bool>#toBeTruthy
  local.get $0
  i32.load
  i32.const 6
  call $~lib/array/Array<f64>#__get
  f64.const 2
  f64.eq
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<bool>
  local.tee $7
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<bool>#toBeTruthy
  local.get $0
  i32.load
  i32.const 7
  call $~lib/array/Array<f64>#__get
  f64.const 5
  f64.eq
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<bool>
  local.tee $8
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<bool>#toBeTruthy
  local.get $0
  i32.load
  i32.const 8
  call $~lib/array/Array<f64>#__get
  f64.const 8
  f64.eq
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<bool>
  local.tee $9
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<bool>#toBeTruthy
  i32.const 0
  call $src/as/math/Matrix3/Matrix3#constructor
  local.set $10
  local.get $10
  i32.load
  local.get $0
  i32.load
  f64.const 0.0001
  call $src/as/math/Matrix3.spec/arraysApproxEquals
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<bool>
  local.tee $11
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<bool>#toBeFalsy
  local.get $0
  call $src/as/math/Matrix3/Matrix3#identity
  call $~lib/rt/pure/__release
  local.get $10
  i32.load
  local.get $0
  i32.load
  f64.const 0.0001
  call $src/as/math/Matrix3.spec/arraysApproxEquals
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<bool>
  local.tee $12
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<bool>#toBeTruthy
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
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $11
  call $~lib/rt/pure/__release
  local.get $12
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $10
  call $~lib/rt/pure/__release
 )
 (func $src/as/math/Matrix3/Matrix3#fromArray (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  i32.const 0
  local.set $3
  loop $for-loop|0
   local.get $3
   i32.const 9
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
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $src/as/math/Matrix3/Matrix3#clone (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  call $src/as/math/Matrix3/Matrix3#constructor
  local.set $1
  local.get $1
  local.get $0
  i32.load
  i32.const 0
  call $src/as/math/Matrix3/Matrix3#fromArray
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $start:src/as/math/Matrix3.spec~anonymous|0~anonymous|3
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  call $src/as/math/Matrix3/Matrix3#constructor
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
  call $src/as/math/Matrix3/Matrix3#set
  call $~lib/rt/pure/__release
  local.get $0
  call $src/as/math/Matrix3/Matrix3#clone
  local.set $1
  local.get $0
  i32.load
  local.get $1
  i32.load
  f64.const 0.0001
  call $src/as/math/Matrix3.spec/arraysApproxEquals
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<bool>
  local.tee $2
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<bool>#toBeTruthy
  local.get $0
  i32.load
  i32.const 0
  f64.const 2
  call $~lib/array/Array<f64>#__set
  local.get $0
  i32.load
  local.get $1
  i32.load
  f64.const 0.0001
  call $src/as/math/Matrix3.spec/arraysApproxEquals
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<bool>
  local.tee $3
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<bool>#toBeFalsy
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $src/as/math/Matrix3/Matrix3#copy (param $0 i32) (param $1 i32) (result i32)
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
 (func $start:src/as/math/Matrix3.spec~anonymous|0~anonymous|4
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  call $src/as/math/Matrix3/Matrix3#constructor
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
  call $src/as/math/Matrix3/Matrix3#set
  call $~lib/rt/pure/__release
  i32.const 0
  call $src/as/math/Matrix3/Matrix3#constructor
  local.set $1
  local.get $1
  local.get $0
  call $src/as/math/Matrix3/Matrix3#copy
  call $~lib/rt/pure/__release
  local.get $0
  i32.load
  local.get $1
  i32.load
  f64.const 0.0001
  call $src/as/math/Matrix3.spec/arraysApproxEquals
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<bool>
  local.tee $2
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<bool>#toBeTruthy
  local.get $0
  i32.load
  i32.const 0
  f64.const 2
  call $~lib/array/Array<f64>#__set
  local.get $0
  i32.load
  local.get $1
  i32.load
  f64.const 0.0001
  call $src/as/math/Matrix3.spec/arraysApproxEquals
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<bool>
  local.tee $3
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<bool>#toBeFalsy
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $src/as/math/Matrix3/Matrix3#multiplyMatrices (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  (local $24 i32)
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
  i32.const 3
  call $~lib/array/Array<f64>#__get
  local.set $7
  local.get $3
  i32.const 6
  call $~lib/array/Array<f64>#__get
  local.set $8
  local.get $3
  i32.const 1
  call $~lib/array/Array<f64>#__get
  local.set $9
  local.get $3
  i32.const 4
  call $~lib/array/Array<f64>#__get
  local.set $10
  local.get $3
  i32.const 7
  call $~lib/array/Array<f64>#__get
  local.set $11
  local.get $3
  i32.const 2
  call $~lib/array/Array<f64>#__get
  local.set $12
  local.get $3
  i32.const 5
  call $~lib/array/Array<f64>#__get
  local.set $13
  local.get $3
  i32.const 8
  call $~lib/array/Array<f64>#__get
  local.set $14
  local.get $4
  i32.const 0
  call $~lib/array/Array<f64>#__get
  local.set $15
  local.get $4
  i32.const 3
  call $~lib/array/Array<f64>#__get
  local.set $16
  local.get $4
  i32.const 6
  call $~lib/array/Array<f64>#__get
  local.set $17
  local.get $4
  i32.const 1
  call $~lib/array/Array<f64>#__get
  local.set $18
  local.get $4
  i32.const 4
  call $~lib/array/Array<f64>#__get
  local.set $19
  local.get $4
  i32.const 7
  call $~lib/array/Array<f64>#__get
  local.set $20
  local.get $4
  i32.const 2
  call $~lib/array/Array<f64>#__get
  local.set $21
  local.get $4
  i32.const 5
  call $~lib/array/Array<f64>#__get
  local.set $22
  local.get $4
  i32.const 8
  call $~lib/array/Array<f64>#__get
  local.set $23
  local.get $5
  i32.const 0
  local.get $6
  local.get $15
  f64.mul
  local.get $7
  local.get $18
  f64.mul
  f64.add
  local.get $8
  local.get $21
  f64.mul
  f64.add
  call $~lib/array/Array<f64>#__set
  local.get $5
  i32.const 3
  local.get $6
  local.get $16
  f64.mul
  local.get $7
  local.get $19
  f64.mul
  f64.add
  local.get $8
  local.get $22
  f64.mul
  f64.add
  call $~lib/array/Array<f64>#__set
  local.get $5
  i32.const 6
  local.get $6
  local.get $17
  f64.mul
  local.get $7
  local.get $20
  f64.mul
  f64.add
  local.get $8
  local.get $23
  f64.mul
  f64.add
  call $~lib/array/Array<f64>#__set
  local.get $5
  i32.const 1
  local.get $9
  local.get $15
  f64.mul
  local.get $10
  local.get $18
  f64.mul
  f64.add
  local.get $11
  local.get $21
  f64.mul
  f64.add
  call $~lib/array/Array<f64>#__set
  local.get $5
  i32.const 4
  local.get $9
  local.get $16
  f64.mul
  local.get $10
  local.get $19
  f64.mul
  f64.add
  local.get $11
  local.get $22
  f64.mul
  f64.add
  call $~lib/array/Array<f64>#__set
  local.get $5
  i32.const 7
  local.get $9
  local.get $17
  f64.mul
  local.get $10
  local.get $20
  f64.mul
  f64.add
  local.get $11
  local.get $23
  f64.mul
  f64.add
  call $~lib/array/Array<f64>#__set
  local.get $5
  i32.const 2
  local.get $12
  local.get $15
  f64.mul
  local.get $13
  local.get $18
  f64.mul
  f64.add
  local.get $14
  local.get $21
  f64.mul
  f64.add
  call $~lib/array/Array<f64>#__set
  local.get $5
  i32.const 5
  local.get $12
  local.get $16
  f64.mul
  local.get $13
  local.get $19
  f64.mul
  f64.add
  local.get $14
  local.get $22
  f64.mul
  f64.add
  call $~lib/array/Array<f64>#__set
  local.get $5
  i32.const 8
  local.get $12
  local.get $17
  f64.mul
  local.get $13
  local.get $20
  f64.mul
  f64.add
  local.get $14
  local.get $23
  f64.mul
  f64.add
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
  local.get $5
  call $~lib/rt/pure/__release
  local.get $24
 )
 (func $src/as/math/Matrix3/Matrix3#multiply (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  local.get $0
  local.get $1
  call $src/as/math/Matrix3/Matrix3#multiplyMatrices
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<~lib/array/Array<f64>>#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.eqz
  if
   i32.const 8
   i32.const 13
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
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  local.tee $2
  local.get $1
  local.tee $3
  local.get $2
  i32.load offset=4
  local.tee $4
  i32.ne
  if
   local.get $3
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $4
   call $~lib/rt/pure/__release
  end
  local.get $3
  i32.store offset=4
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<~lib/array/Array<f64>> (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 0
  local.get $0
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<~lib/array/Array<f64>>#constructor
  local.set $1
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $~lib/array/Array<usize>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<usize>#__uget (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Reflect/pairSeen (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  local.get $2
  i32.eq
  local.get $1
  local.get $3
  i32.eq
  i32.and
  local.get $0
  local.get $3
  i32.eq
  local.get $1
  local.get $2
  i32.eq
  i32.and
  i32.or
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.equals<f64> (param $0 f64) (param $1 f64) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  local.get $1
  f64.eq
  if
   global.get $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.SUCCESSFUL_MATCH
   local.set $4
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $4
   return
  end
  i32.const 1
  drop
  local.get $0
  local.get $0
  f64.ne
  local.get $1
  local.get $1
  f64.ne
  i32.and
  if
   global.get $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.SUCCESSFUL_MATCH
   local.set $4
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $4
   return
  end
  i32.const 0
  drop
  i32.const 0
  if (result i32)
   i32.const 0
   i32.eqz
  else
   i32.const 0
  end
  drop
  global.get $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.FAILED_MATCH
  local.set $4
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  return
 )
 (func $~lib/array/Array<usize>#push (param $0 i32) (param $1 i32) (result i32)
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
  call $~lib/array/ensureSize
  i32.const 0
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
  local.get $3
  i32.store offset=12
  local.get $3
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Reflect/referencesEqual<~lib/array/Array<f64>> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
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
  local.set $4
  local.get $1
  local.set $5
  local.get $3
  call $~lib/array/Array<usize>#get:length
  local.set $6
  local.get $6
  i32.const 1
  i32.and
  i32.const 0
  i32.eq
  i32.const 1584
  call $node_modules/@as-pect/assembly/assembly/internal/assert/assert
  i32.const 0
  drop
  i32.const 0
  local.set $7
  loop $for-loop|0
   local.get $7
   local.get $6
   i32.lt_s
   local.set $8
   local.get $8
   if
    local.get $4
    local.get $5
    local.get $3
    local.get $7
    call $~lib/array/Array<usize>#__uget
    local.get $3
    local.get $7
    i32.const 1
    i32.add
    call $~lib/array/Array<usize>#__uget
    call $node_modules/@as-pect/assembly/assembly/internal/Reflect/pairSeen
    if
     global.get $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.SUCCESSFUL_MATCH
     local.set $9
     local.get $0
     call $~lib/rt/pure/__release
     local.get $1
     call $~lib/rt/pure/__release
     local.get $2
     call $~lib/rt/pure/__release
     local.get $3
     call $~lib/rt/pure/__release
     local.get $9
     return
    end
    local.get $7
    i32.const 2
    i32.add
    local.set $7
    br $for-loop|0
   end
  end
  local.get $2
  call $~lib/array/Array<usize>#get:length
  local.set $7
  i32.const 0
  local.set $8
  loop $for-loop|1
   local.get $8
   local.get $7
   i32.lt_s
   local.set $9
   local.get $9
   if
    local.get $4
    local.get $5
    local.get $2
    local.get $8
    call $~lib/array/Array<usize>#__uget
    local.get $2
    local.get $8
    i32.const 1
    i32.add
    call $~lib/array/Array<usize>#__uget
    call $node_modules/@as-pect/assembly/assembly/internal/Reflect/pairSeen
    if
     global.get $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.DEFER_MATCH
     local.set $10
     local.get $0
     call $~lib/rt/pure/__release
     local.get $1
     call $~lib/rt/pure/__release
     local.get $2
     call $~lib/rt/pure/__release
     local.get $3
     call $~lib/rt/pure/__release
     local.get $10
     return
    end
    local.get $8
    i32.const 2
    i32.add
    local.set $8
    br $for-loop|1
   end
  end
  i32.const 0
  drop
  i32.const 1
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 1
  drop
  local.get $0
  call $~lib/array/Array<f64>#get:length
  local.set $8
  local.get $1
  call $~lib/array/Array<f64>#get:length
  local.set $9
  local.get $8
  local.get $9
  i32.ne
  if
   global.get $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.FAILED_MATCH
   local.set $10
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $10
   return
  end
  i32.const 0
  local.set $10
  loop $for-loop|2
   local.get $10
   local.get $8
   i32.lt_s
   local.set $11
   local.get $11
   if
    local.get $0
    local.get $10
    call $~lib/array/Array<f64>#__uget
    local.get $1
    local.get $10
    call $~lib/array/Array<f64>#__uget
    local.get $2
    local.get $3
    call $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.equals<f64>
    local.set $12
    local.get $12
    global.get $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.FAILED_MATCH
    i32.eq
    if
     global.get $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.FAILED_MATCH
     local.set $13
     local.get $0
     call $~lib/rt/pure/__release
     local.get $1
     call $~lib/rt/pure/__release
     local.get $2
     call $~lib/rt/pure/__release
     local.get $3
     call $~lib/rt/pure/__release
     local.get $13
     return
    end
    local.get $10
    i32.const 1
    i32.add
    local.set $10
    br $for-loop|2
   end
  end
  local.get $3
  local.get $4
  call $~lib/array/Array<usize>#push
  drop
  local.get $3
  local.get $5
  call $~lib/array/Array<usize>#push
  drop
  global.get $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.SUCCESSFUL_MATCH
  local.set $10
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $10
  return
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.equals<~lib/array/Array<f64>> (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
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
  local.get $1
  i32.eq
  if
   global.get $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.SUCCESSFUL_MATCH
   local.set $4
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $4
   return
  end
  i32.const 0
  drop
  i32.const 1
  drop
  local.get $0
  i32.const 0
  i32.eq
  local.get $1
  i32.const 0
  i32.eq
  i32.xor
  if
   global.get $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.FAILED_MATCH
   local.set $4
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $4
   return
  end
  i32.const 1
  if (result i32)
   i32.const 0
   i32.eqz
  else
   i32.const 0
  end
  drop
  i32.const 0
  drop
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $node_modules/@as-pect/assembly/assembly/internal/Reflect/referencesEqual<~lib/array/Array<f64>>
  local.set $4
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  return
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.equals<~lib/array/Array<f64>>@varargs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      i32.const 2
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 0
    i32.const 2
    i32.const 14
    i32.const 1664
    call $~lib/rt/__allocArray
    call $~lib/rt/pure/__retain
    local.tee $5
    local.set $2
   end
   i32.const 0
   i32.const 2
   i32.const 14
   i32.const 1680
   call $~lib/rt/__allocArray
   call $~lib/rt/pure/__retain
   local.tee $6
   local.set $3
  end
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.equals<~lib/array/Array<f64>>
  local.set $4
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/util/hash/hash32 (param $0 i32) (result i32)
  (local $1 i32)
  i32.const -2128831035
  local.set $1
  local.get $1
  local.get $0
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $1
  local.get $1
  local.get $0
  i32.const 8
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $1
  local.get $1
  local.get $0
  i32.const 16
  i32.shr_u
  i32.const 255
  i32.and
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $1
  local.get $1
  local.get $0
  i32.const 24
  i32.shr_u
  i32.xor
  i32.const 16777619
  i32.mul
  local.set $1
  local.get $1
 )
 (func $~lib/map/Map<usize,i32>#find (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
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
    i32.const 1
    i32.and
    i32.eqz
    if (result i32)
     local.get $3
     i32.load
     local.get $1
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $3
     return
    end
    local.get $3
    i32.load offset=8
    i32.const 1
    i32.const -1
    i32.xor
    i32.and
    local.set $3
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $~lib/map/Map<usize,i32>#has (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<usize>|inlined.0 (result i32)
   local.get $1
   local.set $2
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 4
   i32.const 1
   i32.eq
   drop
   i32.const 4
   i32.const 2
   i32.eq
   drop
   i32.const 4
   i32.const 4
   i32.eq
   drop
   local.get $2
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<usize>|inlined.0
  end
  call $~lib/map/Map<usize,i32>#find
  i32.const 0
  i32.ne
 )
 (func $~lib/map/Map<usize,i32>#get (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  block $~lib/util/hash/HASH<usize>|inlined.1 (result i32)
   local.get $1
   local.set $2
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 4
   i32.const 1
   i32.eq
   drop
   i32.const 4
   i32.const 2
   i32.eq
   drop
   i32.const 4
   i32.const 4
   i32.eq
   drop
   local.get $2
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<usize>|inlined.1
  end
  call $~lib/map/Map<usize,i32>#find
  local.set $3
  local.get $3
  i32.eqz
  if
   i32.const 1744
   i32.const 1808
   i32.const 111
   i32.const 17
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load offset=4
 )
 (func $~lib/map/Map<usize,i32>#rehash (param $0 i32) (param $1 i32)
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
  local.get $1
  i32.const 1
  i32.add
  local.set $2
  i32.const 0
  local.get $2
  i32.const 4
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $3
  local.get $2
  i32.const 8
  i32.mul
  i32.const 3
  i32.div_s
  local.set $4
  i32.const 0
  local.get $4
  i32.const 12
  i32.mul
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $5
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
     local.get $11
     local.get $10
     i32.load
     i32.store
     local.get $11
     local.get $10
     i32.load offset=4
     i32.store offset=4
     block $~lib/util/hash/HASH<usize>|inlined.3 (result i32)
      local.get $10
      i32.load
      local.set $12
      i32.const 0
      drop
      i32.const 0
      drop
      i32.const 0
      drop
      i32.const 4
      i32.const 1
      i32.eq
      drop
      i32.const 4
      i32.const 2
      i32.eq
      drop
      i32.const 4
      i32.const 4
      i32.eq
      drop
      local.get $12
      call $~lib/util/hash/hash32
      br $~lib/util/hash/HASH<usize>|inlined.3
     end
     local.get $1
     i32.and
     local.set $12
     local.get $3
     local.get $12
     i32.const 4
     i32.mul
     i32.add
     local.set $13
     local.get $11
     local.get $13
     i32.load
     i32.store offset=8
     local.get $13
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
  local.tee $11
  local.get $3
  local.tee $12
  local.get $11
  i32.load
  local.tee $9
  i32.ne
  if
   local.get $12
   call $~lib/rt/pure/__retain
   local.set $12
   local.get $9
   call $~lib/rt/pure/__release
  end
  local.get $12
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.tee $13
  local.get $5
  local.tee $9
  local.get $13
  i32.load offset=8
  local.tee $11
  i32.ne
  if
   local.get $9
   call $~lib/rt/pure/__retain
   local.set $9
   local.get $11
   call $~lib/rt/pure/__release
  end
  local.get $9
  i32.store offset=8
  local.get $0
  local.get $4
  i32.store offset=12
  local.get $0
  local.get $0
  i32.load offset=20
  i32.store offset=16
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
 )
 (func $~lib/map/Map<usize,i32>#set (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/util/hash/HASH<usize>|inlined.2 (result i32)
   local.get $1
   local.set $3
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 0
   drop
   i32.const 4
   i32.const 1
   i32.eq
   drop
   i32.const 4
   i32.const 2
   i32.eq
   drop
   i32.const 4
   i32.const 4
   i32.eq
   drop
   local.get $3
   call $~lib/util/hash/hash32
   br $~lib/util/hash/HASH<usize>|inlined.2
  end
  local.set $4
  local.get $0
  local.get $1
  local.get $4
  call $~lib/map/Map<usize,i32>#find
  local.set $5
  local.get $5
  if
   i32.const 0
   drop
   local.get $5
   local.get $2
   i32.store offset=4
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
    call $~lib/map/Map<usize,i32>#rehash
   end
   local.get $0
   i32.load offset=8
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $3
   local.get $0
   local.get $0
   i32.load offset=16
   local.tee $6
   i32.const 1
   i32.add
   i32.store offset=16
   local.get $6
   i32.const 12
   i32.mul
   i32.add
   local.set $5
   local.get $5
   local.get $1
   i32.store
   local.get $5
   local.get $2
   i32.store offset=4
   local.get $0
   local.get $0
   i32.load offset=20
   i32.const 1
   i32.add
   i32.store offset=20
   local.get $0
   i32.load
   local.get $4
   local.get $0
   i32.load offset=4
   i32.and
   i32.const 4
   i32.mul
   i32.add
   local.set $6
   local.get $5
   local.get $6
   i32.load
   i32.store offset=8
   local.get $6
   local.get $5
   i32.store
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.toReflectedValue<~lib/array/Array<f64>> (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
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
  i32.const 1
  drop
  local.get $0
  i32.const 0
  i32.eq
  if
   i32.const 1
   i32.const 0
   i32.const 0
   i32.const 0
   i32.const 0
   i32.const 0
   i32.const 4
   i32.const 1
   i32.const 4
   i32.const 1696
   i32.const 0
   i32.const 0
   i32.const 1
   call $node_modules/@as-pect/assembly/assembly/internal/Reflect/createReflectedValue
   local.set $2
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   return
  end
  i32.const 0
  i32.eqz
  drop
  local.get $1
  local.get $0
  call $~lib/map/Map<usize,i32>#has
  if
   local.get $1
   local.get $0
   call $~lib/map/Map<usize,i32>#get
   local.set $2
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   return
  end
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 1
  drop
  local.get $0
  call $~lib/array/Array<f64>#get:length
  local.set $2
  i32.const 0
  i32.const 0
  i32.const 0
  i32.const 0
  local.get $0
  i32.const 0
  local.get $2
  i32.const 10
  i32.const 4
  i32.const 1696
  i32.const 0
  i32.const 1
  i32.const 1
  call $node_modules/@as-pect/assembly/assembly/internal/Reflect/createReflectedValue
  local.set $3
  local.get $1
  local.get $0
  local.get $3
  call $~lib/map/Map<usize,i32>#set
  call $~lib/rt/pure/__release
  i32.const 0
  local.set $4
  loop $for-loop|0
   local.get $4
   local.get $2
   i32.lt_s
   local.set $5
   local.get $5
   if
    local.get $0
    local.get $4
    call $~lib/array/Array<f64>#__uget
    local.set $6
    local.get $6
    local.get $1
    call $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.toReflectedValue<f64>
    local.set $7
    local.get $3
    local.get $7
    call $node_modules/@as-pect/assembly/assembly/internal/Reflect/__aspectPushReflectedObjectValue
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $for-loop|0
   end
  end
  local.get $3
  local.set $4
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
  return
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.toReflectedValue<~lib/array/Array<f64>>@varargs (param $0 i32) (param $1 i32) (result i32)
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
  call $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.toReflectedValue<~lib/array/Array<f64>>
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Actual/Actual.report<~lib/array/Array<f64>> (param $0 i32)
  (local $1 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $0
  i32.const 1
  global.set $~argumentsLength
  i32.const 0
  call $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.toReflectedValue<~lib/array/Array<f64>>@varargs
  local.set $1
  local.get $1
  call $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.attachStackTrace
  local.get $1
  call $node_modules/@as-pect/assembly/assembly/internal/Actual/reportActualReflectedValue
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Expected/Expected.report<~lib/array/Array<f64>> (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $0
  i32.const 1
  global.set $~argumentsLength
  i32.const 0
  call $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.toReflectedValue<~lib/array/Array<f64>>@varargs
  local.set $2
  local.get $2
  call $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.attachStackTrace
  local.get $2
  local.get $1
  call $node_modules/@as-pect/assembly/assembly/internal/Expected/reportExpectedReflectedValue
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<~lib/array/Array<f64>>#toStrictEqual (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  global.get $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.FAILED_MATCH
  local.set $3
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 0
  i32.const 2
  global.set $~argumentsLength
  i32.const 0
  call $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.equals<~lib/array/Array<f64>>@varargs
  local.set $3
  local.get $3
  global.get $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.SUCCESSFUL_MATCH
  i32.eq
  local.set $4
  local.get $0
  i32.load offset=4
  call $node_modules/@as-pect/assembly/assembly/internal/Actual/Actual.report<~lib/array/Array<f64>>
  local.get $1
  i32.const 0
  call $node_modules/@as-pect/assembly/assembly/internal/Expected/Expected.report<~lib/array/Array<f64>>
  local.get $4
  local.get $0
  i32.load
  i32.xor
  local.get $2
  call $node_modules/@as-pect/assembly/assembly/internal/assert/assert
  call $node_modules/@as-pect/assembly/assembly/internal/Actual/Actual.clear
  call $node_modules/@as-pect/assembly/assembly/internal/Expected/Expected.clear
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $src/as/math/Matrix3/Matrix3#premultiply (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  local.get $1
  local.get $0
  call $src/as/math/Matrix3/Matrix3#multiplyMatrices
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $start:src/as/math/Matrix3.spec~anonymous|0~anonymous|5
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 0
  call $src/as/math/Matrix3/Matrix3#constructor
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
  call $src/as/math/Matrix3/Matrix3#set
  call $~lib/rt/pure/__release
  i32.const 0
  call $src/as/math/Matrix3/Matrix3#constructor
  local.set $1
  local.get $1
  f64.const 29
  f64.const 31
  f64.const 37
  f64.const 41
  f64.const 43
  f64.const 47
  f64.const 53
  f64.const 59
  f64.const 61
  call $src/as/math/Matrix3/Matrix3#set
  call $~lib/rt/pure/__release
  i32.const 9
  i32.const 3
  i32.const 4
  i32.const 1392
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $4
  i32.const 9
  i32.const 3
  i32.const 4
  i32.const 1488
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $0
  local.get $1
  call $src/as/math/Matrix3/Matrix3#multiply
  call $~lib/rt/pure/__release
  local.get $0
  i32.load
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<~lib/array/Array<f64>>
  local.tee $2
  local.get $4
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<~lib/array/Array<f64>>#toStrictEqual
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
  call $src/as/math/Matrix3/Matrix3#set
  call $~lib/rt/pure/__release
  local.get $0
  local.get $1
  call $src/as/math/Matrix3/Matrix3#premultiply
  call $~lib/rt/pure/__release
  local.get $0
  i32.load
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<~lib/array/Array<f64>>
  local.tee $3
  local.get $5
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<~lib/array/Array<f64>>#toStrictEqual
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
 )
 (func $start:src/as/math/Matrix3.spec~anonymous|0~anonymous|6
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
  i32.const 0
  call $src/as/math/Matrix3/Matrix3#constructor
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
  call $src/as/math/Matrix3/Matrix3#set
  call $~lib/rt/pure/__release
  i32.const 0
  call $src/as/math/Matrix3/Matrix3#constructor
  local.set $1
  local.get $1
  f64.const 29
  f64.const 31
  f64.const 37
  f64.const 41
  f64.const 43
  f64.const 47
  f64.const 53
  f64.const 59
  f64.const 61
  call $src/as/math/Matrix3/Matrix3#set
  call $~lib/rt/pure/__release
  i32.const 0
  call $src/as/math/Matrix3/Matrix3#constructor
  local.set $2
  local.get $2
  local.get $0
  local.get $1
  call $src/as/math/Matrix3/Matrix3#multiplyMatrices
  call $~lib/rt/pure/__release
  local.get $2
  i32.load
  i32.const 0
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $3
  f64.const 446
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $2
  i32.load
  i32.const 1
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $4
  f64.const 1343
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $2
  i32.load
  i32.const 2
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $5
  f64.const 2491
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $2
  i32.load
  i32.const 3
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $6
  f64.const 486
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $2
  i32.load
  i32.const 4
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $7
  f64.const 1457
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $2
  i32.load
  i32.const 5
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $8
  f64.const 2701
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $2
  i32.load
  i32.const 6
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $9
  f64.const 520
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $2
  i32.load
  i32.const 7
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $10
  f64.const 1569
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $2
  i32.load
  i32.const 8
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $11
  f64.const 2925
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $3
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
  local.get $10
  call $~lib/rt/pure/__release
  local.get $11
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $src/as/math/Matrix3/Matrix3#multiplyScalar (param $0 i32) (param $1 f64) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $2
  i32.const 0
  local.get $2
  i32.const 0
  call $~lib/array/Array<f64>#__get
  local.get $1
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 3
  local.get $2
  i32.const 3
  call $~lib/array/Array<f64>#__get
  local.get $1
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 6
  local.get $2
  i32.const 6
  call $~lib/array/Array<f64>#__get
  local.get $1
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 1
  local.get $2
  i32.const 1
  call $~lib/array/Array<f64>#__get
  local.get $1
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 4
  local.get $2
  i32.const 4
  call $~lib/array/Array<f64>#__get
  local.get $1
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 7
  local.get $2
  i32.const 7
  call $~lib/array/Array<f64>#__get
  local.get $1
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 2
  local.get $2
  i32.const 2
  call $~lib/array/Array<f64>#__get
  local.get $1
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 5
  local.get $2
  i32.const 5
  call $~lib/array/Array<f64>#__get
  local.get $1
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 8
  local.get $2
  i32.const 8
  call $~lib/array/Array<f64>#__get
  local.get $1
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $start:src/as/math/Matrix3.spec~anonymous|0~anonymous|7
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
  i32.const 0
  call $src/as/math/Matrix3/Matrix3#constructor
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
  call $src/as/math/Matrix3/Matrix3#set
  call $~lib/rt/pure/__release
  local.get $0
  i32.load
  i32.const 0
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $1
  f64.const 0
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 1
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $2
  f64.const 3
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 2
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $3
  f64.const 6
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 3
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $4
  f64.const 1
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 4
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $5
  f64.const 4
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 5
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $6
  f64.const 7
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 6
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $7
  f64.const 2
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 7
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $8
  f64.const 5
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 8
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $9
  f64.const 8
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  f64.const 2
  call $src/as/math/Matrix3/Matrix3#multiplyScalar
  call $~lib/rt/pure/__release
  local.get $0
  i32.load
  i32.const 0
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $10
  f64.const 0
  f64.const 2
  f64.mul
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 1
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $11
  f64.const 3
  f64.const 2
  f64.mul
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 2
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $12
  f64.const 6
  f64.const 2
  f64.mul
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 3
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $13
  f64.const 1
  f64.const 2
  f64.mul
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 4
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $14
  f64.const 4
  f64.const 2
  f64.mul
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 5
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $15
  f64.const 7
  f64.const 2
  f64.mul
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 6
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $16
  f64.const 2
  f64.const 2
  f64.mul
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 7
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $17
  f64.const 5
  f64.const 2
  f64.mul
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 8
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $18
  f64.const 8
  f64.const 2
  f64.mul
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
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
  local.get $7
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
  local.get $17
  call $~lib/rt/pure/__release
  local.get $18
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $start:src/as/math/Matrix3.spec~anonymous|0~anonymous|8
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 0
  call $src/as/math/Matrix3/Matrix3#constructor
  local.set $0
  local.get $0
  call $src/as/math/Matrix3/Matrix3#determinant
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $1
  f64.const 1
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 0
  f64.const 2
  call $~lib/array/Array<f64>#__set
  local.get $0
  call $src/as/math/Matrix3/Matrix3#determinant
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $2
  f64.const 2
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 0
  f64.const 0
  call $~lib/array/Array<f64>#__set
  local.get $0
  call $src/as/math/Matrix3/Matrix3#determinant
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $3
  f64.const 0
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  f64.const 2
  f64.const 3
  f64.const 4
  f64.const 5
  f64.const 13
  f64.const 7
  f64.const 8
  f64.const 9
  f64.const 11
  call $src/as/math/Matrix3/Matrix3#set
  call $~lib/rt/pure/__release
  local.get $0
  call $src/as/math/Matrix3/Matrix3#determinant
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $4
  f64.const -73
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $src/as/math/Matrix3/Matrix3#getInverse (param $0 i32) (param $1 i32) (result i32)
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
  (local $17 i32)
  (local $18 f64)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.load
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $2
  i32.const 0
  call $~lib/array/Array<f64>#__get
  local.set $4
  local.get $2
  i32.const 1
  call $~lib/array/Array<f64>#__get
  local.set $5
  local.get $2
  i32.const 2
  call $~lib/array/Array<f64>#__get
  local.set $6
  local.get $2
  i32.const 3
  call $~lib/array/Array<f64>#__get
  local.set $7
  local.get $2
  i32.const 4
  call $~lib/array/Array<f64>#__get
  local.set $8
  local.get $2
  i32.const 5
  call $~lib/array/Array<f64>#__get
  local.set $9
  local.get $2
  i32.const 6
  call $~lib/array/Array<f64>#__get
  local.set $10
  local.get $2
  i32.const 7
  call $~lib/array/Array<f64>#__get
  local.set $11
  local.get $2
  i32.const 8
  call $~lib/array/Array<f64>#__get
  local.set $12
  local.get $12
  local.get $8
  f64.mul
  local.get $9
  local.get $11
  f64.mul
  f64.sub
  local.set $13
  local.get $9
  local.get $10
  f64.mul
  local.get $12
  local.get $7
  f64.mul
  f64.sub
  local.set $14
  local.get $11
  local.get $7
  f64.mul
  local.get $8
  local.get $10
  f64.mul
  f64.sub
  local.set $15
  local.get $4
  local.get $13
  f64.mul
  local.get $5
  local.get $14
  f64.mul
  f64.add
  local.get $6
  local.get $15
  f64.mul
  f64.add
  local.set $16
  local.get $16
  f64.const 0
  f64.eq
  if
   local.get $0
   call $src/as/math/Matrix3/Matrix3#identity
   call $~lib/rt/pure/__release
   i32.const 0
   local.set $17
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $17
   return
  end
  i32.const 1
  f64.convert_i32_s
  local.get $16
  f64.div
  local.set $18
  local.get $3
  i32.const 0
  local.get $13
  local.get $18
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $3
  i32.const 1
  local.get $6
  local.get $11
  f64.mul
  local.get $12
  local.get $5
  f64.mul
  f64.sub
  local.get $18
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $3
  i32.const 2
  local.get $9
  local.get $5
  f64.mul
  local.get $6
  local.get $8
  f64.mul
  f64.sub
  local.get $18
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $3
  i32.const 3
  local.get $14
  local.get $18
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $3
  i32.const 4
  local.get $12
  local.get $4
  f64.mul
  local.get $6
  local.get $10
  f64.mul
  f64.sub
  local.get $18
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $3
  i32.const 5
  local.get $6
  local.get $7
  f64.mul
  local.get $9
  local.get $4
  f64.mul
  f64.sub
  local.get $18
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $3
  i32.const 6
  local.get $15
  local.get $18
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $3
  i32.const 7
  local.get $5
  local.get $10
  f64.mul
  local.get $11
  local.get $4
  f64.mul
  f64.sub
  local.get $18
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $3
  i32.const 8
  local.get $8
  local.get $4
  f64.mul
  local.get $5
  local.get $7
  f64.mul
  f64.sub
  local.get $18
  f64.mul
  call $~lib/array/Array<f64>#__set
  i32.const 1
  local.set $17
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $17
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Expected/Expected.report<bool> (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 1
  global.set $~argumentsLength
  i32.const 0
  call $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.toReflectedValue<bool>@varargs
  local.set $2
  local.get $2
  call $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.attachStackTrace
  local.get $2
  local.get $1
  call $node_modules/@as-pect/assembly/assembly/internal/Expected/reportExpectedReflectedValue
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<bool>#toBe (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  i32.load8_u offset=4
  local.set $3
  local.get $3
  i32.const 0
  i32.ne
  local.get $1
  i32.const 0
  i32.ne
  i32.eq
  local.set $4
  local.get $0
  i32.load
  local.set $5
  local.get $3
  call $node_modules/@as-pect/assembly/assembly/internal/Actual/Actual.report<bool>
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
  call $node_modules/@as-pect/assembly/assembly/internal/Expected/Expected.report<bool>
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
   i32.const 512
   i32.const 576
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
   i32.const 2224
   i32.const 576
   i32.const 108
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
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
  i32.const 2320
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
 (func $~lib/array/Array<src/as/math/Matrix4/Matrix4>#get:length (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $src/as/math/Matrix3/Matrix3#setFromMatrix4 (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.load
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  local.get $2
  i32.const 0
  call $~lib/array/Array<f64>#__get
  local.get $2
  i32.const 4
  call $~lib/array/Array<f64>#__get
  local.get $2
  i32.const 8
  call $~lib/array/Array<f64>#__get
  local.get $2
  i32.const 1
  call $~lib/array/Array<f64>#__get
  local.get $2
  i32.const 5
  call $~lib/array/Array<f64>#__get
  local.get $2
  i32.const 9
  call $~lib/array/Array<f64>#__get
  local.get $2
  i32.const 2
  call $~lib/array/Array<f64>#__get
  local.get $2
  i32.const 6
  call $~lib/array/Array<f64>#__get
  local.get $2
  i32.const 10
  call $~lib/array/Array<f64>#__get
  call $src/as/math/Matrix3/Matrix3#set
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $src/as/math/Matrix3.spec/toMatrix4 (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  local.set $1
  local.get $1
  i32.load
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
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
  i32.const 4
  local.get $3
  i32.const 3
  call $~lib/array/Array<f64>#__get
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 5
  local.get $3
  i32.const 4
  call $~lib/array/Array<f64>#__get
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 6
  local.get $3
  i32.const 5
  call $~lib/array/Array<f64>#__get
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 8
  local.get $3
  i32.const 6
  call $~lib/array/Array<f64>#__get
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 9
  local.get $3
  i32.const 7
  call $~lib/array/Array<f64>#__get
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 10
  local.get $3
  i32.const 8
  call $~lib/array/Array<f64>#__get
  call $~lib/array/Array<f64>#__set
  local.get $1
  local.set $4
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
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
 (func $start:src/as/math/Matrix3.spec~anonymous|0~anonymous|9
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
  (local $22 f64)
  (local $23 i32)
  i32.const 0
  call $src/as/math/Matrix3/Matrix3#constructor
  local.set $0
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  local.set $1
  i32.const 0
  call $src/as/math/Matrix3/Matrix3#constructor
  local.set $2
  i32.const 0
  call $src/as/math/Matrix3/Matrix3#constructor
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
  call $src/as/math/Matrix3/Matrix3#set
  call $~lib/rt/pure/__release
  i32.const 0
  call $src/as/math/Matrix3/Matrix3#constructor
  local.set $4
  local.get $4
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $src/as/math/Matrix3/Matrix3#set
  call $~lib/rt/pure/__release
  local.get $3
  local.get $2
  call $src/as/math/Matrix3/Matrix3#getInverse
  drop
  local.get $2
  i32.load
  local.get $0
  i32.load
  f64.const 0.0001
  call $src/as/math/Matrix3.spec/arraysApproxEquals
  i32.eqz
  if
   i32.const 2048
   i32.const 928
   i32.const 256
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $4
  call $src/as/math/Matrix3/Matrix3#getInverse
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<bool>
  local.tee $5
  i32.const 0
  i32.const 2128
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<bool>#toBe
  local.get $3
  i32.load
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<~lib/array/Array<f64>>
  local.tee $6
  local.get $0
  i32.load
  i32.const 912
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<~lib/array/Array<f64>>#toStrictEqual
  i32.const 8
  i32.const 2
  i32.const 15
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $7
  local.get $7
  i32.load offset=4
  local.set $8
  local.get $8
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  i32.store
  local.get $8
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  i32.store offset=4
  local.get $8
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  i32.store offset=8
  local.get $8
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  i32.store offset=12
  local.get $8
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  i32.store offset=16
  local.get $8
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  i32.store offset=20
  local.get $8
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  i32.store offset=24
  local.get $8
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  i32.store offset=28
  local.get $7
  local.set $9
  local.get $9
  i32.const 0
  call $~lib/array/Array<src/as/math/Matrix4/Matrix4>#__get
  local.tee $8
  f64.const 0.3
  call $src/as/math/Matrix4/Matrix4#makeRotationX
  call $~lib/rt/pure/__release
  local.get $9
  i32.const 1
  call $~lib/array/Array<src/as/math/Matrix4/Matrix4>#__get
  local.tee $7
  f64.const -0.3
  call $src/as/math/Matrix4/Matrix4#makeRotationX
  call $~lib/rt/pure/__release
  local.get $9
  i32.const 2
  call $~lib/array/Array<src/as/math/Matrix4/Matrix4>#__get
  local.tee $10
  f64.const 0.3
  call $src/as/math/Matrix4/Matrix4#makeRotationY
  call $~lib/rt/pure/__release
  local.get $9
  i32.const 3
  call $~lib/array/Array<src/as/math/Matrix4/Matrix4>#__get
  local.tee $11
  f64.const -0.3
  call $src/as/math/Matrix4/Matrix4#makeRotationY
  call $~lib/rt/pure/__release
  local.get $9
  i32.const 4
  call $~lib/array/Array<src/as/math/Matrix4/Matrix4>#__get
  local.tee $12
  f64.const 0.3
  call $src/as/math/Matrix4/Matrix4#makeRotationZ
  call $~lib/rt/pure/__release
  local.get $9
  i32.const 5
  call $~lib/array/Array<src/as/math/Matrix4/Matrix4>#__get
  local.tee $13
  f64.const -0.3
  call $src/as/math/Matrix4/Matrix4#makeRotationZ
  call $~lib/rt/pure/__release
  local.get $9
  i32.const 6
  call $~lib/array/Array<src/as/math/Matrix4/Matrix4>#__get
  local.tee $14
  f64.const 1
  f64.const 2
  f64.const 3
  call $src/as/math/Matrix4/Matrix4#makeScale
  call $~lib/rt/pure/__release
  local.get $9
  i32.const 7
  call $~lib/array/Array<src/as/math/Matrix4/Matrix4>#__get
  local.tee $15
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
  i32.const 0
  local.set $16
  local.get $9
  call $~lib/array/Array<src/as/math/Matrix4/Matrix4>#get:length
  local.set $17
  loop $for-loop|0
   local.get $16
   local.get $17
   i32.lt_s
   local.set $18
   local.get $18
   if
    local.get $9
    local.get $16
    call $~lib/array/Array<src/as/math/Matrix4/Matrix4>#__get
    local.set $19
    local.get $2
    local.get $19
    call $src/as/math/Matrix3/Matrix3#setFromMatrix4
    call $~lib/rt/pure/__release
    local.get $3
    local.get $2
    call $src/as/math/Matrix3/Matrix3#getInverse
    drop
    local.get $3
    call $~lib/rt/pure/__retain
    local.set $20
    local.get $20
    call $src/as/math/Matrix3.spec/toMatrix4
    local.set $21
    local.get $2
    call $src/as/math/Matrix3/Matrix3#determinant
    local.get $20
    call $src/as/math/Matrix3/Matrix3#determinant
    f64.mul
    f64.const 1
    f64.sub
    local.set $22
    local.get $22
    f64.abs
    f64.const 0.0001
    f64.lt
    i32.eqz
    if
     i32.const 0
     i32.const 928
     i32.const 291
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $19
    call $src/as/math/Matrix4/Matrix4#determinant
    local.get $21
    call $src/as/math/Matrix4/Matrix4#determinant
    f64.mul
    f64.const 1
    f64.sub
    local.set $22
    local.get $22
    f64.abs
    f64.const 0.0001
    f64.lt
    i32.eqz
    if
     i32.const 0
     i32.const 928
     i32.const 292
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    i32.const 0
    call $src/as/math/Matrix4/Matrix4#constructor
    local.set $23
    local.get $23
    local.get $19
    local.get $21
    call $src/as/math/Matrix4/Matrix4#multiplyMatrices
    call $~lib/rt/pure/__release
    local.get $23
    call $src/as/math/Matrix4/Matrix4#determinant
    f64.const 1
    f64.sub
    local.set $22
    local.get $22
    f64.abs
    f64.const 0.0001
    f64.lt
    i32.eqz
    if
     i32.const 0
     i32.const 928
     i32.const 296
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $23
    i32.load
    local.get $1
    i32.load
    f64.const 0.0001
    call $src/as/math/Matrix3.spec/arraysApproxEquals
    i32.eqz
    if
     i32.const 0
     i32.const 928
     i32.const 297
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $16
    i32.const 1
    i32.add
    local.set $16
    br $for-loop|0
   end
  end
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $7
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
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $19
  call $~lib/rt/pure/__release
  local.get $20
  call $~lib/rt/pure/__release
  local.get $21
  call $~lib/rt/pure/__release
  local.get $23
  call $~lib/rt/pure/__release
 )
 (func $src/as/math/Matrix3/Matrix3#transpose (param $0 i32) (result i32)
  (local $1 f64)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $2
  i32.const 1
  call $~lib/array/Array<f64>#__get
  local.set $1
  local.get $2
  i32.const 1
  local.get $2
  i32.const 3
  call $~lib/array/Array<f64>#__get
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 3
  local.get $1
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 2
  call $~lib/array/Array<f64>#__get
  local.set $1
  local.get $2
  i32.const 2
  local.get $2
  i32.const 6
  call $~lib/array/Array<f64>#__get
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 6
  local.get $1
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 5
  call $~lib/array/Array<f64>#__get
  local.set $1
  local.get $2
  i32.const 5
  local.get $2
  i32.const 7
  call $~lib/array/Array<f64>#__get
  call $~lib/array/Array<f64>#__set
  local.get $2
  i32.const 7
  local.get $1
  call $~lib/array/Array<f64>#__set
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $start:src/as/math/Matrix3.spec~anonymous|0~anonymous|10
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 0
  call $src/as/math/Matrix3/Matrix3#constructor
  local.set $0
  local.get $0
  call $src/as/math/Matrix3/Matrix3#clone
  local.tee $1
  call $src/as/math/Matrix3/Matrix3#transpose
  local.set $2
  local.get $0
  i32.load
  local.get $2
  i32.load
  f64.const 0.0001
  call $src/as/math/Matrix3.spec/arraysApproxEquals
  i32.eqz
  if
   i32.const 0
   i32.const 928
   i32.const 304
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  call $src/as/math/Matrix3/Matrix3#constructor
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  local.set $2
  local.get $2
  f64.const 0
  f64.const 1
  f64.const 2
  f64.const 3
  f64.const 4
  f64.const 5
  f64.const 6
  f64.const 7
  f64.const 8
  call $src/as/math/Matrix3/Matrix3#set
  call $~lib/rt/pure/__release
  local.get $2
  call $src/as/math/Matrix3/Matrix3#clone
  local.tee $3
  call $src/as/math/Matrix3/Matrix3#transpose
  local.set $4
  local.get $2
  i32.load
  local.get $4
  i32.load
  f64.const 0.0001
  call $src/as/math/Matrix3.spec/arraysApproxEquals
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 928
   i32.const 309
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  call $src/as/math/Matrix3/Matrix3#transpose
  call $~lib/rt/pure/__release
  local.get $2
  i32.load
  local.get $4
  i32.load
  f64.const 0.0001
  call $src/as/math/Matrix3.spec/arraysApproxEquals
  i32.eqz
  if
   i32.const 0
   i32.const 928
   i32.const 311
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $src/as/math/Matrix3/Matrix3#getNormalMatrix (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  local.get $1
  call $src/as/math/Matrix3/Matrix3#setFromMatrix4
  local.tee $2
  local.get $0
  call $src/as/math/Matrix3/Matrix3#getInverse
  if
   local.get $0
   call $src/as/math/Matrix3/Matrix3#transpose
   call $~lib/rt/pure/__release
   i32.const 1
   local.set $3
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
   return
  end
  i32.const 0
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $start:src/as/math/Matrix3.spec~anonymous|0~anonymous|11
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  call $src/as/math/Matrix3/Matrix3#constructor
  local.set $0
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  local.set $1
  local.get $1
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
  f64.const 57
  call $src/as/math/Matrix4/Matrix4#set
  call $~lib/rt/pure/__release
  i32.const 0
  call $src/as/math/Matrix3/Matrix3#constructor
  local.set $2
  local.get $2
  f64.const -1.2857142857142856
  f64.const 0.7142857142857143
  f64.const 0.2857142857142857
  f64.const 0.7428571428571429
  f64.const -0.7571428571428571
  f64.const 0.15714285714285714
  f64.const -0.19999999999999998
  f64.const 0.3
  f64.const -0.09999999999999999
  call $src/as/math/Matrix3/Matrix3#set
  call $~lib/rt/pure/__release
  local.get $0
  local.get $1
  call $src/as/math/Matrix3/Matrix3#getNormalMatrix
  drop
  local.get $0
  i32.load
  local.get $2
  i32.load
  f64.const 0.0001
  call $src/as/math/Matrix3.spec/arraysApproxEquals
  i32.eqz
  if
   i32.const 2624
   i32.const 928
   i32.const 332
   i32.const 3
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
 (func $src/as/math/Matrix3/Matrix3#scale (param $0 i32) (param $1 f64) (param $2 f64) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $3
  i32.const 0
  local.get $3
  i32.const 0
  call $~lib/array/Array<f64>#__get
  local.get $1
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $3
  i32.const 3
  local.get $3
  i32.const 3
  call $~lib/array/Array<f64>#__get
  local.get $1
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $3
  i32.const 6
  local.get $3
  i32.const 6
  call $~lib/array/Array<f64>#__get
  local.get $1
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $3
  i32.const 1
  local.get $3
  i32.const 1
  call $~lib/array/Array<f64>#__get
  local.get $2
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $3
  i32.const 4
  local.get $3
  i32.const 4
  call $~lib/array/Array<f64>#__get
  local.get $2
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $3
  i32.const 7
  local.get $3
  i32.const 7
  call $~lib/array/Array<f64>#__get
  local.get $2
  f64.mul
  call $~lib/array/Array<f64>#__set
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $start:src/as/math/Matrix3.spec~anonymous|0~anonymous|12
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  call $src/as/math/Matrix3/Matrix3#constructor
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
  call $src/as/math/Matrix3/Matrix3#set
  call $~lib/rt/pure/__release
  i32.const 0
  call $src/as/math/Matrix3/Matrix3#constructor
  local.set $1
  local.get $1
  f64.const 0.25
  f64.const 0.5
  f64.const 0.75
  f64.const 1
  f64.const 1.25
  f64.const 1.5
  f64.const 7
  f64.const 8
  f64.const 9
  call $src/as/math/Matrix3/Matrix3#set
  call $~lib/rt/pure/__release
  local.get $0
  f64.const 0.25
  f64.const 0.25
  call $src/as/math/Matrix3/Matrix3#scale
  call $~lib/rt/pure/__release
  local.get $0
  i32.load
  local.get $1
  i32.load
  f64.const 0.0001
  call $src/as/math/Matrix3.spec/arraysApproxEquals
  i32.eqz
  if
   i32.const 2832
   i32.const 928
   i32.const 393
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $src/as/math/Matrix3/Matrix3#rotate (param $0 i32) (param $1 f64) (result i32)
  (local $2 f64)
  (local $3 f64)
  (local $4 i32)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  (local $8 f64)
  (local $9 f64)
  (local $10 f64)
  (local $11 i32)
  local.get $1
  call $~lib/math/NativeMath.cos
  local.set $2
  local.get $1
  call $~lib/math/NativeMath.sin
  local.set $3
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $4
  i32.const 0
  call $~lib/array/Array<f64>#__get
  local.set $5
  local.get $4
  i32.const 3
  call $~lib/array/Array<f64>#__get
  local.set $6
  local.get $4
  i32.const 6
  call $~lib/array/Array<f64>#__get
  local.set $7
  local.get $4
  i32.const 1
  call $~lib/array/Array<f64>#__get
  local.set $8
  local.get $4
  i32.const 4
  call $~lib/array/Array<f64>#__get
  local.set $9
  local.get $4
  i32.const 7
  call $~lib/array/Array<f64>#__get
  local.set $10
  local.get $4
  i32.const 0
  local.get $2
  local.get $5
  f64.mul
  local.get $3
  local.get $8
  f64.mul
  f64.add
  call $~lib/array/Array<f64>#__set
  local.get $4
  i32.const 3
  local.get $2
  local.get $6
  f64.mul
  local.get $3
  local.get $9
  f64.mul
  f64.add
  call $~lib/array/Array<f64>#__set
  local.get $4
  i32.const 6
  local.get $2
  local.get $7
  f64.mul
  local.get $3
  local.get $10
  f64.mul
  f64.add
  call $~lib/array/Array<f64>#__set
  local.get $4
  i32.const 1
  local.get $3
  f64.neg
  local.get $5
  f64.mul
  local.get $2
  local.get $8
  f64.mul
  f64.add
  call $~lib/array/Array<f64>#__set
  local.get $4
  i32.const 4
  local.get $3
  f64.neg
  local.get $6
  f64.mul
  local.get $2
  local.get $9
  f64.mul
  f64.add
  call $~lib/array/Array<f64>#__set
  local.get $4
  i32.const 7
  local.get $3
  f64.neg
  local.get $7
  f64.mul
  local.get $2
  local.get $10
  f64.mul
  f64.add
  call $~lib/array/Array<f64>#__set
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $11
  local.get $4
  call $~lib/rt/pure/__release
  local.get $11
 )
 (func $start:src/as/math/Matrix3.spec~anonymous|0~anonymous|13
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  call $src/as/math/Matrix3/Matrix3#constructor
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
  call $src/as/math/Matrix3/Matrix3#set
  call $~lib/rt/pure/__release
  i32.const 0
  call $src/as/math/Matrix3/Matrix3#constructor
  local.set $1
  local.get $1
  f64.const 3.5355339059327373
  f64.const 4.949747468305833
  f64.const 6.363961030678928
  f64.const 2.121320343559643
  f64.const 2.121320343559643
  f64.const 2.1213203435596433
  f64.const 7
  f64.const 8
  f64.const 9
  call $src/as/math/Matrix3/Matrix3#set
  call $~lib/rt/pure/__release
  local.get $0
  global.get $~lib/math/NativeMath.PI
  f64.const 4
  f64.div
  call $src/as/math/Matrix3/Matrix3#rotate
  call $~lib/rt/pure/__release
  local.get $0
  i32.load
  local.get $1
  i32.load
  f64.const 0.0001
  call $src/as/math/Matrix3.spec/arraysApproxEquals
  i32.eqz
  if
   i32.const 2928
   i32.const 928
   i32.const 413
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $src/as/math/Matrix3/Matrix3#translate (param $0 i32) (param $1 f64) (param $2 f64) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $3
  i32.const 0
  local.get $3
  i32.const 0
  call $~lib/array/Array<f64>#__get
  local.get $1
  local.get $3
  i32.const 2
  call $~lib/array/Array<f64>#__get
  f64.mul
  f64.add
  call $~lib/array/Array<f64>#__set
  local.get $3
  i32.const 3
  local.get $3
  i32.const 3
  call $~lib/array/Array<f64>#__get
  local.get $1
  local.get $3
  i32.const 5
  call $~lib/array/Array<f64>#__get
  f64.mul
  f64.add
  call $~lib/array/Array<f64>#__set
  local.get $3
  i32.const 6
  local.get $3
  i32.const 6
  call $~lib/array/Array<f64>#__get
  local.get $1
  local.get $3
  i32.const 8
  call $~lib/array/Array<f64>#__get
  f64.mul
  f64.add
  call $~lib/array/Array<f64>#__set
  local.get $3
  i32.const 1
  local.get $3
  i32.const 1
  call $~lib/array/Array<f64>#__get
  local.get $2
  local.get $3
  i32.const 2
  call $~lib/array/Array<f64>#__get
  f64.mul
  f64.add
  call $~lib/array/Array<f64>#__set
  local.get $3
  i32.const 4
  local.get $3
  i32.const 4
  call $~lib/array/Array<f64>#__get
  local.get $2
  local.get $3
  i32.const 5
  call $~lib/array/Array<f64>#__get
  f64.mul
  f64.add
  call $~lib/array/Array<f64>#__set
  local.get $3
  i32.const 7
  local.get $3
  i32.const 7
  call $~lib/array/Array<f64>#__get
  local.get $2
  local.get $3
  i32.const 8
  call $~lib/array/Array<f64>#__get
  f64.mul
  f64.add
  call $~lib/array/Array<f64>#__set
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $start:src/as/math/Matrix3.spec~anonymous|0~anonymous|14
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  call $src/as/math/Matrix3/Matrix3#constructor
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
  call $src/as/math/Matrix3/Matrix3#set
  call $~lib/rt/pure/__release
  i32.const 0
  call $src/as/math/Matrix3/Matrix3#constructor
  local.set $1
  local.get $1
  f64.const 22
  f64.const 26
  f64.const 30
  f64.const 53
  f64.const 61
  f64.const 69
  f64.const 7
  f64.const 8
  f64.const 9
  call $src/as/math/Matrix3/Matrix3#set
  call $~lib/rt/pure/__release
  local.get $0
  f64.const 3
  f64.const 7
  call $src/as/math/Matrix3/Matrix3#translate
  call $~lib/rt/pure/__release
  local.get $0
  i32.load
  local.get $1
  i32.load
  f64.const 0.0001
  call $src/as/math/Matrix3.spec/arraysApproxEquals
  i32.eqz
  if
   i32.const 3040
   i32.const 928
   i32.const 423
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $src/as/math/Matrix3/Matrix3#equals (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
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
  i32.const 0
  local.set $4
  loop $for-loop|0
   local.get $4
   i32.const 9
   i32.lt_s
   local.set $5
   local.get $5
   if
    local.get $2
    local.get $4
    call $~lib/array/Array<f64>#__get
    local.get $3
    local.get $4
    call $~lib/array/Array<f64>#__get
    f64.ne
    if
     i32.const 0
     local.set $6
     local.get $1
     call $~lib/rt/pure/__release
     local.get $2
     call $~lib/rt/pure/__release
     local.get $3
     call $~lib/rt/pure/__release
     local.get $6
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
  local.set $5
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
 )
 (func $start:src/as/math/Matrix3.spec~anonymous|0~anonymous|15
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  call $src/as/math/Matrix3/Matrix3#constructor
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
  call $src/as/math/Matrix3/Matrix3#set
  call $~lib/rt/pure/__release
  i32.const 0
  call $src/as/math/Matrix3/Matrix3#constructor
  local.set $1
  local.get $1
  f64.const 0
  f64.const -1
  f64.const 2
  f64.const 3
  f64.const 4
  f64.const 5
  f64.const 6
  f64.const 7
  f64.const 8
  call $src/as/math/Matrix3/Matrix3#set
  call $~lib/rt/pure/__release
  local.get $0
  local.get $1
  call $src/as/math/Matrix3/Matrix3#equals
  i32.eqz
  i32.eqz
  if
   i32.const 3136
   i32.const 928
   i32.const 432
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  call $src/as/math/Matrix3/Matrix3#equals
  i32.eqz
  i32.eqz
  if
   i32.const 3216
   i32.const 928
   i32.const 433
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $src/as/math/Matrix3/Matrix3#copy
  call $~lib/rt/pure/__release
  local.get $0
  local.get $1
  call $src/as/math/Matrix3/Matrix3#equals
  i32.eqz
  if
   i32.const 3296
   i32.const 928
   i32.const 436
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  call $src/as/math/Matrix3/Matrix3#equals
  i32.eqz
  if
   i32.const 3392
   i32.const 928
   i32.const 437
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $src/as/math/Matrix3/Matrix3#toArray (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  local.get $2
  local.get $3
  i32.const 0
  call $~lib/array/Array<f64>#__get
  call $~lib/array/Array<f64>#__set
  local.get $1
  local.get $2
  i32.const 1
  i32.add
  local.get $3
  i32.const 1
  call $~lib/array/Array<f64>#__get
  call $~lib/array/Array<f64>#__set
  local.get $1
  local.get $2
  i32.const 2
  i32.add
  local.get $3
  i32.const 2
  call $~lib/array/Array<f64>#__get
  call $~lib/array/Array<f64>#__set
  local.get $1
  local.get $2
  i32.const 3
  i32.add
  local.get $3
  i32.const 3
  call $~lib/array/Array<f64>#__get
  call $~lib/array/Array<f64>#__set
  local.get $1
  local.get $2
  i32.const 4
  i32.add
  local.get $3
  i32.const 4
  call $~lib/array/Array<f64>#__get
  call $~lib/array/Array<f64>#__set
  local.get $1
  local.get $2
  i32.const 5
  i32.add
  local.get $3
  i32.const 5
  call $~lib/array/Array<f64>#__get
  call $~lib/array/Array<f64>#__set
  local.get $1
  local.get $2
  i32.const 6
  i32.add
  local.get $3
  i32.const 6
  call $~lib/array/Array<f64>#__get
  call $~lib/array/Array<f64>#__set
  local.get $1
  local.get $2
  i32.const 7
  i32.add
  local.get $3
  i32.const 7
  call $~lib/array/Array<f64>#__get
  call $~lib/array/Array<f64>#__set
  local.get $1
  local.get $2
  i32.const 8
  i32.add
  local.get $3
  i32.const 8
  call $~lib/array/Array<f64>#__get
  call $~lib/array/Array<f64>#__set
  local.get $1
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $src/as/math/Matrix3/Matrix3#toArray@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 0
    i32.const 3
    i32.const 4
    i32.const 3664
    call $~lib/rt/__allocArray
    call $~lib/rt/pure/__retain
    local.tee $4
    local.set $1
   end
   i32.const 0
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $src/as/math/Matrix3/Matrix3#toArray
  local.set $3
  local.get $4
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $start:src/as/math/Matrix3.spec~anonymous|0~anonymous|16
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 0
  call $src/as/math/Matrix3/Matrix3#constructor
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
  call $src/as/math/Matrix3/Matrix3#set
  call $~lib/rt/pure/__release
  i32.const 9
  i32.const 3
  i32.const 4
  i32.const 3568
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  i32.const 0
  i32.const 0
  global.set $~argumentsLength
  i32.const 0
  call $src/as/math/Matrix3/Matrix3#toArray@varargs
  local.set $2
  local.get $2
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<~lib/array/Array<f64>>
  local.tee $1
  local.get $3
  i32.const 3680
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<~lib/array/Array<f64>>#toStrictEqual
  i32.const 0
  i32.const 3
  i32.const 4
  i32.const 3744
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  local.set $2
  local.get $0
  local.get $2
  i32.const 0
  call $src/as/math/Matrix3/Matrix3#toArray
  call $~lib/rt/pure/__release
  local.get $2
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<~lib/array/Array<f64>>
  local.tee $4
  local.get $3
  i32.const 3760
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<~lib/array/Array<f64>>#toStrictEqual
  i32.const 10
  i32.const 3
  i32.const 4
  i32.const 3824
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $7
  i32.const 1
  i32.const 3
  i32.const 4
  i32.const 3920
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $6
  local.get $2
  call $~lib/rt/pure/__release
  local.get $6
  local.set $2
  local.get $0
  local.get $2
  i32.const 1
  call $src/as/math/Matrix3/Matrix3#toArray
  call $~lib/rt/pure/__release
  local.get $2
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<~lib/array/Array<f64>>
  local.tee $6
  local.get $7
  i32.const 3952
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<~lib/array/Array<f64>>#toStrictEqual
  local.get $2
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
 )
 (func $start:src/as/math/Matrix3.spec~anonymous|0
  i32.const 368
  i32.const 2
  call $node_modules/@as-pect/assembly/assembly/internal/Test/test
  i32.const 1008
  call $node_modules/@as-pect/assembly/assembly/internal/Test/todo
  i32.const 1056
  i32.const 3
  call $node_modules/@as-pect/assembly/assembly/internal/Test/test
  i32.const 1088
  i32.const 4
  call $node_modules/@as-pect/assembly/assembly/internal/Test/test
  i32.const 1152
  i32.const 5
  call $node_modules/@as-pect/assembly/assembly/internal/Test/test
  i32.const 1184
  i32.const 6
  call $node_modules/@as-pect/assembly/assembly/internal/Test/test
  i32.const 1216
  call $node_modules/@as-pect/assembly/assembly/internal/Test/todo
  i32.const 1264
  call $node_modules/@as-pect/assembly/assembly/internal/Test/todo
  i32.const 1328
  i32.const 7
  call $node_modules/@as-pect/assembly/assembly/internal/Test/test
  i32.const 1856
  i32.const 8
  call $node_modules/@as-pect/assembly/assembly/internal/Test/test
  i32.const 1904
  i32.const 9
  call $node_modules/@as-pect/assembly/assembly/internal/Test/test
  i32.const 1952
  i32.const 10
  call $node_modules/@as-pect/assembly/assembly/internal/Test/test
  i32.const 2000
  i32.const 11
  call $node_modules/@as-pect/assembly/assembly/internal/Test/test
  i32.const 2528
  i32.const 12
  call $node_modules/@as-pect/assembly/assembly/internal/Test/test
  i32.const 2576
  i32.const 13
  call $node_modules/@as-pect/assembly/assembly/internal/Test/test
  i32.const 2688
  call $node_modules/@as-pect/assembly/assembly/internal/Test/todo
  i32.const 2752
  call $node_modules/@as-pect/assembly/assembly/internal/Test/todo
  i32.const 2800
  i32.const 14
  call $node_modules/@as-pect/assembly/assembly/internal/Test/test
  i32.const 2896
  i32.const 15
  call $node_modules/@as-pect/assembly/assembly/internal/Test/test
  i32.const 2992
  i32.const 16
  call $node_modules/@as-pect/assembly/assembly/internal/Test/test
  i32.const 3104
  i32.const 17
  call $node_modules/@as-pect/assembly/assembly/internal/Test/test
  i32.const 3488
  call $node_modules/@as-pect/assembly/assembly/internal/Test/todo
  i32.const 3536
  i32.const 18
  call $node_modules/@as-pect/assembly/assembly/internal/Test/test
 )
 (func $start:src/as/math/Matrix3.spec
  call $start:src/as/math/Matrix3
  i32.const 336
  i32.const 19
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
  i32.const 14
 )
 (func $~start
  global.get $~started
  if
   return
  else
   i32.const 1
   global.set $~started
  end
  call $start:src/as/math/Matrix3.spec
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
 (func $~lib/rt/__visit_members (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $switch$1$default
   block $switch$1$case$17
    block $switch$1$case$16
     block $switch$1$case$15
      block $switch$1$case$13
       block $switch$1$case$7
        block $switch$1$case$6
         block $switch$1$case$4
          block $switch$1$case$2
           local.get $0
           i32.const 8
           i32.sub
           i32.load
           br_table $switch$1$case$2 $switch$1$case$2 $switch$1$case$4 $switch$1$case$4 $switch$1$case$6 $switch$1$case$7 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$4 $switch$1$case$2 $switch$1$case$13 $switch$1$case$2 $switch$1$case$15 $switch$1$case$16 $switch$1$case$17 $switch$1$default
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
      call $~lib/map/Map<usize,i32>#__visit_impl
      return
     end
     local.get $0
     i32.load offset=4
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
    call $~lib/array/Array<usize>#__visit_impl
    return
   end
   local.get $0
   local.get $1
   call $~lib/array/Array<src/as/math/Matrix4/Matrix4>#__visit_impl
   return
  end
  unreachable
 )
)
