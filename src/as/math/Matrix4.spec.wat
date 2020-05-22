(module
 (type $none_=>_none (func))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_=>_f64 (func (param i32) (result f64)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $f64_=>_f64 (func (param f64) (result f64)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i32_f64_=>_i32 (func (param i32 f64) (result i32)))
 (type $i32_f64_f64_f64_=>_i32 (func (param i32 f64 f64 f64) (result i32)))
 (type $i32_i32_f64_=>_none (func (param i32 i32 f64)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_f64_=>_i32 (func (param i32 i32 f64) (result i32)))
 (type $f64_i32_=>_i32 (func (param f64 i32) (result i32)))
 (type $i32_i32_=>_f64 (func (param i32 i32) (result f64)))
 (type $f64_f64_=>_f64 (func (param f64 f64) (result f64)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_f64_i32_=>_none (func (param i32 f64 i32)))
 (type $i32_f64_i32_i32_=>_none (func (param i32 f64 i32 i32)))
 (type $f64_=>_none (func (param f64)))
 (type $f64_i32_=>_none (func (param f64 i32)))
 (type $i32_i32_i32_i32_f64_=>_i32 (func (param i32 i32 i32 i32 f64) (result i32)))
 (type $i32_f64_f64_f64_i32_=>_i32 (func (param i32 f64 f64 f64 i32) (result i32)))
 (type $i32_f64_f64_f64_f64_=>_i32 (func (param i32 f64 f64 f64 f64) (result i32)))
 (type $i32_f64_f64_f64_f64_f64_f64_=>_i32 (func (param i32 f64 f64 f64 f64 f64 f64) (result i32)))
 (type $i32_f64_f64_f64_f64_f64_f64_f64_f64_f64_f64_f64_f64_f64_f64_f64_f64_=>_i32 (func (param i32 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64) (result i32)))
 (type $f64_=>_i32 (func (param f64) (result i32)))
 (type $f64_i64_=>_i32 (func (param f64 i64) (result i32)))
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
 (data (i32.const 544) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00f\006\004\00")
 (data (i32.const 576) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data (i32.const 624) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 688) "t\00\00\00\01\00\00\00\01\00\00\00t\00\00\00n\00o\00d\00e\00_\00m\00o\00d\00u\00l\00e\00s\00/\00@\00a\00s\00-\00p\00e\00c\00t\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00a\00s\00s\00e\00m\00b\00l\00y\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00s\00s\00e\00r\00t\00.\00t\00s\00")
 (data (i32.const 832) "\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 848) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00b\00o\00o\00l\00")
 (data (i32.const 880) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00i\00s\00M\00a\00t\00r\00i\00x\004\00")
 (data (i32.const 928) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00s\00e\00t\00")
 (data (i32.const 960) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00i\00d\00e\00n\00t\00i\00t\00y\00")
 (data (i32.const 992) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00c\00l\00o\00n\00e\00")
 (data (i32.const 1024) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00c\00o\00p\00y\00")
 (data (i32.const 1056) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00e\00x\00t\00r\00a\00c\00t\00R\00o\00t\00a\00t\00i\00o\00n\00")
 (data (i32.const 1104) "J\00\00\00\01\00\00\00\01\00\00\00J\00\00\00m\00a\00k\00e\00R\00o\00t\00a\00t\00i\00o\00n\00F\00r\00o\00m\00E\00u\00l\00e\00r\00/\00e\00x\00t\00r\00a\00c\00t\00R\00o\00t\00a\00t\00i\00o\00n\00")
 (data (i32.const 1200) "^\00\00\00\01\00\00\00\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y\00")
 (data (i32.const 1312) "n\83\f9\a2\00\00\00\00\d1W\'\fc)\15DN\99\95b\db\c0\dd4\f5\abcQ\feA\90C<:n$\b7a\c5\bb\de\ea.I\06\e0\d2MB\1c\eb\1d\fe\1c\92\d1\t\f55\82\e8>\a7)\b1&p\9c\e9\84D\bb.9\d6\919A~_\b4\8b_\84\9c\f49S\83\ff\97\f8\1f;(\f9\bd\8b\11/\ef\0f\98\05\de\cf~6m\1fm\nZf?FO\b7\t\cb\'\c7\ba\'u-\ea_\9e\f79\07={\f1\e5\eb\b1_\fbk\ea\92R\8aF0\03V\08]\8d\1f \bc\cf\f0\abk{\fca\91\e3\a9\1d6\f4\9a_\85\99e\08\1b\e6^\80\d8\ff\8d@h\a0\14W\15\06\061\'sM")
 (data (i32.const 1504) "l\00\00\00\01\00\00\00\01\00\00\00l\00\00\00E\00u\00l\00e\00r\00.\00s\00e\00t\00F\00r\00o\00m\00R\00o\00t\00a\00t\00i\00o\00n\00M\00a\00t\00r\00i\00x\00(\00)\00 \00g\00i\00v\00e\00n\00 \00u\00n\00s\00u\00p\00p\00o\00r\00t\00e\00d\00 \00o\00r\00d\00e\00r\00.\00")
 (data (i32.const 1632) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00s\00r\00c\00/\00a\00s\00/\00m\00a\00t\00h\00/\00E\00u\00l\00e\00r\00.\00t\00s\00")
 (data (i32.const 1696) "\10\00\00\00\01\00\00\00\01\00\00\00\10\00\00\00m\00u\00l\00t\00i\00p\00l\00y\00")
 (data (i32.const 1728) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00p\00r\00e\00m\00u\00l\00t\00i\00p\00l\00y\00")
 (data (i32.const 1776) " \00\00\00\01\00\00\00\01\00\00\00 \00\00\00m\00u\00l\00t\00i\00p\00l\00y\00M\00a\00t\00r\00i\00c\00e\00s\00")
 (data (i32.const 1824) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00d\00e\00t\00e\00r\00m\00i\00n\00a\00n\00t\00")
 (data (i32.const 1872) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00s\00e\00t\00P\00o\00s\00i\00t\00i\00o\00n\00")
 (data (i32.const 1920) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00g\00e\00t\00I\00n\00v\00e\00r\00s\00e\00")
 (data (i32.const 1968) "\80\00\00\00\01\00\00\00\01\00\00\00\80\00\00\00t\00o\00B\00e\00C\00l\00o\00s\00e\00T\00o\00 \00a\00s\00s\00e\00r\00t\00i\00o\00n\00 \00f\00a\00i\00l\00s\00 \00b\00e\00c\00a\00u\00s\00e\00 \00a\00 \00a\00c\00t\00u\00a\00l\00 \00v\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00f\00i\00n\00i\00t\00e\00")
 (data (i32.const 2112) "\82\00\00\00\01\00\00\00\01\00\00\00\82\00\00\00t\00o\00B\00e\00C\00l\00o\00s\00e\00T\00o\00 \00a\00s\00s\00e\00r\00t\00i\00o\00n\00 \00f\00a\00i\00l\00s\00 \00b\00e\00c\00a\00u\00s\00e\00 \00e\00x\00p\00e\00c\00t\00e\00d\00 \00v\00a\00l\00u\00e\00 \00i\00s\00 \00n\00o\00t\00 \00f\00i\00n\00i\00t\00e\00.\00")
 (data (i32.const 2264) "\00\00\00\00\00\a0\f6?\00\00\00\00\00\00\00\00\00\c8\b9\f2\82,\d6\bf\80V7($\b4\fa<\00\00\00\00\00\80\f6?\00\00\00\00\00\00\00\00\00\08X\bf\bd\d1\d5\bf \f7\e0\d8\08\a5\1c\bd\00\00\00\00\00`\f6?\00\00\00\00\00\00\00\00\00XE\17wv\d5\bfmP\b6\d5\a4b#\bd\00\00\00\00\00@\f6?\00\00\00\00\00\00\00\00\00\f8-\87\ad\1a\d5\bf\d5g\b0\9e\e4\84\e6\bc\00\00\00\00\00 \f6?\00\00\00\00\00\00\00\00\00xw\95_\be\d4\bf\e0>)\93i\1b\04\bd\00\00\00\00\00\00\f6?\00\00\00\00\00\00\00\00\00`\1c\c2\8ba\d4\bf\cc\84LH/\d8\13=\00\00\00\00\00\e0\f5?\00\00\00\00\00\00\00\00\00\a8\86\860\04\d4\bf:\0b\82\ed\f3B\dc<\00\00\00\00\00\c0\f5?\00\00\00\00\00\00\00\00\00HiUL\a6\d3\bf`\94Q\86\c6\b1 =\00\00\00\00\00\a0\f5?\00\00\00\00\00\00\00\00\00\80\98\9a\ddG\d3\bf\92\80\c5\d4MY%=\00\00\00\00\00\80\f5?\00\00\00\00\00\00\00\00\00 \e1\ba\e2\e8\d2\bf\d8+\b7\99\1e{&=\00\00\00\00\00`\f5?\00\00\00\00\00\00\00\00\00\88\de\13Z\89\d2\bf?\b0\cf\b6\14\ca\15=\00\00\00\00\00`\f5?\00\00\00\00\00\00\00\00\00\88\de\13Z\89\d2\bf?\b0\cf\b6\14\ca\15=\00\00\00\00\00@\f5?\00\00\00\00\00\00\00\00\00x\cf\fbA)\d2\bfv\daS($Z\16\bd\00\00\00\00\00 \f5?\00\00\00\00\00\00\00\00\00\98i\c1\98\c8\d1\bf\04T\e7h\bc\af\1f\bd\00\00\00\00\00\00\f5?\00\00\00\00\00\00\00\00\00\a8\ab\ab\\g\d1\bf\f0\a8\823\c6\1f\1f=\00\00\00\00\00\e0\f4?\00\00\00\00\00\00\00\00\00H\ae\f9\8b\05\d1\bffZ\05\fd\c4\a8&\bd\00\00\00\00\00\c0\f4?\00\00\00\00\00\00\00\00\00\90s\e2$\a3\d0\bf\0e\03\f4~\eek\0c\bd\00\00\00\00\00\a0\f4?\00\00\00\00\00\00\00\00\00\d0\b4\94%@\d0\bf\7f-\f4\9e\b86\f0\bc\00\00\00\00\00\a0\f4?\00\00\00\00\00\00\00\00\00\d0\b4\94%@\d0\bf\7f-\f4\9e\b86\f0\bc\00\00\00\00\00\80\f4?\00\00\00\00\00\00\00\00\00@^m\18\b9\cf\bf\87<\99\ab*W\0d=\00\00\00\00\00`\f4?\00\00\00\00\00\00\00\00\00`\dc\cb\ad\f0\ce\bf$\af\86\9c\b7&+=\00\00\00\00\00@\f4?\00\00\00\00\00\00\00\00\00\f0*n\07\'\ce\bf\10\ff?TO/\17\bd\00\00\00\00\00 \f4?\00\00\00\00\00\00\00\00\00\c0Ok!\\\cd\bf\1bh\ca\bb\91\ba!=\00\00\00\00\00\00\f4?\00\00\00\00\00\00\00\00\00\a0\9a\c7\f7\8f\cc\bf4\84\9fhOy\'=\00\00\00\00\00\00\f4?\00\00\00\00\00\00\00\00\00\a0\9a\c7\f7\8f\cc\bf4\84\9fhOy\'=\00\00\00\00\00\e0\f3?\00\00\00\00\00\00\00\00\00\90-t\86\c2\cb\bf\8f\b7\8b1\b0N\19=\00\00\00\00\00\c0\f3?\00\00\00\00\00\00\00\00\00\c0\80N\c9\f3\ca\bff\90\cd?cN\ba<\00\00\00\00\00\a0\f3?\00\00\00\00\00\00\00\00\00\b0\e2\1f\bc#\ca\bf\ea\c1F\dcd\8c%\bd\00\00\00\00\00\a0\f3?\00\00\00\00\00\00\00\00\00\b0\e2\1f\bc#\ca\bf\ea\c1F\dcd\8c%\bd\00\00\00\00\00\80\f3?\00\00\00\00\00\00\00\00\00P\f4\9cZR\c9\bf\e3\d4\c1\04\d9\d1*\bd\00\00\00\00\00`\f3?\00\00\00\00\00\00\00\00\00\d0 e\a0\7f\c8\bf\t\fa\db\7f\bf\bd+=\00\00\00\00\00@\f3?\00\00\00\00\00\00\00\00\00\e0\10\02\89\ab\c7\bfXJSr\90\db+=\00\00\00\00\00@\f3?\00\00\00\00\00\00\00\00\00\e0\10\02\89\ab\c7\bfXJSr\90\db+=\00\00\00\00\00 \f3?\00\00\00\00\00\00\00\00\00\d0\19\e7\0f\d6\c6\bff\e2\b2\a3j\e4\10\bd\00\00\00\00\00\00\f3?\00\00\00\00\00\00\00\00\00\90\a7p0\ff\c5\bf9P\10\9fC\9e\1e\bd\00\00\00\00\00\00\f3?\00\00\00\00\00\00\00\00\00\90\a7p0\ff\c5\bf9P\10\9fC\9e\1e\bd\00\00\00\00\00\e0\f2?\00\00\00\00\00\00\00\00\00\b0\a1\e3\e5&\c5\bf\8f[\07\90\8b\de \bd\00\00\00\00\00\c0\f2?\00\00\00\00\00\00\00\00\00\80\cbl+M\c4\bf<x5a\c1\0c\17=\00\00\00\00\00\c0\f2?\00\00\00\00\00\00\00\00\00\80\cbl+M\c4\bf<x5a\c1\0c\17=\00\00\00\00\00\a0\f2?\00\00\00\00\00\00\00\00\00\90\1e \fcq\c3\bf:T\'M\86x\f1<\00\00\00\00\00\80\f2?\00\00\00\00\00\00\00\00\00\f0\1f\f8R\95\c2\bf\08\c4q\170\8d$\bd\00\00\00\00\00`\f2?\00\00\00\00\00\00\00\00\00`/\d5*\b7\c1\bf\96\a3\11\18\a4\80.\bd\00\00\00\00\00`\f2?\00\00\00\00\00\00\00\00\00`/\d5*\b7\c1\bf\96\a3\11\18\a4\80.\bd\00\00\00\00\00@\f2?\00\00\00\00\00\00\00\00\00\90\d0|~\d7\c0\bf\f4[\e8\88\96i\n=\00\00\00\00\00@\f2?\00\00\00\00\00\00\00\00\00\90\d0|~\d7\c0\bf\f4[\e8\88\96i\n=\00\00\00\00\00 \f2?\00\00\00\00\00\00\00\00\00\e0\db1\91\ec\bf\bf\f23\a3\\Tu%\bd\00\00\00\00\00\00\f2?\00\00\00\00\00\00\00\00\00\00+n\07\'\be\bf<\00\f0*,4*=\00\00\00\00\00\00\f2?\00\00\00\00\00\00\00\00\00\00+n\07\'\be\bf<\00\f0*,4*=\00\00\00\00\00\e0\f1?\00\00\00\00\00\00\00\00\00\c0[\8fT^\bc\bf\06\be_XW\0c\1d\bd\00\00\00\00\00\c0\f1?\00\00\00\00\00\00\00\00\00\e0J:m\92\ba\bf\c8\aa[\e859%=\00\00\00\00\00\c0\f1?\00\00\00\00\00\00\00\00\00\e0J:m\92\ba\bf\c8\aa[\e859%=\00\00\00\00\00\a0\f1?\00\00\00\00\00\00\00\00\00\a01\d6E\c3\b8\bfhV/M)|\13=\00\00\00\00\00\a0\f1?\00\00\00\00\00\00\00\00\00\a01\d6E\c3\b8\bfhV/M)|\13=\00\00\00\00\00\80\f1?\00\00\00\00\00\00\00\00\00`\e5\8a\d2\f0\b6\bf\das3\c97\97&\bd\00\00\00\00\00`\f1?\00\00\00\00\00\00\00\00\00 \06?\07\1b\b5\bfW^\c6a[\02\1f=\00\00\00\00\00`\f1?\00\00\00\00\00\00\00\00\00 \06?\07\1b\b5\bfW^\c6a[\02\1f=\00\00\00\00\00@\f1?\00\00\00\00\00\00\00\00\00\e0\1b\96\d7A\b3\bf\df\13\f9\cc\da^,=\00\00\00\00\00@\f1?\00\00\00\00\00\00\00\00\00\e0\1b\96\d7A\b3\bf\df\13\f9\cc\da^,=\00\00\00\00\00 \f1?\00\00\00\00\00\00\00\00\00\80\a3\ee6e\b1\bf\t\a3\8fv^|\14=\00\00\00\00\00\00\f1?\00\00\00\00\00\00\00\00\00\80\11\c00\n\af\bf\91\8e6\83\9eY-=\00\00\00\00\00\00\f1?\00\00\00\00\00\00\00\00\00\80\11\c00\n\af\bf\91\8e6\83\9eY-=\00\00\00\00\00\e0\f0?\00\00\00\00\00\00\00\00\00\80\19q\ddB\ab\bfLp\d6\e5z\82\1c=\00\00\00\00\00\e0\f0?\00\00\00\00\00\00\00\00\00\80\19q\ddB\ab\bfLp\d6\e5z\82\1c=\00\00\00\00\00\c0\f0?\00\00\00\00\00\00\00\00\00\c02\f6Xt\a7\bf\ee\a1\f24F\fc,\bd\00\00\00\00\00\c0\f0?\00\00\00\00\00\00\00\00\00\c02\f6Xt\a7\bf\ee\a1\f24F\fc,\bd\00\00\00\00\00\a0\f0?\00\00\00\00\00\00\00\00\00\c0\fe\b9\87\9e\a3\bf\aa\fe&\f5\b7\02\f5<\00\00\00\00\00\a0\f0?\00\00\00\00\00\00\00\00\00\c0\fe\b9\87\9e\a3\bf\aa\fe&\f5\b7\02\f5<\00\00\00\00\00\80\f0?\00\00\00\00\00\00\00\00\00\00x\0e\9b\82\9f\bf\e4\t~|&\80)\bd\00\00\00\00\00\80\f0?\00\00\00\00\00\00\00\00\00\00x\0e\9b\82\9f\bf\e4\t~|&\80)\bd\00\00\00\00\00`\f0?\00\00\00\00\00\00\00\00\00\80\d5\07\1b\b9\97\bf9\a6\fa\93T\8d(\bd\00\00\00\00\00@\f0?\00\00\00\00\00\00\00\00\00\00\fc\b0\a8\c0\8f\bf\9c\a6\d3\f6|\1e\df\bc\00\00\00\00\00@\f0?\00\00\00\00\00\00\00\00\00\00\fc\b0\a8\c0\8f\bf\9c\a6\d3\f6|\1e\df\bc\00\00\00\00\00 \f0?\00\00\00\00\00\00\00\00\00\00\10k*\e0\7f\bf\e4@\da\0d?\e2\19\bd\00\00\00\00\00 \f0?\00\00\00\00\00\00\00\00\00\00\10k*\e0\7f\bf\e4@\da\0d?\e2\19\bd\00\00\00\00\00\00\f0?\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0?\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\c0\ef?\00\00\00\00\00\00\00\00\00\00\89u\15\10\80?\e8+\9d\99k\c7\10\bd\00\00\00\00\00\80\ef?\00\00\00\00\00\00\00\00\00\80\93XV \90?\d2\f7\e2\06[\dc#\bd\00\00\00\00\00@\ef?\00\00\00\00\00\00\00\00\00\00\c9(%I\98?4\0cZ2\ba\a0*\bd\00\00\00\00\00\00\ef?\00\00\00\00\00\00\00\00\00@\e7\89]A\a0?S\d7\f1\\\c0\11\01=\00\00\00\00\00\c0\ee?\00\00\00\00\00\00\00\00\00\00.\d4\aef\a4?(\fd\bdus\16,\bd\00\00\00\00\00\80\ee?\00\00\00\00\00\00\00\00\00\c0\9f\14\aa\94\a8?}&Z\d0\95y\19\bd\00\00\00\00\00@\ee?\00\00\00\00\00\00\00\00\00\c0\dd\cds\cb\ac?\07(\d8G\f2h\1a\bd\00\00\00\00\00 \ee?\00\00\00\00\00\00\00\00\00\c0\06\c01\ea\ae?{;\c9O>\11\0e\bd\00\00\00\00\00\e0\ed?\00\00\00\00\00\00\00\00\00`F\d1;\97\b1?\9b\9e\0dV]2%\bd\00\00\00\00\00\a0\ed?\00\00\00\00\00\00\00\00\00\e0\d1\a7\f5\bd\b3?\d7N\db\a5^\c8,=\00\00\00\00\00`\ed?\00\00\00\00\00\00\00\00\00\a0\97MZ\e9\b5?\1e\1d]<\06i,\bd\00\00\00\00\00@\ed?\00\00\00\00\00\00\00\00\00\c0\ea\n\d3\00\b7?2\ed\9d\a9\8d\1e\ec<\00\00\00\00\00\00\ed?\00\00\00\00\00\00\00\00\00@Y]^3\b9?\daG\bd:\\\11#=\00\00\00\00\00\c0\ec?\00\00\00\00\00\00\00\00\00`\ad\8d\c8j\bb?\e5h\f7+\80\90\13\bd\00\00\00\00\00\a0\ec?\00\00\00\00\00\00\00\00\00@\bc\01X\88\bc?\d3\acZ\c6\d1F&=\00\00\00\00\00`\ec?\00\00\00\00\00\00\00\00\00 \n\839\c7\be?\e0E\e6\afh\c0-\bd\00\00\00\00\00@\ec?\00\00\00\00\00\00\00\00\00\e0\db9\91\e8\bf?\fd\n\a1O\d64%\bd\00\00\00\00\00\00\ec?\00\00\00\00\00\00\00\00\00\e0\'\82\8e\17\c1?\f2\07-\cex\ef!=\00\00\00\00\00\e0\eb?\00\00\00\00\00\00\00\00\00\f0#~+\aa\c1?4\998D\8e\a7,=\00\00\00\00\00\a0\eb?\00\00\00\00\00\00\00\00\00\80\86\0ca\d1\c2?\a1\b4\81\cbl\9d\03=\00\00\00\00\00\80\eb?\00\00\00\00\00\00\00\00\00\90\15\b0\fce\c3?\89rK#\a8/\c6<\00\00\00\00\00@\eb?\00\00\00\00\00\00\00\00\00\b03\83=\91\c4?x\b6\fdTy\83%=\00\00\00\00\00 \eb?\00\00\00\00\00\00\00\00\00\b0\a1\e4\e5\'\c5?\c7}i\e5\e83&=\00\00\00\00\00\e0\ea?\00\00\00\00\00\00\00\00\00\10\8c\beNW\c6?x.<,\8b\cf\19=\00\00\00\00\00\c0\ea?\00\00\00\00\00\00\00\00\00pu\8b\12\f0\c6?\e1!\9c\e5\8d\11%\bd\00\00\00\00\00\a0\ea?\00\00\00\00\00\00\00\00\00PD\85\8d\89\c7?\05C\91p\10f\1c\bd\00\00\00\00\00`\ea?\00\00\00\00\00\00\00\00\00\009\eb\af\be\c8?\d1,\e9\aaT=\07\bd\00\00\00\00\00@\ea?\00\00\00\00\00\00\00\00\00\00\f7\dcZZ\c9?o\ff\a0X(\f2\07=\00\00\00\00\00\00\ea?\00\00\00\00\00\00\00\00\00\e0\8a<\ed\93\ca?i!VPCr(\bd\00\00\00\00\00\e0\e9?\00\00\00\00\00\00\00\00\00\d0[W\d81\cb?\aa\e1\acN\8d5\0c\bd\00\00\00\00\00\c0\e9?\00\00\00\00\00\00\00\00\00\e0;8\87\d0\cb?\b6\12TY\c4K-\bd\00\00\00\00\00\a0\e9?\00\00\00\00\00\00\00\00\00\10\f0\c6\fbo\cc?\d2+\96\c5r\ec\f1\bc\00\00\00\00\00`\e9?\00\00\00\00\00\00\00\00\00\90\d4\b0=\b1\cd?5\b0\15\f7*\ff*\bd\00\00\00\00\00@\e9?\00\00\00\00\00\00\00\00\00\10\e7\ff\0eS\ce?0\f4A`\'\12\c2<\00\00\00\00\00 \e9?\00\00\00\00\00\00\00\00\00\00\dd\e4\ad\f5\ce?\11\8e\bbe\15!\ca\bc\00\00\00\00\00\00\e9?\00\00\00\00\00\00\00\00\00\b0\b3l\1c\99\cf?0\df\0c\ca\ec\cb\1b=\00\00\00\00\00\c0\e8?\00\00\00\00\00\00\00\00\00XM`8q\d0?\91N\ed\16\db\9c\f8<\00\00\00\00\00\a0\e8?\00\00\00\00\00\00\00\00\00`ag-\c4\d0?\e9\ea<\16\8b\18\'=\00\00\00\00\00\80\e8?\00\00\00\00\00\00\00\00\00\e8\'\82\8e\17\d1?\1c\f0\a5c\0e!,\bd\00\00\00\00\00`\e8?\00\00\00\00\00\00\00\00\00\f8\ac\cb\\k\d1?\81\16\a5\f7\cd\9a+=\00\00\00\00\00@\e8?\00\00\00\00\00\00\00\00\00hZc\99\bf\d1?\b7\bdGQ\ed\a6,=\00\00\00\00\00 \e8?\00\00\00\00\00\00\00\00\00\b8\0emE\14\d2?\ea\baF\ba\de\87\n=\00\00\00\00\00\e0\e7?\00\00\00\00\00\00\00\00\00\90\dc|\f0\be\d2?\f4\04PJ\fa\9c*=\00\00\00\00\00\c0\e7?\00\00\00\00\00\00\00\00\00`\d3\e1\f1\14\d3?\b8<!\d3z\e2(\bd\00\00\00\00\00\a0\e7?\00\00\00\00\00\00\00\00\00\10\bevgk\d3?\c8w\f1\b0\cdn\11=\00\00\00\00\00\80\e7?\00\00\00\00\00\00\00\00\0003wR\c2\d3?\\\bd\06\b6T;\18=\00\00\00\00\00`\e7?\00\00\00\00\00\00\00\00\00\e8\d5#\b4\19\d4?\9d\e0\90\ec6\e4\08=\00\00\00\00\00@\e7?\00\00\00\00\00\00\00\00\00\c8q\c2\8dq\d4?u\d6g\t\ce\'/\bd\00\00\00\00\00 \e7?\00\00\00\00\00\00\00\00\000\17\9e\e0\c9\d4?\a4\d8\n\1b\89 .\bd\00\00\00\00\00\00\e7?\00\00\00\00\00\00\00\00\00\a08\07\ae\"\d5?Y\c7d\81p\be.=\00\00\00\00\00\e0\e6?\00\00\00\00\00\00\00\00\00\d0\c8S\f7{\d5?\ef@]\ee\ed\ad\1f=\00\00\00\00\00\c0\e6?\00\00\00\00\00\00\00\00\00`Y\df\bd\d5\d5?\dce\a4\08*\0b\n\bd")
 (data (i32.const 6360) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0?n\bf\88\1aO;\9b<53\fb\a9=\f6\ef?]\dc\d8\9c\13`q\bca\80w>\9a\ec\ef?\d1f\87\10z^\90\bc\85\7fn\e8\15\e3\ef?\13\f6g5R\d2\8c<t\85\15\d3\b0\d9\ef?\fa\8e\f9#\80\ce\8b\bc\de\f6\dd)k\d0\ef?a\c8\e6aN\f7`<\c8\9bu\18E\c7\ef?\99\d33[\e4\a3\90<\83\f3\c6\ca>\be\ef?m{\83]\a6\9a\97<\0f\89\f9lX\b5\ef?\fc\ef\fd\92\1a\b5\8e<\f7Gr+\92\ac\ef?\d1\9c/p=\be><\a2\d1\d32\ec\a3\ef?\0bn\90\894\03j\bc\1b\d3\fe\aff\9b\ef?\0e\bd/*RV\95\bcQ[\12\d0\01\93\ef?U\eaN\8c\ef\80P\bc\cc1l\c0\bd\8a\ef?\16\f4\d5\b9#\c9\91\bc\e0-\a9\ae\9a\82\ef?\afU\\\e9\e3\d3\80<Q\8e\a5\c8\98z\ef?H\93\a5\ea\15\1b\80\bc{Q}<\b8r\ef?=2\deU\f0\1f\8f\bc\ea\8d\8c8\f9j\ef?\bfS\13?\8c\89\8b<u\cbo\eb[c\ef?&\eb\11v\9c\d9\96\bc\d4\\\04\84\e0[\ef?`/:>\f7\ec\9a<\aa\b9h1\87T\ef?\9d8\86\cb\82\e7\8f\bc\1d\d9\fc\"PM\ef?\8d\c3\a6DAo\8a<\d6\8cb\88;F\ef?}\04\e4\b0\05z\80<\96\dc}\91I?\ef?\94\a8\a8\e3\fd\8e\96<8bunz8\ef?}Ht\f2\18^\87<?\a6\b2O\ce1\ef?\f2\e7\1f\98+G\80<\dd|\e2eE+\ef?^\08q?{\b8\96\bc\81c\f5\e1\df$\ef?1\ab\tm\e1\f7\82<\e1\de\1f\f5\9d\1e\ef?\fa\bfo\1a\9b!=\bc\90\d9\da\d0\7f\18\ef?\b4\n\0cr\827\8b<\0b\03\e4\a6\85\12\ef?\8f\cb\ce\89\92\14n<V/>\a9\af\0c\ef?\b6\ab\b0MuM\83<\15\b71\n\fe\06\ef?Lt\ac\e2\01B\86<1\d8L\fcp\01\ef?J\f8\d3]9\dd\8f<\ff\16d\b2\08\fc\ee?\04[\8e;\80\a3\86\bc\f1\9f\92_\c5\f6\ee?hPK\cc\edJ\92\bc\cb\a9:7\a7\f1\ee?\8e-Q\1b\f8\07\99\bcf\d8\05m\ae\ec\ee?\d26\94>\e8\d1q\bc\f7\9f\e54\db\e7\ee?\15\1b\ce\b3\19\19\99\bc\e5\a8\13\c3-\e3\ee?mL*\a7H\9f\85<\"4\12L\a6\de\ee?\8ai(z`\12\93\bc\1c\80\ac\04E\da\ee?[\89\17H\8f\a7X\bc*.\f7!\n\d6\ee?\1b\9aIg\9b,|\bc\97\a8P\d9\f5\d1\ee?\11\ac\c2`\edcC<-\89a`\08\ce\ee?\efd\06;\tf\96<W\00\1d\edA\ca\ee?y\03\a1\da\e1\ccn<\d0<\c1\b5\a2\c6\ee?0\12\0f?\8e\ff\93<\de\d3\d7\f0*\c3\ee?\b0\afz\bb\ce\90v<\'*6\d5\da\bf\ee?w\e0T\eb\bd\1d\93<\0d\dd\fd\99\b2\bc\ee?\8e\a3q\004\94\8f\bc\a7,\9dv\b2\b9\ee?I\a3\93\dc\cc\de\87\bcBf\cf\a2\da\b6\ee?_8\0f\bd\c6\dex\bc\82O\9dV+\b4\ee?\f6\\{\ecF\12\86\bc\0f\92]\ca\a4\b1\ee?\8e\d7\fd\18\055\93<\da\'\b56G\af\ee?\05\9b\8a/\b7\98{<\fd\c7\97\d4\12\ad\ee?\tT\1c\e2\e1c\90<)TH\dd\07\ab\ee?\ea\c6\19P\85\c74<\b7FY\8a&\a9\ee?5\c0d+\e62\94<H!\ad\15o\a7\ee?\9fv\99aJ\e4\8c\bc\t\dcv\b9\e1\a5\ee?\a8M\ef;\c53\8c\bc\85U:\b0~\a4\ee?\ae\e9+\89xS\84\bc \c3\cc4F\a3\ee?XXVx\dd\ce\93\bc%\"U\828\a2\ee?d\19~\80\aa\10W<s\a9L\d4U\a1\ee?(\"^\bf\ef\b3\93\bc\cd;\7ff\9e\a0\ee?\82\b94\87\ad\12j\bc\bf\da\0bu\12\a0\ee?\ee\a9m\b8\efgc\bc/\1ae<\b2\9f\ee?Q\88\e0T=\dc\80\bc\84\94Q\f9}\9f\ee?\cf>Z~d\1fx\bct_\ec\e8u\9f\ee?\b0}\8b\c0J\ee\86\bct\81\a5H\9a\9f\ee?\8a\e6U\1e2\19\86\bc\c9gBV\eb\9f\ee?\d3\d4\t^\cb\9c\90<?]\deOi\a0\ee?\1d\a5M\b9\dc2{\bc\87\01\ebs\14\a1\ee?k\c0gT\fd\ec\94<2\c10\01\ed\a1\ee?Ul\d6\ab\e1\ebe<bN\cf6\f3\a2\ee?B\cf\b3/\c5\a1\88\bc\12\1a>T\'\a4\ee?47;\f1\b6i\93\bc\13\ceL\99\89\a5\ee?\1e\ff\19:\84^\80\bc\ad\c7#F\1a\a7\ee?nWr\d8P\d4\94\bc\ed\92D\9b\d9\a8\ee?\00\8a\0e[g\ad\90<\99f\8a\d9\c7\aa\ee?\b4\ea\f0\c1/\b7\8d<\db\a0*B\e5\ac\ee?\ff\e7\c5\9c`\b6e\bc\8cD\b5\162\af\ee?D_\f3Y\83\f6{<6w\15\99\ae\b1\ee?\83=\1e\a7\1f\t\93\bc\c6\ff\91\0b[\b4\ee?)\1el\8b\b8\a9]\bc\e5\c5\cd\b07\b7\ee?Y\b9\90|\f9#l\bc\0fR\c8\cbD\ba\ee?\aa\f9\f4\"CC\92\bcPN\de\9f\82\bd\ee?K\8ef\d7l\ca\85\bc\ba\07\cap\f1\c0\ee?\'\ce\91+\fc\afq<\90\f0\a3\82\91\c4\ee?\bbs\n\e15\d2m<##\e3\19c\c8\ee?c\"b\"\04\c5\87\bce\e5]{f\cc\ee?\d51\e2\e3\86\1c\8b<3-J\ec\9b\d0\ee?\15\bb\bc\d3\d1\bb\91\bc]%>\b2\03\d5\ee?\d21\ee\9c1\cc\90<X\b30\13\9e\d9\ee?\b3Zsn\84i\84<\bf\fdyUk\de\ee?\b4\9d\8e\97\cd\df\82\bcz\f3\d3\bfk\e3\ee?\873\cb\92w\1a\8c<\ad\d3Z\99\9f\e8\ee?\fa\d9\d1J\8f{\90\bcf\b6\8d)\07\ee\ee?\ba\ae\dcV\d9\c3U\bc\fb\15O\b8\a2\f3\ee?@\f6\a6=\0e\a4\90\bc:Y\e5\8dr\f9\ee?4\93\ad8\f4\d6h\bcG^\fb\f2v\ff\ee?5\8aXk\e2\ee\91\bcJ\06\a10\b0\05\ef?\cd\dd_\n\d7\fft<\d2\c1K\90\1e\0c\ef?\ac\98\92\fa\fb\bd\91\bc\t\1e\d7[\c2\12\ef?\b3\0c\af0\aens<\9cR\85\dd\9b\19\ef?\94\fd\9f\\2\e3\8e<z\d0\ff_\ab \ef?\acY\t\d1\8f\e0\84<K\d1W.\f1\'\ef?g\1aN8\af\cdc<\b5\e7\06\94m/\ef?h\19\92l,kg<i\90\ef\dc 7\ef?\d2\b5\cc\83\18\8a\80\bc\fa\c3]U\0b?\ef?o\fa\ff?]\ad\8f\bc|\89\07J-G\ef?I\a9u8\ae\0d\90\bc\f2\89\0d\08\87O\ef?\a7\07=\a6\85\a3t<\87\a4\fb\dc\18X\ef?\0f\"@ \9e\91\82\bc\98\83\c9\16\e3`\ef?\ac\92\c1\d5PZ\8e<\852\db\03\e6i\ef?Kk\01\acY:\84<`\b4\01\f3!s\ef?\1f>\b4\07!\d5\82\bc_\9b{3\97|\ef?\c9\0dG;\b9*\89\bc)\a1\f5\14F\86\ef?\d3\88:`\04\b6t<\f6?\8b\e7.\90\ef?qr\9dQ\ec\c5\83<\83L\c7\fbQ\9a\ef?\f0\91\d3\8f\12\f7\8f\bc\da\90\a4\a2\af\a4\ef?}t#\e2\98\ae\8d\bc\f1g\8e-H\af\ef?\08 \aaA\bc\c3\8e<\'Za\ee\1b\ba\ef?2\eb\a9\c3\94+\84<\97\bak7+\c5\ef?\ee\85\d11\a9d\8a<@En[v\d0\ef?\ed\e3;\e4\ba7\8e\bc\14\be\9c\ad\fd\db\ef?\9d\cd\91M;\89w<\d8\90\9e\81\c1\e7\ef?\89\cc`A\c1\05S<\f1q\8f+\c2\f3\ef?")
 (data (i32.const 8416) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00s\00c\00a\00l\00e\00")
 (data (i32.const 8448) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00g\00e\00t\00M\00a\00x\00S\00c\00a\00l\00e\00O\00n\00A\00x\00i\00s\00")
 (data (i32.const 8512) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00m\00a\00k\00e\00T\00r\00a\00n\00s\00l\00a\00t\00i\00o\00n\00")
 (data (i32.const 8560) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00m\00a\00k\00e\00R\00o\00t\00a\00t\00i\00o\00n\00X\00")
 (data (i32.const 8608) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00m\00a\00k\00e\00R\00o\00t\00a\00t\00i\00o\00n\00Y\00")
 (data (i32.const 8656) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00m\00a\00k\00e\00R\00o\00t\00a\00t\00i\00o\00n\00Z\00")
 (data (i32.const 8704) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00m\00a\00k\00e\00S\00c\00a\00l\00e\00")
 (data (i32.const 8752) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00m\00a\00k\00e\00S\00h\00e\00a\00r\00")
 (data (i32.const 8800) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00c\00o\00m\00p\00o\00s\00e\00/\00d\00e\00c\00o\00m\00p\00o\00s\00e\00")
 (data (i32.const 8864) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00m\00a\00k\00e\00P\00e\00r\00s\00p\00e\00c\00t\00i\00v\00e\00")
 (data (i32.const 8912) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00f\00r\00o\00m\00A\00r\00r\00a\00y\00")
 (data (i32.const 8960) "\13\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00\"\1a\00\00\00\00\00\00\"\t\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\000\t\02\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00\"A\00\00\00\00\00\00\"A\00\00\00\00\00\00\"A\00\00\00\00\00\00\"A\00\00\00\00\00\00\"\01\00\00\00\00\00\00")
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
 (import "__aspect" "reportExpectedFalsy" (func $node_modules/@as-pect/assembly/assembly/internal/Expected/reportExpectedFalsy (param i32)))
 (import "__aspect" "reportTestTypeNode" (func $node_modules/@as-pect/assembly/assembly/internal/Test/test (param i32 i32)))
 (import "__aspect" "reportTodo" (func $node_modules/@as-pect/assembly/assembly/internal/Test/todo (param i32)))
 (import "__aspect" "reportExpectedTruthy" (func $node_modules/@as-pect/assembly/assembly/internal/Expected/reportExpectedTruthy (param i32)))
 (import "__aspect" "reportGroupTypeNode" (func $node_modules/@as-pect/assembly/assembly/internal/Test/describe (param i32 i32)))
 (import "rtrace" "ondecrement" (func $~lib/rt/rtrace/ondecrement (param i32)))
 (table $0 17 funcref)
 (elem (i32.const 1) $src/as/math/Quaternion/Quaternion#constructor~anonymous|0 $start:src/as/math/Matrix4.spec~anonymous|0~anonymous|0~anonymous|0 $start:src/as/math/Matrix4.spec~anonymous|0~anonymous|0~anonymous|1 $start:src/as/math/Matrix4.spec~anonymous|0~anonymous|0~anonymous|2 $start:src/as/math/Matrix4.spec~anonymous|0~anonymous|0~anonymous|3 $start:src/as/math/Matrix4.spec~anonymous|0~anonymous|0~anonymous|4 $src/as/math/Euler/Euler#constructor~anonymous|0 $start:src/as/math/Matrix4.spec~anonymous|0~anonymous|0~anonymous|5 $start:src/as/math/Matrix4.spec~anonymous|0~anonymous|0~anonymous|6 $start:src/as/math/Matrix4.spec~anonymous|0~anonymous|0~anonymous|7 $start:src/as/math/Matrix4.spec~anonymous|0~anonymous|0~anonymous|8 $start:src/as/math/Matrix4.spec~anonymous|0~anonymous|0~anonymous|9 $start:src/as/math/Matrix4.spec~anonymous|0~anonymous|0~anonymous|10 $start:src/as/math/Matrix4.spec~anonymous|0~anonymous|0 $start:src/as/math/Matrix4.spec~anonymous|0 $start:node_modules/@as-pect/assembly/assembly/internal/noOp~anonymous|0)
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
 (global $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.FAILED_MATCH i32 (i32.const 0))
 (global $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.SUCCESSFUL_MATCH i32 (i32.const 1))
 (global $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.DEFER_MATCH i32 (i32.const 2))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/math/rempio2_y0 (mut f64) (f64.const 0))
 (global $~lib/math/rempio2_y1 (mut f64) (f64.const 0))
 (global $~lib/math/res128_hi (mut i64) (i64.const 0))
 (global $~lib/util/math/log_tail (mut f64) (f64.const 0))
 (global $node_modules/@as-pect/assembly/assembly/internal/noOp/noOp i32 (i32.const 16))
 (global $node_modules/@as-pect/assembly/assembly/internal/log/ignoreLogs (mut i32) (i32.const 0))
 (global $node_modules/@as-pect/assembly/assembly/internal/RTrace/RTrace.enabled (mut i32) (i32.const 1))
 (global $~started (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 8960))
 (global $~lib/heap/__heap_base i32 (i32.const 9116))
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
  i32.const 560
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
   i32.const 592
   i32.const 640
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
   i32.const 704
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
    i32.const 592
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
  i32.const 864
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
 (func $start:src/as/math/Matrix4.spec~anonymous|0~anonymous|0~anonymous|0
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
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  local.set $0
  local.get $0
  call $src/as/math/Matrix4/Matrix4#determinant
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $1
  f64.const 1
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
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
  f64.const 9
  f64.const 10
  f64.const 11
  f64.const 12
  f64.const 13
  f64.const 14
  f64.const 15
  call $src/as/math/Matrix4/Matrix4#set
  call $~lib/rt/pure/__release
  local.get $2
  i32.load
  i32.const 0
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $3
  f64.const 0
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $2
  i32.load
  i32.const 1
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $4
  f64.const 4
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $2
  i32.load
  i32.const 2
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $5
  f64.const 8
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $2
  i32.load
  i32.const 3
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $6
  f64.const 12
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $2
  i32.load
  i32.const 4
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $7
  f64.const 1
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $2
  i32.load
  i32.const 5
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $8
  f64.const 5
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $2
  i32.load
  i32.const 6
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $9
  f64.const 9
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $2
  i32.load
  i32.const 7
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $10
  f64.const 13
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $2
  i32.load
  i32.const 8
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $11
  f64.const 2
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $2
  i32.load
  i32.const 9
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $12
  f64.const 6
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $2
  i32.load
  i32.const 10
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $13
  f64.const 10
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $2
  i32.load
  i32.const 11
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $14
  f64.const 14
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $2
  i32.load
  i32.const 12
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $15
  f64.const 3
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $2
  i32.load
  i32.const 13
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $16
  f64.const 7
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $2
  i32.load
  i32.const 14
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $17
  f64.const 11
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $2
  i32.load
  i32.const 15
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $18
  f64.const 15
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  local.get $2
  f64.const 0.0001
  call $src/as/math/Matrix4/matrixEquals4
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<bool>
  local.tee $19
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<bool>#toBeFalsy
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
  local.get $19
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $start:src/as/math/Matrix4.spec~anonymous|0~anonymous|0~anonymous|1
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
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  local.set $0
  local.get $0
  call $src/as/math/Matrix4/Matrix4#determinant
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $1
  f64.const 1
  i32.const 848
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
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $2
  f64.const 0
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 1
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $3
  f64.const 4
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 2
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $4
  f64.const 8
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 3
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $5
  f64.const 12
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 4
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $6
  f64.const 1
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 5
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $7
  f64.const 5
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 6
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $8
  f64.const 9
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 7
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $9
  f64.const 13
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 8
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $10
  f64.const 2
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 9
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $11
  f64.const 6
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 10
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $12
  f64.const 10
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 11
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $13
  f64.const 14
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 12
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $14
  f64.const 3
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 13
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $15
  f64.const 7
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 14
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $16
  f64.const 11
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 15
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $17
  f64.const 15
  i32.const 848
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
 (func $start:src/as/math/Matrix4.spec~anonymous|0~anonymous|0~anonymous|2
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
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $1
  f64.const 0
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 1
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $2
  f64.const 4
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 2
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $3
  f64.const 8
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 3
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $4
  f64.const 12
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 4
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $5
  f64.const 1
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 5
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $6
  f64.const 5
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 6
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $7
  f64.const 9
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 7
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $8
  f64.const 13
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 8
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $9
  f64.const 2
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 9
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $10
  f64.const 6
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 10
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $11
  f64.const 10
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 11
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $12
  f64.const 14
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 12
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $13
  f64.const 3
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 13
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $14
  f64.const 7
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 14
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $15
  f64.const 11
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 15
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $16
  f64.const 15
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  local.set $17
  local.get $17
  local.get $0
  f64.const 0.0001
  call $src/as/math/Matrix4/matrixEquals4
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<bool>
  local.tee $18
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<bool>#toBeFalsy
  local.get $0
  call $src/as/math/Matrix4/Matrix4#identity
  call $~lib/rt/pure/__release
  local.get $17
  local.get $0
  f64.const 0.0001
  call $src/as/math/Matrix4/matrixEquals4
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<bool>
  local.tee $19
  i32.const 848
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
  local.get $18
  call $~lib/rt/pure/__release
  local.get $19
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $17
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
  (local $2 i32)
  (local $3 i32)
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
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<bool>
  local.tee $2
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<bool>#toBeTruthy
  local.get $0
  i32.load
  i32.const 0
  f64.const 2
  call $~lib/array/Array<f64>#__set
  local.get $0
  local.get $1
  f64.const 0.0001
  call $src/as/math/Matrix4/matrixEquals4
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<bool>
  local.tee $3
  i32.const 848
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
  (local $2 i32)
  (local $3 i32)
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
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<bool>
  local.tee $2
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<bool>#toBeTruthy
  local.get $0
  i32.load
  i32.const 0
  f64.const 2
  call $~lib/array/Array<f64>#__set
  local.get $0
  local.get $1
  f64.const 0.0001
  call $src/as/math/Matrix4/matrixEquals4
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<bool>
  local.tee $3
  i32.const 848
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
 (func $src/as/math/Euler/Euler#constructor~anonymous|0
  nop
 )
 (func $src/as/math/Euler/Euler#constructor (param $0 i32) (param $1 f64) (param $2 f64) (param $3 f64) (param $4 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 40
   i32.const 13
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
  i32.const 7
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
   i32.const 1216
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
  i32.const 1312
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
        i32.const 1520
        i32.const 1648
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
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  i32.const 5
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
    call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<bool>
    local.tee $0
    i32.const 848
    call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<bool>#toBeTruthy
    local.get $4
    local.get $6
    global.get $src/as/math/Constants.tests/eps
    call $src/as/math/Euler/eulerEquals
    call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<bool>
    local.tee $8
    i32.const 848
    call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<bool>#toBeTruthy
    i32.const 0
    call $src/as/math/Matrix4/Matrix4#constructor
    local.set $9
    local.get $9
    local.get $7
    call $src/as/math/Matrix4/Matrix4#extractRotation
    call $~lib/rt/pure/__release
    i32.const 0
    f64.const 0
    f64.const 0
    f64.const 0
    global.get $src/as/math/Euler/Euler.DefaultOrder
    call $src/as/math/Euler/Euler#constructor
    local.set $10
    local.get $10
    local.get $9
    local.get $4
    call $src/as/math/Euler/Euler#get:order
    i32.const 1
    call $src/as/math/Euler/Euler#setFromRotationMatrix
    call $~lib/rt/pure/__release
    local.get $5
    local.get $9
    global.get $src/as/math/Constants.tests/eps
    call $src/as/math/Matrix4/matrixEquals4
    call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<bool>
    local.tee $11
    i32.const 848
    call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<bool>#toBeTruthy
    local.get $4
    local.get $10
    global.get $src/as/math/Constants.tests/eps
    call $src/as/math/Euler/eulerEquals
    call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<bool>
    local.tee $12
    i32.const 848
    call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<bool>#toBeTruthy
    local.get $0
    call $~lib/rt/pure/__release
    local.get $8
    call $~lib/rt/pure/__release
    local.get $11
    call $~lib/rt/pure/__release
    local.get $12
    call $~lib/rt/pure/__release
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
  local.get $9
  call $~lib/rt/pure/__release
  local.get $10
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
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $3
  f64.const 1585
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $2
  i32.load
  i32.const 1
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $4
  f64.const 5318
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $2
  i32.load
  i32.const 2
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $5
  f64.const 10514
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $2
  i32.load
  i32.const 3
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $6
  f64.const 15894
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $2
  i32.load
  i32.const 4
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $7
  f64.const 1655
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $2
  i32.load
  i32.const 5
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $8
  f64.const 5562
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $2
  i32.load
  i32.const 6
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $9
  f64.const 11006
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $2
  i32.load
  i32.const 7
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $10
  f64.const 16634
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $2
  i32.load
  i32.const 8
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $11
  f64.const 1787
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $2
  i32.load
  i32.const 9
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $12
  f64.const 5980
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $2
  i32.load
  i32.const 10
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $13
  f64.const 11840
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $2
  i32.load
  i32.const 11
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $14
  f64.const 17888
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $2
  i32.load
  i32.const 12
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $15
  f64.const 1861
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $2
  i32.load
  i32.const 13
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $16
  f64.const 6246
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $2
  i32.load
  i32.const 14
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $17
  f64.const 12378
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $2
  i32.load
  i32.const 15
  call $~lib/array/Array<f64>#__get
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $18
  f64.const 18710
  i32.const 848
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
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $start:src/as/math/Matrix4.spec~anonymous|0~anonymous|0~anonymous|7
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  local.set $0
  local.get $0
  call $src/as/math/Matrix4/Matrix4#determinant
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $1
  f64.const 1
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 0
  f64.const 2
  call $~lib/array/Array<f64>#__set
  local.get $0
  call $src/as/math/Matrix4/Matrix4#determinant
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $2
  f64.const 2
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
  local.get $0
  i32.load
  i32.const 0
  f64.const 0
  call $~lib/array/Array<f64>#__set
  local.get $0
  call $src/as/math/Matrix4/Matrix4#determinant
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $3
  f64.const 0
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBe
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
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $4
  f64.const 76
  i32.const 848
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
   i32.const 1216
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
 (func $~lib/math/NativeMath.pow (param $0 f64) (param $1 f64) (result f64)
  (local $2 f64)
  (local $3 f64)
  (local $4 i32)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (local $9 i64)
  (local $10 f64)
  (local $11 i64)
  (local $12 i32)
  (local $13 i64)
  (local $14 i64)
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
  (local $38 f64)
  (local $39 i32)
  (local $40 i32)
  (local $41 i32)
  (local $42 i32)
  (local $43 i64)
  (local $44 i64)
  local.get $1
  f64.abs
  f64.const 2
  f64.le
  if
   local.get $1
   f64.const 2
   f64.eq
   if
    local.get $0
    local.get $0
    f64.mul
    return
   end
   local.get $1
   f64.const 0.5
   f64.eq
   if
    local.get $0
    f64.sqrt
    f64.abs
    f64.const inf
    local.get $0
    f64.const inf
    f64.neg
    f64.ne
    select
    return
   end
   local.get $1
   f64.const -1
   f64.eq
   if
    f64.const 1
    local.get $0
    f64.div
    return
   end
   local.get $1
   f64.const 1
   f64.eq
   if
    local.get $0
    return
   end
   local.get $1
   f64.const 0
   f64.eq
   if
    f64.const 1
    return
   end
  end
  i32.const 0
  i32.const 1
  i32.lt_s
  drop
  block $~lib/util/math/pow_lut|inlined.0 (result f64)
   local.get $0
   local.set $3
   local.get $1
   local.set $2
   i32.const 0
   local.set $4
   local.get $3
   i64.reinterpret_f64
   local.set $5
   local.get $2
   i64.reinterpret_f64
   local.set $6
   local.get $5
   i64.const 52
   i64.shr_u
   local.set $7
   local.get $6
   i64.const 52
   i64.shr_u
   local.set $8
   local.get $7
   i64.const 1
   i64.sub
   i64.const 2047
   i64.const 1
   i64.sub
   i64.ge_u
   if (result i32)
    i32.const 1
   else
    local.get $8
    i64.const 2047
    i64.and
    i64.const 958
    i64.sub
    i64.const 1086
    i64.const 958
    i64.sub
    i64.ge_u
   end
   if
    local.get $6
    local.set $9
    local.get $9
    i64.const 1
    i64.shl
    i64.const 1
    i64.sub
    i64.const -9007199254740992
    i64.const 1
    i64.sub
    i64.ge_u
    if
     local.get $6
     i64.const 1
     i64.shl
     i64.const 0
     i64.eq
     if
      f64.const 1
      br $~lib/util/math/pow_lut|inlined.0
     end
     local.get $5
     i64.const 4607182418800017408
     i64.eq
     if
      f64.const nan:0x8000000000000
      br $~lib/util/math/pow_lut|inlined.0
     end
     local.get $5
     i64.const 1
     i64.shl
     i64.const -9007199254740992
     i64.gt_u
     if (result i32)
      i32.const 1
     else
      local.get $6
      i64.const 1
      i64.shl
      i64.const -9007199254740992
      i64.gt_u
     end
     if
      local.get $3
      local.get $2
      f64.add
      br $~lib/util/math/pow_lut|inlined.0
     end
     local.get $5
     i64.const 1
     i64.shl
     i64.const 9214364837600034816
     i64.eq
     if
      f64.const nan:0x8000000000000
      br $~lib/util/math/pow_lut|inlined.0
     end
     local.get $5
     i64.const 1
     i64.shl
     i64.const 9214364837600034816
     i64.lt_u
     local.get $6
     i64.const 63
     i64.shr_u
     i64.const 0
     i64.ne
     i32.eqz
     i32.eq
     if
      f64.const 0
      br $~lib/util/math/pow_lut|inlined.0
     end
     local.get $2
     local.get $2
     f64.mul
     br $~lib/util/math/pow_lut|inlined.0
    end
    local.get $5
    local.set $9
    local.get $9
    i64.const 1
    i64.shl
    i64.const 1
    i64.sub
    i64.const -9007199254740992
    i64.const 1
    i64.sub
    i64.ge_u
    if
     local.get $3
     local.get $3
     f64.mul
     local.set $10
     local.get $5
     i64.const 63
     i64.shr_u
     i32.wrap_i64
     if (result i32)
      block $~lib/util/math/checkint|inlined.0 (result i32)
       local.get $6
       local.set $9
       local.get $9
       i64.const 52
       i64.shr_u
       i64.const 2047
       i64.and
       local.set $11
       local.get $11
       i64.const 1023
       i64.lt_u
       if
        i32.const 0
        br $~lib/util/math/checkint|inlined.0
       end
       local.get $11
       i64.const 1023
       i64.const 52
       i64.add
       i64.gt_u
       if
        i32.const 2
        br $~lib/util/math/checkint|inlined.0
       end
       i64.const 1
       i64.const 1023
       i64.const 52
       i64.add
       local.get $11
       i64.sub
       i64.shl
       local.set $11
       local.get $9
       local.get $11
       i64.const 1
       i64.sub
       i64.and
       i64.const 0
       i64.ne
       if
        i32.const 0
        br $~lib/util/math/checkint|inlined.0
       end
       local.get $9
       local.get $11
       i64.and
       i64.const 0
       i64.ne
       if
        i32.const 1
        br $~lib/util/math/checkint|inlined.0
       end
       i32.const 2
      end
      i32.const 1
      i32.eq
     else
      i32.const 0
     end
     if
      local.get $10
      f64.neg
      local.set $10
     end
     local.get $6
     i64.const 63
     i64.shr_u
     i64.const 0
     i64.ne
     if (result f64)
      f64.const 1
      local.get $10
      f64.div
     else
      local.get $10
     end
     br $~lib/util/math/pow_lut|inlined.0
    end
    local.get $5
    i64.const 63
    i64.shr_u
    i64.const 0
    i64.ne
    if
     block $~lib/util/math/checkint|inlined.1 (result i32)
      local.get $6
      local.set $9
      local.get $9
      i64.const 52
      i64.shr_u
      i64.const 2047
      i64.and
      local.set $11
      local.get $11
      i64.const 1023
      i64.lt_u
      if
       i32.const 0
       br $~lib/util/math/checkint|inlined.1
      end
      local.get $11
      i64.const 1023
      i64.const 52
      i64.add
      i64.gt_u
      if
       i32.const 2
       br $~lib/util/math/checkint|inlined.1
      end
      i64.const 1
      i64.const 1023
      i64.const 52
      i64.add
      local.get $11
      i64.sub
      i64.shl
      local.set $11
      local.get $9
      local.get $11
      i64.const 1
      i64.sub
      i64.and
      i64.const 0
      i64.ne
      if
       i32.const 0
       br $~lib/util/math/checkint|inlined.1
      end
      local.get $9
      local.get $11
      i64.and
      i64.const 0
      i64.ne
      if
       i32.const 1
       br $~lib/util/math/checkint|inlined.1
      end
      i32.const 2
     end
     local.set $12
     local.get $12
     i32.const 0
     i32.eq
     if
      local.get $3
      local.get $3
      f64.sub
      local.get $3
      local.get $3
      f64.sub
      f64.div
      br $~lib/util/math/pow_lut|inlined.0
     end
     local.get $12
     i32.const 1
     i32.eq
     if
      i32.const 262144
      local.set $4
     end
     local.get $5
     i64.const 9223372036854775807
     i64.and
     local.set $5
     local.get $7
     i64.const 2047
     i64.and
     local.set $7
    end
    local.get $8
    i64.const 2047
    i64.and
    i64.const 958
    i64.sub
    i64.const 1086
    i64.const 958
    i64.sub
    i64.ge_u
    if
     local.get $5
     i64.const 4607182418800017408
     i64.eq
     if
      f64.const 1
      br $~lib/util/math/pow_lut|inlined.0
     end
     local.get $8
     i64.const 2047
     i64.and
     i64.const 958
     i64.lt_u
     if
      f64.const 1
      br $~lib/util/math/pow_lut|inlined.0
     end
     local.get $5
     i64.const 4607182418800017408
     i64.gt_u
     local.get $8
     i64.const 2048
     i64.lt_u
     i32.eq
     if (result f64)
      f64.const inf
     else
      f64.const 0
     end
     br $~lib/util/math/pow_lut|inlined.0
    end
    local.get $7
    i64.const 0
    i64.eq
    if
     local.get $3
     f64.const 4503599627370496
     f64.mul
     i64.reinterpret_f64
     local.set $5
     local.get $5
     i64.const 9223372036854775807
     i64.and
     local.set $5
     local.get $5
     i64.const 52
     i64.const 52
     i64.shl
     i64.sub
     local.set $5
    end
   end
   local.get $5
   local.set $9
   local.get $9
   i64.const 4604531861337669632
   i64.sub
   local.set $11
   local.get $11
   i64.const 52
   i64.const 7
   i64.sub
   i64.shr_u
   i64.const 127
   i64.and
   i32.wrap_i64
   local.set $12
   local.get $11
   i64.const 52
   i64.shr_s
   local.set $13
   local.get $9
   local.get $11
   i64.const 4095
   i64.const 52
   i64.shl
   i64.and
   i64.sub
   local.set $14
   local.get $14
   f64.reinterpret_i64
   local.set $10
   local.get $13
   f64.convert_i64_s
   local.set $15
   i32.const 2264
   local.get $12
   i32.const 2
   i32.const 3
   i32.add
   i32.shl
   i32.add
   f64.load
   local.set $16
   i32.const 2264
   local.get $12
   i32.const 2
   i32.const 3
   i32.add
   i32.shl
   i32.add
   f64.load offset=16
   local.set $17
   i32.const 2264
   local.get $12
   i32.const 2
   i32.const 3
   i32.add
   i32.shl
   i32.add
   f64.load offset=24
   local.set $18
   local.get $14
   i64.const 2147483648
   i64.add
   i64.const -4294967296
   i64.and
   f64.reinterpret_i64
   local.set $19
   local.get $10
   local.get $19
   f64.sub
   local.set $20
   local.get $19
   local.get $16
   f64.mul
   f64.const 1
   f64.sub
   local.set $21
   local.get $20
   local.get $16
   f64.mul
   local.set $22
   local.get $21
   local.get $22
   f64.add
   local.set $23
   local.get $15
   f64.const 0.6931471805598903
   f64.mul
   local.get $17
   f64.add
   local.set $24
   local.get $24
   local.get $23
   f64.add
   local.set $25
   local.get $15
   f64.const 5.497923018708371e-14
   f64.mul
   local.get $18
   f64.add
   local.set $26
   local.get $24
   local.get $25
   f64.sub
   local.get $23
   f64.add
   local.set $27
   f64.const -0.5
   local.get $23
   f64.mul
   local.set $28
   local.get $23
   local.get $28
   f64.mul
   local.set $29
   local.get $23
   local.get $29
   f64.mul
   local.set $30
   f64.const -0.5
   local.get $21
   f64.mul
   local.set $31
   local.get $21
   local.get $31
   f64.mul
   local.set $32
   local.get $25
   local.get $32
   f64.add
   local.set $33
   local.get $22
   local.get $28
   local.get $31
   f64.add
   f64.mul
   local.set $34
   local.get $25
   local.get $33
   f64.sub
   local.get $32
   f64.add
   local.set $35
   local.get $30
   f64.const -0.6666666666666679
   local.get $23
   f64.const 0.5000000000000007
   f64.mul
   f64.add
   local.get $29
   f64.const 0.7999999995323976
   local.get $23
   f64.const -0.6666666663487739
   f64.mul
   f64.add
   local.get $29
   f64.const -1.142909628459501
   local.get $23
   f64.const 1.0000415263675542
   f64.mul
   f64.add
   f64.mul
   f64.add
   f64.mul
   f64.add
   f64.mul
   local.set $36
   local.get $26
   local.get $27
   f64.add
   local.get $34
   f64.add
   local.get $35
   f64.add
   local.get $36
   f64.add
   local.set $37
   local.get $33
   local.get $37
   f64.add
   local.set $38
   local.get $33
   local.get $38
   f64.sub
   local.get $37
   f64.add
   global.set $~lib/util/math/log_tail
   local.get $38
   local.set $38
   global.get $~lib/util/math/log_tail
   local.set $37
   local.get $6
   i64.const -134217728
   i64.and
   f64.reinterpret_i64
   local.set $34
   local.get $2
   local.get $34
   f64.sub
   local.set $33
   local.get $38
   i64.reinterpret_f64
   i64.const -134217728
   i64.and
   f64.reinterpret_i64
   local.set $32
   local.get $38
   local.get $32
   f64.sub
   local.get $37
   f64.add
   local.set $31
   local.get $34
   local.get $32
   f64.mul
   local.set $36
   local.get $33
   local.get $32
   f64.mul
   local.get $2
   local.get $31
   f64.mul
   f64.add
   local.set $35
   block $~lib/util/math/exp_inline|inlined.0 (result f64)
    local.get $36
    local.set $15
    local.get $35
    local.set $10
    local.get $4
    local.set $12
    local.get $15
    i64.reinterpret_f64
    local.set $9
    local.get $9
    i64.const 52
    i64.shr_u
    i32.wrap_i64
    i32.const 2047
    i32.and
    local.set $39
    local.get $39
    i32.const 969
    i32.sub
    i32.const 63
    i32.ge_u
    if
     local.get $39
     i32.const 969
     i32.sub
     i32.const -2147483648
     i32.ge_u
     if
      f64.const -1
      f64.const 1
      local.get $12
      select
      br $~lib/util/math/exp_inline|inlined.0
     end
     local.get $39
     i32.const 1033
     i32.ge_u
     if
      local.get $9
      i64.const 63
      i64.shr_u
      i64.const 0
      i64.ne
      if (result f64)
       local.get $12
       local.set $41
       local.get $41
       local.set $42
       i64.const 1152921504606846976
       f64.reinterpret_i64
       local.set $16
       local.get $16
       f64.neg
       local.get $16
       local.get $42
       select
       local.get $16
       f64.mul
      else
       local.get $12
       local.set $42
       local.get $42
       local.set $41
       i64.const 8070450532247928832
       f64.reinterpret_i64
       local.set $17
       local.get $17
       f64.neg
       local.get $17
       local.get $41
       select
       local.get $17
       f64.mul
      end
      br $~lib/util/math/exp_inline|inlined.0
     end
     i32.const 0
     local.set $39
    end
    f64.const 184.6649652337873
    local.get $15
    f64.mul
    local.set $29
    local.get $29
    f64.const 6755399441055744
    f64.add
    local.set $30
    local.get $30
    i64.reinterpret_f64
    local.set $14
    local.get $30
    f64.const 6755399441055744
    f64.sub
    local.set $30
    local.get $15
    local.get $30
    f64.const -0.005415212348111709
    f64.mul
    f64.add
    local.get $30
    f64.const -1.2864023111638346e-14
    f64.mul
    f64.add
    local.set $28
    local.get $28
    local.get $10
    f64.add
    local.set $28
    local.get $14
    i64.const 127
    i64.and
    i64.const 1
    i64.shl
    i32.wrap_i64
    local.set $40
    local.get $14
    local.get $12
    i64.extend_i32_u
    i64.add
    i64.const 52
    i64.const 7
    i64.sub
    i64.shl
    local.set $13
    i32.const 6360
    local.get $40
    i32.const 3
    i32.shl
    i32.add
    i64.load
    f64.reinterpret_i64
    local.set $25
    i32.const 6360
    local.get $40
    i32.const 3
    i32.shl
    i32.add
    i64.load offset=8
    local.get $13
    i64.add
    local.set $11
    local.get $28
    local.get $28
    f64.mul
    local.set $27
    local.get $25
    local.get $28
    f64.add
    local.get $27
    f64.const 0.49999999999996786
    local.get $28
    f64.const 0.16666666666665886
    f64.mul
    f64.add
    f64.mul
    f64.add
    local.get $27
    local.get $27
    f64.mul
    f64.const 0.0416666808410674
    local.get $28
    f64.const 0.008333335853059549
    f64.mul
    f64.add
    f64.mul
    f64.add
    local.set $24
    local.get $39
    i32.const 0
    i32.eq
    if
     block $~lib/util/math/specialcase|inlined.0 (result f64)
      local.get $24
      local.set $18
      local.get $11
      local.set $44
      local.get $14
      local.set $43
      local.get $43
      i64.const 2147483648
      i64.and
      i64.const 0
      i64.ne
      i32.eqz
      if
       local.get $44
       i64.const 1009
       i64.const 52
       i64.shl
       i64.sub
       local.set $44
       local.get $44
       f64.reinterpret_i64
       local.set $17
       f64.const 5486124068793688683255936e279
       local.get $17
       local.get $17
       local.get $18
       f64.mul
       f64.add
       f64.mul
       br $~lib/util/math/specialcase|inlined.0
      end
      local.get $44
      i64.const 1022
      i64.const 52
      i64.shl
      i64.add
      local.set $44
      local.get $44
      f64.reinterpret_i64
      local.set $17
      local.get $17
      local.get $17
      local.get $18
      f64.mul
      f64.add
      local.set $16
      local.get $16
      f64.abs
      f64.const 1
      f64.lt
      if
       f64.const 1
       local.get $16
       f64.copysign
       local.set $23
       local.get $17
       local.get $16
       f64.sub
       local.get $17
       local.get $18
       f64.mul
       f64.add
       local.set $22
       local.get $23
       local.get $16
       f64.add
       local.set $21
       local.get $23
       local.get $21
       f64.sub
       local.get $16
       f64.add
       local.get $22
       f64.add
       local.set $22
       local.get $21
       local.get $22
       f64.add
       local.get $23
       f64.sub
       local.set $16
       local.get $16
       f64.const 0
       f64.eq
       if
        local.get $44
        i64.const -9223372036854775808
        i64.and
        f64.reinterpret_i64
        local.set $16
       end
      end
      local.get $16
      f64.const 2.2250738585072014e-308
      f64.mul
     end
     br $~lib/util/math/exp_inline|inlined.0
    end
    local.get $11
    f64.reinterpret_i64
    local.set $26
    local.get $26
    local.get $26
    local.get $24
    f64.mul
    f64.add
   end
  end
  return
 )
 (func $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBeCloseTo (param $0 i32) (param $1 f64) (param $2 i32) (param $3 i32)
  (local $4 f64)
  (local $5 i32)
  (local $6 i32)
  local.get $3
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $0
  f64.load offset=8
  local.set $4
  local.get $0
  i32.load
  local.set $5
  i32.const 1
  i32.eqz
  drop
  local.get $4
  call $node_modules/@as-pect/assembly/assembly/internal/Actual/Actual.report<f64>
  local.get $1
  local.get $5
  call $node_modules/@as-pect/assembly/assembly/internal/Expected/Expected.report<f64>
  local.get $4
  local.get $4
  f64.sub
  f64.const 0
  f64.eq
  i32.const 1984
  call $node_modules/@as-pect/assembly/assembly/internal/assert/assert
  local.get $1
  local.get $1
  f64.sub
  f64.const 0
  f64.eq
  i32.const 2128
  call $node_modules/@as-pect/assembly/assembly/internal/assert/assert
  local.get $1
  local.get $4
  f64.sub
  f64.abs
  f64.const 0.1
  local.get $2
  f64.convert_i32_s
  call $~lib/math/NativeMath.pow
  f64.lt
  local.set $6
  local.get $5
  local.get $6
  i32.xor
  local.get $3
  call $node_modules/@as-pect/assembly/assembly/internal/assert/assert
  call $node_modules/@as-pect/assembly/assembly/internal/Actual/Actual.clear
  call $node_modules/@as-pect/assembly/assembly/internal/Expected/Expected.clear
  local.get $3
  call $~lib/rt/pure/__release
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
  (local $23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 i32)
  (local $28 i32)
  (local $29 i32)
  (local $30 i32)
  (local $31 i32)
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
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<bool>
  local.tee $4
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<bool>#toBeFalsy
  local.get $2
  local.get $1
  call $src/as/math/Matrix4/Matrix4#getInverse
  drop
  local.get $2
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  local.tee $5
  f64.const 0.0001
  call $src/as/math/Matrix4/matrixEquals4
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<bool>
  local.tee $6
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<bool>#toBeTruthy
  local.get $2
  local.get $3
  call $src/as/math/Matrix4/Matrix4#getInverse
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<bool>
  local.tee $7
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<bool>#toBeFalsy
  i32.const 11
  i32.const 2
  i32.const 15
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $8
  local.get $8
  i32.load offset=4
  local.set $9
  local.get $9
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  i32.store
  local.get $9
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  i32.store offset=4
  local.get $9
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  i32.store offset=8
  local.get $9
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  i32.store offset=12
  local.get $9
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  i32.store offset=16
  local.get $9
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  i32.store offset=20
  local.get $9
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  i32.store offset=24
  local.get $9
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  i32.store offset=28
  local.get $9
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  i32.store offset=32
  local.get $9
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  i32.store offset=36
  local.get $9
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  i32.store offset=40
  local.get $8
  local.set $10
  local.get $10
  i32.const 0
  call $~lib/array/Array<src/as/math/Matrix4/Matrix4>#__get
  local.tee $9
  f64.const 0.3
  call $src/as/math/Matrix4/Matrix4#makeRotationX
  call $~lib/rt/pure/__release
  local.get $10
  i32.const 1
  call $~lib/array/Array<src/as/math/Matrix4/Matrix4>#__get
  local.tee $8
  f64.const -0.3
  call $src/as/math/Matrix4/Matrix4#makeRotationX
  call $~lib/rt/pure/__release
  local.get $10
  i32.const 2
  call $~lib/array/Array<src/as/math/Matrix4/Matrix4>#__get
  local.tee $11
  f64.const 0.3
  call $src/as/math/Matrix4/Matrix4#makeRotationY
  call $~lib/rt/pure/__release
  local.get $10
  i32.const 3
  call $~lib/array/Array<src/as/math/Matrix4/Matrix4>#__get
  local.tee $12
  f64.const -0.3
  call $src/as/math/Matrix4/Matrix4#makeRotationY
  call $~lib/rt/pure/__release
  local.get $10
  i32.const 4
  call $~lib/array/Array<src/as/math/Matrix4/Matrix4>#__get
  local.tee $13
  f64.const 0.3
  call $src/as/math/Matrix4/Matrix4#makeRotationZ
  call $~lib/rt/pure/__release
  local.get $10
  i32.const 5
  call $~lib/array/Array<src/as/math/Matrix4/Matrix4>#__get
  local.tee $14
  f64.const -0.3
  call $src/as/math/Matrix4/Matrix4#makeRotationZ
  call $~lib/rt/pure/__release
  local.get $10
  i32.const 6
  call $~lib/array/Array<src/as/math/Matrix4/Matrix4>#__get
  local.tee $15
  f64.const 1
  f64.const 2
  f64.const 3
  call $src/as/math/Matrix4/Matrix4#makeScale
  call $~lib/rt/pure/__release
  local.get $10
  i32.const 7
  call $~lib/array/Array<src/as/math/Matrix4/Matrix4>#__get
  local.tee $16
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
  local.get $10
  i32.const 8
  call $~lib/array/Array<src/as/math/Matrix4/Matrix4>#__get
  local.tee $17
  f64.const -1
  f64.const 1
  f64.const 1
  f64.const -1
  f64.const 1
  f64.const 1e3
  call $src/as/math/Matrix4/Matrix4#makePerspective
  call $~lib/rt/pure/__release
  local.get $10
  i32.const 9
  call $~lib/array/Array<src/as/math/Matrix4/Matrix4>#__get
  local.tee $18
  f64.const -16
  f64.const 16
  f64.const 9
  f64.const -9
  f64.const 0.1
  f64.const 1e4
  call $src/as/math/Matrix4/Matrix4#makePerspective
  call $~lib/rt/pure/__release
  local.get $10
  i32.const 10
  call $~lib/array/Array<src/as/math/Matrix4/Matrix4>#__get
  local.tee $19
  f64.const 1
  f64.const 2
  f64.const 3
  call $src/as/math/Matrix4/Matrix4#makeTranslation
  call $~lib/rt/pure/__release
  i32.const 0
  local.set $20
  local.get $10
  call $~lib/array/Array<src/as/math/Matrix4/Matrix4>#get:length
  local.set $21
  loop $for-loop|0
   local.get $20
   local.get $21
   i32.lt_s
   local.set $22
   local.get $22
   if
    local.get $10
    local.get $20
    call $~lib/array/Array<src/as/math/Matrix4/Matrix4>#__get
    local.set $23
    i32.const 0
    call $src/as/math/Matrix4/Matrix4#constructor
    local.set $24
    local.get $24
    local.get $23
    call $src/as/math/Matrix4/Matrix4#getInverse
    call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<bool>
    local.tee $25
    i32.const 848
    call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<bool>#toBeTruthy
    local.get $23
    call $src/as/math/Matrix4/Matrix4#clone
    local.set $26
    local.get $26
    local.get $26
    call $src/as/math/Matrix4/Matrix4#getInverse
    drop
    local.get $26
    local.get $24
    f64.const 0.0001
    call $src/as/math/Matrix4/matrixEquals4
    call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<bool>
    local.tee $27
    i32.const 848
    call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<bool>#toBeTruthy
    local.get $23
    call $src/as/math/Matrix4/Matrix4#determinant
    local.get $24
    call $src/as/math/Matrix4/Matrix4#determinant
    f64.mul
    call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
    local.tee $28
    f64.const 1
    i32.const 2
    i32.const 848
    call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBeCloseTo
    i32.const 0
    call $src/as/math/Matrix4/Matrix4#constructor
    local.set $29
    local.get $29
    local.get $23
    local.get $24
    call $src/as/math/Matrix4/Matrix4#multiplyMatrices
    call $~lib/rt/pure/__release
    local.get $29
    call $src/as/math/Matrix4/Matrix4#determinant
    call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
    local.tee $30
    f64.const 1
    i32.const 2
    i32.const 848
    call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBeCloseTo
    local.get $29
    local.get $0
    f64.const 0.0001
    call $src/as/math/Matrix4/matrixEquals4
    call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<bool>
    local.tee $31
    i32.const 848
    call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<bool>#toBeTruthy
    local.get $25
    call $~lib/rt/pure/__release
    local.get $27
    call $~lib/rt/pure/__release
    local.get $28
    call $~lib/rt/pure/__release
    local.get $30
    call $~lib/rt/pure/__release
    local.get $31
    call $~lib/rt/pure/__release
    local.get $20
    i32.const 1
    i32.add
    local.set $20
    br $for-loop|0
   end
  end
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $8
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
  local.get $19
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $10
  call $~lib/rt/pure/__release
  local.get $23
  call $~lib/rt/pure/__release
  local.get $24
  call $~lib/rt/pure/__release
  local.get $26
  call $~lib/rt/pure/__release
  local.get $29
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
  (local $3 i32)
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
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<f64>
  local.tee $3
  local.get $2
  i32.const 2
  i32.const 848
  call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<f64>#toBeCloseTo
  local.get $3
  call $~lib/rt/pure/__release
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
   i32.const 1216
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
   i32.const 1216
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
  (local $21 i32)
  i32.const 9
  i32.const 2
  i32.const 16
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
  i32.const 16
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
  i32.const 17
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
        call $node_modules/@as-pect/assembly/assembly/internal/Expectation/expect<bool>
        local.tee $21
        i32.const 848
        call $node_modules/@as-pect/assembly/assembly/internal/Expectation/Expectation<bool>#toBeTruthy
        local.get $21
        call $~lib/rt/pure/__release
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
  i32.const 2
  call $node_modules/@as-pect/assembly/assembly/internal/Test/test
  i32.const 896
  call $node_modules/@as-pect/assembly/assembly/internal/Test/todo
  i32.const 944
  i32.const 3
  call $node_modules/@as-pect/assembly/assembly/internal/Test/test
  i32.const 976
  i32.const 4
  call $node_modules/@as-pect/assembly/assembly/internal/Test/test
  i32.const 1008
  i32.const 5
  call $node_modules/@as-pect/assembly/assembly/internal/Test/test
  i32.const 1040
  i32.const 6
  call $node_modules/@as-pect/assembly/assembly/internal/Test/test
  i32.const 1072
  call $node_modules/@as-pect/assembly/assembly/internal/Test/todo
  i32.const 1120
  i32.const 8
  call $node_modules/@as-pect/assembly/assembly/internal/Test/test
  i32.const 1712
  call $node_modules/@as-pect/assembly/assembly/internal/Test/todo
  i32.const 1744
  call $node_modules/@as-pect/assembly/assembly/internal/Test/todo
  i32.const 1792
  i32.const 9
  call $node_modules/@as-pect/assembly/assembly/internal/Test/test
  i32.const 1840
  i32.const 10
  call $node_modules/@as-pect/assembly/assembly/internal/Test/test
  i32.const 1888
  call $node_modules/@as-pect/assembly/assembly/internal/Test/todo
  i32.const 1936
  i32.const 11
  call $node_modules/@as-pect/assembly/assembly/internal/Test/test
  i32.const 8432
  call $node_modules/@as-pect/assembly/assembly/internal/Test/todo
  i32.const 8464
  i32.const 12
  call $node_modules/@as-pect/assembly/assembly/internal/Test/test
  i32.const 8528
  call $node_modules/@as-pect/assembly/assembly/internal/Test/todo
  i32.const 8576
  call $node_modules/@as-pect/assembly/assembly/internal/Test/todo
  i32.const 8624
  call $node_modules/@as-pect/assembly/assembly/internal/Test/todo
  i32.const 8672
  call $node_modules/@as-pect/assembly/assembly/internal/Test/todo
  i32.const 8720
  call $node_modules/@as-pect/assembly/assembly/internal/Test/todo
  i32.const 8768
  call $node_modules/@as-pect/assembly/assembly/internal/Test/todo
  i32.const 8816
  i32.const 13
  call $node_modules/@as-pect/assembly/assembly/internal/Test/test
  i32.const 8880
  call $node_modules/@as-pect/assembly/assembly/internal/Test/todo
  i32.const 8928
  call $node_modules/@as-pect/assembly/assembly/internal/Test/todo
 )
 (func $start:src/as/math/Matrix4.spec~anonymous|0
  i32.const 368
  i32.const 14
  call $node_modules/@as-pect/assembly/assembly/internal/Test/describe
 )
 (func $start:src/as/math/Matrix4.spec
  call $start:src/as/math/Matrix4
  call $start:src/as/core/BufferAttribute
  call $start:src/as/math/Constants.tests
  i32.const 336
  i32.const 15
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
  i32.const 18
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
   block $switch$1$case$20
    block $switch$1$case$19
     block $switch$1$case$18
      block $switch$1$case$17
       block $switch$1$case$16
        block $switch$1$case$13
         block $switch$1$case$7
          block $switch$1$case$6
           block $switch$1$case$4
            block $switch$1$case$2
             local.get $0
             i32.const 8
             i32.sub
             i32.load
             br_table $switch$1$case$2 $switch$1$case$2 $switch$1$case$4 $switch$1$case$4 $switch$1$case$6 $switch$1$case$7 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$2 $switch$1$case$13 $switch$1$case$2 $switch$1$case$2 $switch$1$case$16 $switch$1$case$17 $switch$1$case$18 $switch$1$case$19 $switch$1$case$20 $switch$1$default
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
