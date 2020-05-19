(module
 (type $none_=>_none (func))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_=>_none (func (param i32)))
 (type $i32_=>_i32 (func (param i32) (result i32)))
 (type $i32_i32_i32_=>_i32 (func (param i32 i32 i32) (result i32)))
 (type $i32_i32_i32_=>_none (func (param i32 i32 i32)))
 (type $i32_i32_=>_f64 (func (param i32 i32) (result f64)))
 (type $i32_f64_=>_i32 (func (param i32 f64) (result i32)))
 (type $i32_f64_f64_f64_=>_i32 (func (param i32 f64 f64 f64) (result i32)))
 (type $i32_i32_f64_=>_none (func (param i32 i32 f64)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_i32_i32_=>_none (func (param i32 i32 i32 i32)))
 (type $i32_i32_i32_i32_=>_i32 (func (param i32 i32 i32 i32) (result i32)))
 (type $i32_i32_f64_=>_i32 (func (param i32 i32 f64) (result i32)))
 (type $i32_f64_f64_f64_f64_=>_i32 (func (param i32 f64 f64 f64 f64) (result i32)))
 (type $i32_f64_f64_f64_f64_f64_f64_f64_f64_f64_f64_f64_f64_f64_f64_f64_f64_=>_i32 (func (param i32 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64 f64) (result i32)))
 (import "env" "memory" (memory $0 1))
 (data (i32.const 16) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00")
 (data (i32.const 64) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00")
 (data (i32.const 128) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00p\00u\00r\00e\00.\00t\00s\00")
 (data (i32.const 176) "\80\00\00\00\01\00\00\00\00\00\00\00\80\00\00\00\00\00\00\00\00\00\f0?\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0?\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0?\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0?")
 (data (i32.const 320) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00B\00o\00x\003\00")
 (data (i32.const 352) "\16\00\00\00\01\00\00\00\01\00\00\00\16\00\00\00c\00o\00n\00s\00t\00r\00u\00c\00t\00o\00r\00")
 (data (i32.const 400) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00P\00a\00s\00s\00e\00d\00!\00")
 (data (i32.const 432) "0\00\00\00\01\00\00\00\01\00\00\000\00\00\00s\00r\00c\00/\00a\00s\00/\00m\00a\00t\00h\00/\00B\00o\00x\003\00.\00s\00p\00e\00c\00.\00t\00s\00")
 (data (i32.const 496) "\06\00\00\00\01\00\00\00\01\00\00\00\06\00\00\00s\00e\00t\00")
 (data (i32.const 528) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00s\00e\00t\00F\00r\00o\00m\00A\00r\00r\00a\00y\00")
 (data (i32.const 576) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00s\00e\00t\00F\00r\00o\00m\00P\00o\00i\00n\00t\00s\00")
 (data (i32.const 624) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00")
 (data (i32.const 688) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 736) "^\00\00\00\01\00\00\00\01\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y\00")
 (data (i32.const 848) "\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 864) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00c\00l\00o\00n\00e\00")
 (data (i32.const 896) "\08\00\00\00\01\00\00\00\01\00\00\00\08\00\00\00c\00o\00p\00y\00")
 (data (i32.const 928) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00i\00s\00E\00m\00p\00t\00y\00/\00m\00a\00k\00e\00E\00m\00p\00t\00y\00")
 (data (i32.const 992) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00g\00e\00t\00C\00e\00n\00t\00e\00r\00")
 (data (i32.const 1040) "\0e\00\00\00\01\00\00\00\01\00\00\00\0e\00\00\00g\00e\00t\00S\00i\00z\00e\00")
 (data (i32.const 1072) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00e\00x\00p\00a\00n\00d\00B\00y\00P\00o\00i\00n\00t\00")
 (data (i32.const 1120) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00e\00x\00p\00a\00n\00d\00B\00y\00S\00c\00a\00l\00a\00r\00")
 (data (i32.const 1168) "\18\00\00\00\01\00\00\00\01\00\00\00\18\00\00\00a\00p\00p\00l\00y\00M\00a\00t\00r\00i\00x\004\00")
 (data (i32.const 1216) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data (i32.const 1264) "\12\00\00\00\01\00\00\00\01\00\00\00\12\00\00\00t\00r\00a\00n\00s\00l\00a\00t\00e\00")
 (data (i32.const 1312) "\0c\00\00\00\01\00\00\00\01\00\00\00\0c\00\00\00e\00q\00u\00a\00l\00s\00")
 (data (i32.const 1344) "\0b\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00\"\1a\00\00\00\00\00\00\"\t\00\00\00\00\00\00 \00\00\00\00\00\00\00 \00\00\00\00\00\00\00\"A\00\00\00\00\00\00 \00\00\00\00\00\00\00\"\01\00\00\00\00\00\00")
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "rtrace" "onalloc" (func $~lib/rt/rtrace/onalloc (param i32)))
 (import "rtrace" "onincrement" (func $~lib/rt/rtrace/onincrement (param i32)))
 (import "__aspect" "reportTestTypeNode" (func $node_modules/@as-pect/assembly/assembly/internal/Test/test (param i32 i32)))
 (import "__aspect" "reportTodo" (func $node_modules/@as-pect/assembly/assembly/internal/Test/todo (param i32)))
 (import "rtrace" "onrealloc" (func $~lib/rt/rtrace/onrealloc (param i32 i32)))
 (import "rtrace" "onfree" (func $~lib/rt/rtrace/onfree (param i32)))
 (import "__aspect" "reportGroupTypeNode" (func $node_modules/@as-pect/assembly/assembly/internal/Test/describe (param i32 i32)))
 (import "rtrace" "ondecrement" (func $~lib/rt/rtrace/ondecrement (param i32)))
 (table $0 15 funcref)
 (elem (i32.const 1) $src/as/math/Quaternion/Quaternion#constructor~anonymous|0 $start:src/as/math/Box3.spec~anonymous|0~anonymous|0 $start:src/as/math/Box3.spec~anonymous|0~anonymous|1 $start:src/as/math/Box3.spec~anonymous|0~anonymous|2 $start:src/as/math/Box3.spec~anonymous|0~anonymous|3 $start:src/as/math/Box3.spec~anonymous|0~anonymous|4 $start:src/as/math/Box3.spec~anonymous|0~anonymous|5 $start:src/as/math/Box3.spec~anonymous|0~anonymous|6 $start:src/as/math/Box3.spec~anonymous|0~anonymous|7 $start:src/as/math/Box3.spec~anonymous|0~anonymous|8 $start:src/as/math/Box3.spec~anonymous|0~anonymous|9 $start:src/as/math/Box3.spec~anonymous|0~anonymous|10 $start:src/as/math/Box3.spec~anonymous|0 $start:node_modules/@as-pect/assembly/assembly/internal/noOp~anonymous|0)
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
 (global $src/as/math/Box3/points (mut i32) (i32.const 0))
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
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $node_modules/@as-pect/assembly/assembly/internal/noOp/noOp i32 (i32.const 14))
 (global $node_modules/@as-pect/assembly/assembly/internal/log/ignoreLogs (mut i32) (i32.const 0))
 (global $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.FAILED_MATCH i32 (i32.const 0))
 (global $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.SUCCESSFUL_MATCH i32 (i32.const 1))
 (global $node_modules/@as-pect/assembly/assembly/internal/Reflect/Reflect.DEFER_MATCH i32 (i32.const 2))
 (global $node_modules/@as-pect/assembly/assembly/internal/RTrace/RTrace.enabled (mut i32) (i32.const 1))
 (global $~started (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 1344))
 (global $~lib/heap/__heap_base i32 (i32.const 1436))
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
 (func $start:src/as/math/Vector3
  call $start:src/as/math/Matrix4
 )
 (func $src/as/math/Vector3/Vector3#constructor (param $0 i32) (param $1 f64) (param $2 f64) (param $3 f64) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 25
   i32.const 7
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
 (func $start:src/as/math/Box3
  (local $0 i32)
  (local $1 i32)
  call $start:src/as/math/Vector3
  i32.const 8
  i32.const 2
  i32.const 8
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
  f64.const 0
  f64.const 0
  f64.const 0
  call $src/as/math/Vector3/Vector3#constructor
  i32.store offset=4
  local.get $1
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $src/as/math/Vector3/Vector3#constructor
  i32.store offset=8
  local.get $1
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $src/as/math/Vector3/Vector3#constructor
  i32.store offset=12
  local.get $1
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $src/as/math/Vector3/Vector3#constructor
  i32.store offset=16
  local.get $1
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $src/as/math/Vector3/Vector3#constructor
  i32.store offset=20
  local.get $1
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $src/as/math/Vector3/Vector3#constructor
  i32.store offset=24
  local.get $1
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $src/as/math/Vector3/Vector3#constructor
  i32.store offset=28
  local.get $0
  global.set $src/as/math/Box3/points
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
 (func $src/as/math/Box3/Box3#constructor (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.eqz
  if
   i32.const 9
   i32.const 9
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
  i32.const 1
  i32.store8 offset=8
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  local.tee $3
  local.get $1
  local.tee $4
  local.get $3
  i32.load offset=4
  local.tee $5
  i32.ne
  if
   local.get $4
   call $~lib/rt/pure/__retain
   local.set $4
   local.get $5
   call $~lib/rt/pure/__release
  end
  local.get $4
  i32.store offset=4
  local.get $0
  local.tee $5
  local.get $2
  local.tee $4
  local.get $5
  i32.load
  local.tee $3
  i32.ne
  if
   local.get $4
   call $~lib/rt/pure/__retain
   local.set $4
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $4
  i32.store
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $src/as/math/Box3/Box3#constructor@varargs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
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
    f64.const inf
    f64.const inf
    f64.const inf
    call $src/as/math/Vector3/Vector3#constructor
    local.tee $3
    local.set $1
   end
   i32.const 0
   f64.const inf
   f64.neg
   f64.const inf
   f64.neg
   f64.const inf
   f64.neg
   call $src/as/math/Vector3/Vector3#constructor
   local.tee $4
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $src/as/math/Box3/Box3#constructor
  local.set $5
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
 )
 (func $src/as/math/Vector3/Vector3#equals (param $0 i32) (param $1 i32) (result i32)
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
 (func $src/as/math/Vector3/Vector3#clone (param $0 i32) (result i32)
  i32.const 0
  local.get $0
  f64.load
  local.get $0
  f64.load offset=8
  local.get $0
  f64.load offset=16
  call $src/as/math/Vector3/Vector3#constructor
 )
 (func $start:src/as/math/Box3.spec~anonymous|0~anonymous|0
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 0
  i32.const 0
  i32.const 0
  global.set $~argumentsLength
  i32.const 0
  call $src/as/math/Box3/Box3#constructor@varargs
  local.set $0
  local.get $0
  i32.load offset=4
  global.get $src/as/math/Constants.tests/posInf3
  call $src/as/math/Vector3/Vector3#equals
  i32.eqz
  if
   i32.const 416
   i32.const 448
   i32.const 21
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  global.get $src/as/math/Constants.tests/negInf3
  call $src/as/math/Vector3/Vector3#equals
  i32.eqz
  if
   i32.const 416
   i32.const 448
   i32.const 22
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.get $src/as/math/Constants.tests/zero3
  call $src/as/math/Vector3/Vector3#clone
  local.tee $1
  global.get $src/as/math/Constants.tests/zero3
  call $src/as/math/Vector3/Vector3#clone
  local.tee $2
  call $src/as/math/Box3/Box3#constructor
  local.set $3
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  local.set $0
  local.get $0
  i32.load offset=4
  global.get $src/as/math/Constants.tests/zero3
  call $src/as/math/Vector3/Vector3#equals
  i32.eqz
  if
   i32.const 416
   i32.const 448
   i32.const 25
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  global.get $src/as/math/Constants.tests/zero3
  call $src/as/math/Vector3/Vector3#equals
  i32.eqz
  if
   i32.const 416
   i32.const 448
   i32.const 26
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.get $src/as/math/Constants.tests/zero3
  call $src/as/math/Vector3/Vector3#clone
  local.tee $3
  global.get $src/as/math/Constants.tests/one3
  call $src/as/math/Vector3/Vector3#clone
  local.tee $4
  call $src/as/math/Box3/Box3#constructor
  local.set $5
  local.get $0
  call $~lib/rt/pure/__release
  local.get $5
  local.set $0
  local.get $0
  i32.load offset=4
  global.get $src/as/math/Constants.tests/zero3
  call $src/as/math/Vector3/Vector3#equals
  i32.eqz
  if
   i32.const 416
   i32.const 448
   i32.const 29
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  global.get $src/as/math/Constants.tests/one3
  call $src/as/math/Vector3/Vector3#equals
  i32.eqz
  if
   i32.const 416
   i32.const 448
   i32.const 30
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
  local.get $4
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $src/as/math/Vector3/Vector3#copy (param $0 i32) (param $1 i32) (result i32)
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
 (func $src/as/math/Box3/Box3#set (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  i32.load offset=4
  local.get $1
  call $src/as/math/Vector3/Vector3#copy
  call $~lib/rt/pure/__release
  local.get $0
  i32.load
  local.get $2
  call $src/as/math/Vector3/Vector3#copy
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
 (func $start:src/as/math/Box3.spec~anonymous|0~anonymous|1
  (local $0 i32)
  i32.const 0
  i32.const 0
  i32.const 0
  global.set $~argumentsLength
  i32.const 0
  call $src/as/math/Box3/Box3#constructor@varargs
  local.set $0
  local.get $0
  global.get $src/as/math/Constants.tests/zero3
  global.get $src/as/math/Constants.tests/one3
  call $src/as/math/Box3/Box3#set
  call $~lib/rt/pure/__release
  local.get $0
  i32.load offset=4
  global.get $src/as/math/Constants.tests/zero3
  call $src/as/math/Vector3/Vector3#equals
  i32.eqz
  if
   i32.const 416
   i32.const 448
   i32.const 37
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  global.get $src/as/math/Constants.tests/one3
  call $src/as/math/Vector3/Vector3#equals
  i32.eqz
  if
   i32.const 416
   i32.const 448
   i32.const 38
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $src/as/math/Box3/Box3#makeEmpty (param $0 i32) (result i32)
  (local $1 f64)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load offset=4
  f64.const inf
  local.tee $1
  f64.store offset=16
  local.get $1
  local.tee $1
  f64.store offset=8
  local.get $1
  f64.store
  local.get $0
  i32.load
  local.get $0
  i32.load
  local.get $0
  i32.load
  f64.const inf
  f64.neg
  local.tee $1
  f64.store offset=16
  local.get $1
  local.tee $1
  f64.store offset=8
  local.get $1
  f64.store
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $~lib/array/Array<src/as/math/Vector3/Vector3>#get:length (param $0 i32) (result i32)
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
   i32.const 640
   i32.const 704
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
   i32.const 752
   i32.const 704
   i32.const 108
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
 )
 (func $src/as/math/Vector3/Vector3#min (param $0 i32) (param $1 i32) (result i32)
  (local $2 f64)
  (local $3 f64)
  (local $4 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  local.get $0
  f64.load
  local.set $3
  local.get $1
  f64.load
  local.set $2
  local.get $3
  local.get $2
  f64.min
  f64.store
  local.get $0
  local.get $0
  f64.load offset=8
  local.set $3
  local.get $1
  f64.load offset=8
  local.set $2
  local.get $3
  local.get $2
  f64.min
  f64.store offset=8
  local.get $0
  local.get $0
  f64.load offset=16
  local.set $3
  local.get $1
  f64.load offset=16
  local.set $2
  local.get $3
  local.get $2
  f64.min
  f64.store offset=16
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $src/as/math/Vector3/Vector3#max (param $0 i32) (param $1 i32) (result i32)
  (local $2 f64)
  (local $3 f64)
  (local $4 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  local.get $0
  f64.load
  local.set $3
  local.get $1
  f64.load
  local.set $2
  local.get $3
  local.get $2
  f64.max
  f64.store
  local.get $0
  local.get $0
  f64.load offset=8
  local.set $3
  local.get $1
  f64.load offset=8
  local.set $2
  local.get $3
  local.get $2
  f64.max
  f64.store offset=8
  local.get $0
  local.get $0
  f64.load offset=16
  local.set $3
  local.get $1
  f64.load offset=16
  local.set $2
  local.get $3
  local.get $2
  f64.max
  f64.store offset=16
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $4
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $src/as/math/Box3/Box3#expandByPoint (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.get $1
  call $src/as/math/Vector3/Vector3#min
  call $~lib/rt/pure/__release
  local.get $0
  i32.load
  local.get $1
  call $src/as/math/Vector3/Vector3#max
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $src/as/math/Box3/Box3#setFromPoints (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  call $src/as/math/Box3/Box3#makeEmpty
  call $~lib/rt/pure/__release
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
    local.tee $5
    call $src/as/math/Box3/Box3#expandByPoint
    call $~lib/rt/pure/__release
    local.get $5
    call $~lib/rt/pure/__release
    local.get $2
    i32.const 1
    i32.add
    local.set $2
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
 (func $src/as/math/Box3/Box3#isEmpty (param $0 i32) (result i32)
  local.get $0
  i32.load
  f64.load
  local.get $0
  i32.load offset=4
  f64.load
  f64.lt
  if (result i32)
   i32.const 1
  else
   local.get $0
   i32.load
   f64.load offset=8
   local.get $0
   i32.load offset=4
   f64.load offset=8
   f64.lt
  end
  if (result i32)
   i32.const 1
  else
   local.get $0
   i32.load
   f64.load offset=16
   local.get $0
   i32.load offset=4
   f64.load offset=16
   f64.lt
  end
 )
 (func $start:src/as/math/Box3.spec~anonymous|0~anonymous|2
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 0
  i32.const 0
  i32.const 0
  global.set $~argumentsLength
  i32.const 0
  call $src/as/math/Box3/Box3#constructor@varargs
  local.set $0
  local.get $0
  i32.const 3
  i32.const 2
  i32.const 8
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.load offset=4
  local.set $2
  local.get $2
  global.get $src/as/math/Constants.tests/zero3
  call $~lib/rt/pure/__retain
  i32.store
  local.get $2
  global.get $src/as/math/Constants.tests/one3
  call $~lib/rt/pure/__retain
  i32.store offset=4
  local.get $2
  global.get $src/as/math/Constants.tests/two3
  call $~lib/rt/pure/__retain
  i32.store offset=8
  local.get $1
  local.tee $2
  call $src/as/math/Box3/Box3#setFromPoints
  call $~lib/rt/pure/__release
  local.get $0
  i32.load offset=4
  global.get $src/as/math/Constants.tests/zero3
  call $src/as/math/Vector3/Vector3#equals
  i32.eqz
  if
   i32.const 416
   i32.const 448
   i32.const 66
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  global.get $src/as/math/Constants.tests/two3
  call $src/as/math/Vector3/Vector3#equals
  i32.eqz
  if
   i32.const 416
   i32.const 448
   i32.const 67
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const 2
  i32.const 8
  i32.const 0
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.load offset=4
  local.set $3
  local.get $3
  global.get $src/as/math/Constants.tests/one3
  call $~lib/rt/pure/__retain
  i32.store
  local.get $1
  local.tee $3
  call $src/as/math/Box3/Box3#setFromPoints
  call $~lib/rt/pure/__release
  local.get $0
  i32.load offset=4
  global.get $src/as/math/Constants.tests/one3
  call $src/as/math/Vector3/Vector3#equals
  i32.eqz
  if
   i32.const 416
   i32.const 448
   i32.const 70
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  global.get $src/as/math/Constants.tests/one3
  call $src/as/math/Vector3/Vector3#equals
  i32.eqz
  if
   i32.const 416
   i32.const 448
   i32.const 71
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  i32.const 2
  i32.const 8
  i32.const 864
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $src/as/math/Box3/Box3#setFromPoints
  call $~lib/rt/pure/__release
  local.get $0
  call $src/as/math/Box3/Box3#isEmpty
  i32.eqz
  if
   i32.const 416
   i32.const 448
   i32.const 74
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $src/as/math/Box3/Box3#copy (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.get $1
  i32.load offset=4
  call $src/as/math/Vector3/Vector3#copy
  call $~lib/rt/pure/__release
  local.get $0
  i32.load
  local.get $1
  i32.load
  call $src/as/math/Vector3/Vector3#copy
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $start:src/as/math/Box3.spec~anonymous|0~anonymous|3
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 0
  global.get $src/as/math/Constants.tests/zero3
  call $src/as/math/Vector3/Vector3#clone
  local.tee $0
  global.get $src/as/math/Constants.tests/one3
  call $src/as/math/Vector3/Vector3#clone
  local.tee $1
  call $src/as/math/Box3/Box3#constructor
  local.set $2
  i32.const 0
  i32.const 0
  i32.const 0
  global.set $~argumentsLength
  i32.const 0
  call $src/as/math/Box3/Box3#constructor@varargs
  local.set $3
  local.get $3
  local.get $2
  call $src/as/math/Box3/Box3#copy
  call $~lib/rt/pure/__release
  local.get $3
  i32.load offset=4
  global.get $src/as/math/Constants.tests/zero3
  call $src/as/math/Vector3/Vector3#equals
  i32.eqz
  if
   i32.const 416
   i32.const 448
   i32.const 125
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load
  global.get $src/as/math/Constants.tests/one3
  call $src/as/math/Vector3/Vector3#equals
  i32.eqz
  if
   i32.const 416
   i32.const 448
   i32.const 126
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.tee $4
  global.get $src/as/math/Constants.tests/zero3
  local.tee $5
  local.get $4
  i32.load offset=4
  local.tee $6
  i32.ne
  if
   local.get $5
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $6
   call $~lib/rt/pure/__release
  end
  local.get $5
  i32.store offset=4
  local.get $2
  local.tee $6
  global.get $src/as/math/Constants.tests/one3
  local.tee $5
  local.get $6
  i32.load
  local.tee $4
  i32.ne
  if
   local.get $5
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $4
   call $~lib/rt/pure/__release
  end
  local.get $5
  i32.store
  local.get $3
  i32.load offset=4
  global.get $src/as/math/Constants.tests/zero3
  call $src/as/math/Vector3/Vector3#equals
  i32.eqz
  if
   i32.const 416
   i32.const 448
   i32.const 131
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load
  global.get $src/as/math/Constants.tests/one3
  call $src/as/math/Vector3/Vector3#equals
  i32.eqz
  if
   i32.const 416
   i32.const 448
   i32.const 132
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
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $start:src/as/math/Box3.spec~anonymous|0~anonymous|4
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 0
  i32.const 0
  global.set $~argumentsLength
  i32.const 0
  call $src/as/math/Box3/Box3#constructor@varargs
  local.set $0
  local.get $0
  call $src/as/math/Box3/Box3#isEmpty
  i32.eqz
  if
   i32.const 416
   i32.const 448
   i32.const 138
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.get $src/as/math/Constants.tests/zero3
  call $src/as/math/Vector3/Vector3#clone
  local.tee $1
  global.get $src/as/math/Constants.tests/one3
  call $src/as/math/Vector3/Vector3#clone
  local.tee $2
  call $src/as/math/Box3/Box3#constructor
  local.set $3
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  local.set $0
  local.get $0
  call $src/as/math/Box3/Box3#isEmpty
  i32.eqz
  i32.eqz
  if
   i32.const 416
   i32.const 448
   i32.const 141
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $src/as/math/Box3/Box3#makeEmpty
  call $~lib/rt/pure/__release
  local.get $0
  call $src/as/math/Box3/Box3#isEmpty
  i32.eqz
  if
   i32.const 416
   i32.const 448
   i32.const 144
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
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
 (func $src/as/math/Vector3/Vector3#addVectors (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  local.get $1
  f64.load
  local.get $2
  f64.load
  f64.add
  f64.store
  local.get $0
  local.get $1
  f64.load offset=8
  local.get $2
  f64.load offset=8
  f64.add
  f64.store offset=8
  local.get $0
  local.get $1
  f64.load offset=16
  local.get $2
  f64.load offset=16
  f64.add
  f64.store offset=16
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $src/as/math/Vector3/Vector3#multiplyScalar (param $0 i32) (param $1 f64) (result i32)
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
 (func $src/as/math/Box3/Box3#getCenter (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  call $src/as/math/Box3/Box3#isEmpty
  if (result i32)
   local.get $1
   f64.const 0
   f64.const 0
   f64.const 0
   call $src/as/math/Vector3/Vector3#set
  else
   local.get $1
   local.get $0
   i32.load offset=4
   local.get $0
   i32.load
   call $src/as/math/Vector3/Vector3#addVectors
   local.tee $2
   f64.const 0.5
   call $src/as/math/Vector3/Vector3#multiplyScalar
   local.set $3
   local.get $2
   call $~lib/rt/pure/__release
   local.get $3
  end
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $start:src/as/math/Box3.spec~anonymous|0~anonymous|5
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
  i32.const 0
  global.get $src/as/math/Constants.tests/zero3
  call $src/as/math/Vector3/Vector3#clone
  local.tee $0
  global.get $src/as/math/Constants.tests/zero3
  call $src/as/math/Vector3/Vector3#clone
  local.tee $1
  call $src/as/math/Box3/Box3#constructor
  local.set $2
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $src/as/math/Vector3/Vector3#constructor
  local.set $3
  local.get $2
  local.get $3
  call $src/as/math/Box3/Box3#getCenter
  local.tee $4
  global.get $src/as/math/Constants.tests/zero3
  call $src/as/math/Vector3/Vector3#equals
  i32.eqz
  if
   i32.const 416
   i32.const 448
   i32.const 151
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.get $src/as/math/Constants.tests/zero3
  call $src/as/math/Vector3/Vector3#clone
  local.tee $5
  global.get $src/as/math/Constants.tests/one3
  call $src/as/math/Vector3/Vector3#clone
  local.tee $6
  call $src/as/math/Box3/Box3#constructor
  local.set $7
  local.get $2
  call $~lib/rt/pure/__release
  local.get $7
  local.set $2
  global.get $src/as/math/Constants.tests/one3
  call $src/as/math/Vector3/Vector3#clone
  local.tee $7
  f64.const 0.5
  call $src/as/math/Vector3/Vector3#multiplyScalar
  local.set $8
  local.get $2
  local.get $3
  call $src/as/math/Box3/Box3#getCenter
  local.tee $9
  local.get $8
  call $src/as/math/Vector3/Vector3#equals
  i32.eqz
  if
   i32.const 416
   i32.const 448
   i32.const 155
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
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
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
 )
 (func $src/as/math/Vector3/Vector3#subVectors (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $2
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $0
  local.get $1
  f64.load
  local.get $2
  f64.load
  f64.sub
  f64.store
  local.get $0
  local.get $1
  f64.load offset=8
  local.get $2
  f64.load offset=8
  f64.sub
  f64.store offset=8
  local.get $0
  local.get $1
  f64.load offset=16
  local.get $2
  f64.load offset=16
  f64.sub
  f64.store offset=16
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $src/as/math/Box3/Box3#getSize (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  call $src/as/math/Box3/Box3#isEmpty
  if (result i32)
   local.get $1
   f64.const 0
   f64.const 0
   f64.const 0
   call $src/as/math/Vector3/Vector3#set
  else
   local.get $1
   local.get $0
   i32.load
   local.get $0
   i32.load offset=4
   call $src/as/math/Vector3/Vector3#subVectors
  end
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $start:src/as/math/Box3.spec~anonymous|0~anonymous|6
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 0
  global.get $src/as/math/Constants.tests/zero3
  call $src/as/math/Vector3/Vector3#clone
  local.tee $0
  global.get $src/as/math/Constants.tests/zero3
  call $src/as/math/Vector3/Vector3#clone
  local.tee $1
  call $src/as/math/Box3/Box3#constructor
  local.set $2
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $src/as/math/Vector3/Vector3#constructor
  local.set $3
  local.get $2
  local.get $3
  call $src/as/math/Box3/Box3#getSize
  local.tee $4
  global.get $src/as/math/Constants.tests/zero3
  call $src/as/math/Vector3/Vector3#equals
  i32.eqz
  if
   i32.const 416
   i32.const 448
   i32.const 162
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.get $src/as/math/Constants.tests/zero3
  call $src/as/math/Vector3/Vector3#clone
  local.tee $5
  global.get $src/as/math/Constants.tests/one3
  call $src/as/math/Vector3/Vector3#clone
  local.tee $6
  call $src/as/math/Box3/Box3#constructor
  local.set $7
  local.get $2
  call $~lib/rt/pure/__release
  local.get $7
  local.set $2
  local.get $2
  local.get $3
  call $src/as/math/Box3/Box3#getSize
  local.tee $7
  global.get $src/as/math/Constants.tests/one3
  call $src/as/math/Vector3/Vector3#equals
  i32.eqz
  if
   i32.const 416
   i32.const 448
   i32.const 165
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $src/as/math/Vector3/Vector3#negate (param $0 i32) (result i32)
  local.get $0
  local.get $0
  f64.load
  f64.neg
  f64.store
  local.get $0
  local.get $0
  f64.load offset=8
  f64.neg
  f64.store offset=8
  local.get $0
  local.get $0
  f64.load offset=16
  f64.neg
  f64.store offset=16
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $start:src/as/math/Box3.spec~anonymous|0~anonymous|7
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
  global.get $src/as/math/Constants.tests/zero3
  call $src/as/math/Vector3/Vector3#clone
  local.tee $0
  global.get $src/as/math/Constants.tests/zero3
  call $src/as/math/Vector3/Vector3#clone
  local.tee $1
  call $src/as/math/Box3/Box3#constructor
  local.set $2
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $src/as/math/Vector3/Vector3#constructor
  local.set $3
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $src/as/math/Vector3/Vector3#constructor
  local.set $4
  local.get $2
  global.get $src/as/math/Constants.tests/zero3
  call $src/as/math/Box3/Box3#expandByPoint
  call $~lib/rt/pure/__release
  local.get $2
  local.get $4
  call $src/as/math/Box3/Box3#getSize
  local.tee $5
  global.get $src/as/math/Constants.tests/zero3
  call $src/as/math/Vector3/Vector3#equals
  i32.eqz
  if
   i32.const 416
   i32.const 448
   i32.const 174
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  global.get $src/as/math/Constants.tests/one3
  call $src/as/math/Box3/Box3#expandByPoint
  call $~lib/rt/pure/__release
  local.get $2
  local.get $4
  call $src/as/math/Box3/Box3#getSize
  local.tee $6
  global.get $src/as/math/Constants.tests/one3
  call $src/as/math/Vector3/Vector3#equals
  i32.eqz
  if
   i32.const 416
   i32.const 448
   i32.const 177
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  global.get $src/as/math/Constants.tests/one3
  call $src/as/math/Vector3/Vector3#clone
  local.tee $7
  call $src/as/math/Vector3/Vector3#negate
  local.tee $8
  call $src/as/math/Box3/Box3#expandByPoint
  call $~lib/rt/pure/__release
  local.get $2
  local.get $4
  call $src/as/math/Box3/Box3#getSize
  local.tee $9
  global.get $src/as/math/Constants.tests/one3
  call $src/as/math/Vector3/Vector3#clone
  local.tee $10
  f64.const 2
  call $src/as/math/Vector3/Vector3#multiplyScalar
  local.tee $11
  call $src/as/math/Vector3/Vector3#equals
  i32.eqz
  if
   i32.const 416
   i32.const 448
   i32.const 180
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $3
  call $src/as/math/Box3/Box3#getCenter
  local.tee $12
  global.get $src/as/math/Constants.tests/zero3
  call $src/as/math/Vector3/Vector3#equals
  i32.eqz
  if
   i32.const 416
   i32.const 448
   i32.const 181
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
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
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
 )
 (func $src/as/math/Vector3/Vector3#addScalar (param $0 i32) (param $1 f64) (result i32)
  local.get $0
  local.get $0
  f64.load
  local.get $1
  f64.add
  f64.store
  local.get $0
  local.get $0
  f64.load offset=8
  local.get $1
  f64.add
  f64.store offset=8
  local.get $0
  local.get $0
  f64.load offset=16
  local.get $1
  f64.add
  f64.store offset=16
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $src/as/math/Box3/Box3#expandByScalar (param $0 i32) (param $1 f64) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  f64.neg
  call $src/as/math/Vector3/Vector3#addScalar
  call $~lib/rt/pure/__release
  local.get $0
  i32.load
  local.get $1
  call $src/as/math/Vector3/Vector3#addScalar
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__retain
 )
 (func $start:src/as/math/Box3.spec~anonymous|0~anonymous|8
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
  i32.const 0
  global.get $src/as/math/Constants.tests/zero3
  call $src/as/math/Vector3/Vector3#clone
  local.tee $0
  global.get $src/as/math/Constants.tests/zero3
  call $src/as/math/Vector3/Vector3#clone
  local.tee $1
  call $src/as/math/Box3/Box3#constructor
  local.set $2
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $src/as/math/Vector3/Vector3#constructor
  local.set $3
  i32.const 0
  f64.const 0
  f64.const 0
  f64.const 0
  call $src/as/math/Vector3/Vector3#constructor
  local.set $4
  local.get $2
  f64.const 0
  call $src/as/math/Box3/Box3#expandByScalar
  call $~lib/rt/pure/__release
  local.get $2
  local.get $4
  call $src/as/math/Box3/Box3#getSize
  local.tee $5
  global.get $src/as/math/Constants.tests/zero3
  call $src/as/math/Vector3/Vector3#equals
  i32.eqz
  if
   i32.const 416
   i32.const 448
   i32.const 203
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  f64.const 1
  call $src/as/math/Box3/Box3#expandByScalar
  call $~lib/rt/pure/__release
  local.get $2
  local.get $4
  call $src/as/math/Box3/Box3#getSize
  local.tee $6
  global.get $src/as/math/Constants.tests/one3
  call $src/as/math/Vector3/Vector3#clone
  local.tee $7
  f64.const 2
  call $src/as/math/Vector3/Vector3#multiplyScalar
  local.tee $8
  call $src/as/math/Vector3/Vector3#equals
  i32.eqz
  if
   i32.const 416
   i32.const 448
   i32.const 206
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  local.get $3
  call $src/as/math/Box3/Box3#getCenter
  local.tee $9
  global.get $src/as/math/Constants.tests/zero3
  call $src/as/math/Vector3/Vector3#equals
  i32.eqz
  if
   i32.const 416
   i32.const 448
   i32.const 207
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
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
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
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
    i32.const 1232
    i32.const 704
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
    i32.const 640
    i32.const 704
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
 (func $src/as/math/Box3/Box3#clone (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 0
  i32.const 0
  i32.const 0
  global.set $~argumentsLength
  i32.const 0
  call $src/as/math/Box3/Box3#constructor@varargs
  local.set $1
  local.get $1
  local.get $0
  call $src/as/math/Box3/Box3#copy
  call $~lib/rt/pure/__release
  local.get $1
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
   i32.const 640
   i32.const 704
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
 (func $src/as/math/Vector3/Vector3#applyMatrix4 (param $0 i32) (param $1 i32) (result i32)
  (local $2 f64)
  (local $3 f64)
  (local $4 f64)
  (local $5 i32)
  (local $6 f64)
  (local $7 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  f64.load
  local.set $2
  local.get $0
  f64.load offset=8
  local.set $3
  local.get $0
  f64.load offset=16
  local.set $4
  local.get $1
  i32.load
  call $~lib/rt/pure/__retain
  local.set $5
  i32.const 1
  f64.convert_i32_s
  local.get $5
  i32.const 3
  call $~lib/array/Array<f64>#__get
  local.get $2
  f64.mul
  local.get $5
  i32.const 7
  call $~lib/array/Array<f64>#__get
  local.get $3
  f64.mul
  f64.add
  local.get $5
  i32.const 11
  call $~lib/array/Array<f64>#__get
  local.get $4
  f64.mul
  f64.add
  local.get $5
  i32.const 15
  call $~lib/array/Array<f64>#__get
  f64.add
  f64.div
  local.set $6
  local.get $0
  local.get $5
  i32.const 0
  call $~lib/array/Array<f64>#__get
  local.get $2
  f64.mul
  local.get $5
  i32.const 4
  call $~lib/array/Array<f64>#__get
  local.get $3
  f64.mul
  f64.add
  local.get $5
  i32.const 8
  call $~lib/array/Array<f64>#__get
  local.get $4
  f64.mul
  f64.add
  local.get $5
  i32.const 12
  call $~lib/array/Array<f64>#__get
  f64.add
  local.get $6
  f64.mul
  f64.store
  local.get $0
  local.get $5
  i32.const 1
  call $~lib/array/Array<f64>#__get
  local.get $2
  f64.mul
  local.get $5
  i32.const 5
  call $~lib/array/Array<f64>#__get
  local.get $3
  f64.mul
  f64.add
  local.get $5
  i32.const 9
  call $~lib/array/Array<f64>#__get
  local.get $4
  f64.mul
  f64.add
  local.get $5
  i32.const 13
  call $~lib/array/Array<f64>#__get
  f64.add
  local.get $6
  f64.mul
  f64.store offset=8
  local.get $0
  local.get $5
  i32.const 2
  call $~lib/array/Array<f64>#__get
  local.get $2
  f64.mul
  local.get $5
  i32.const 6
  call $~lib/array/Array<f64>#__get
  local.get $3
  f64.mul
  f64.add
  local.get $5
  i32.const 10
  call $~lib/array/Array<f64>#__get
  local.get $4
  f64.mul
  f64.add
  local.get $5
  i32.const 14
  call $~lib/array/Array<f64>#__get
  f64.add
  local.get $6
  f64.mul
  f64.store offset=16
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $7
  local.get $5
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $7
 )
 (func $src/as/math/Box3/Box3#applyMatrix4 (param $0 i32) (param $1 i32) (result i32)
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
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  call $src/as/math/Box3/Box3#isEmpty
  if
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $2
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   return
  end
  global.get $src/as/math/Box3/points
  i32.const 0
  call $~lib/array/Array<src/as/math/Vector3/Vector3>#__get
  local.tee $2
  local.get $0
  i32.load offset=4
  f64.load
  local.get $0
  i32.load offset=4
  f64.load offset=8
  local.get $0
  i32.load offset=4
  f64.load offset=16
  call $src/as/math/Vector3/Vector3#set
  local.tee $3
  local.get $1
  call $src/as/math/Vector3/Vector3#applyMatrix4
  call $~lib/rt/pure/__release
  global.get $src/as/math/Box3/points
  i32.const 1
  call $~lib/array/Array<src/as/math/Vector3/Vector3>#__get
  local.tee $4
  local.get $0
  i32.load offset=4
  f64.load
  local.get $0
  i32.load offset=4
  f64.load offset=8
  local.get $0
  i32.load
  f64.load offset=16
  call $src/as/math/Vector3/Vector3#set
  local.tee $5
  local.get $1
  call $src/as/math/Vector3/Vector3#applyMatrix4
  call $~lib/rt/pure/__release
  global.get $src/as/math/Box3/points
  i32.const 2
  call $~lib/array/Array<src/as/math/Vector3/Vector3>#__get
  local.tee $6
  local.get $0
  i32.load offset=4
  f64.load
  local.get $0
  i32.load
  f64.load offset=8
  local.get $0
  i32.load offset=4
  f64.load offset=16
  call $src/as/math/Vector3/Vector3#set
  local.tee $7
  local.get $1
  call $src/as/math/Vector3/Vector3#applyMatrix4
  call $~lib/rt/pure/__release
  global.get $src/as/math/Box3/points
  i32.const 3
  call $~lib/array/Array<src/as/math/Vector3/Vector3>#__get
  local.tee $8
  local.get $0
  i32.load offset=4
  f64.load
  local.get $0
  i32.load
  f64.load offset=8
  local.get $0
  i32.load
  f64.load offset=16
  call $src/as/math/Vector3/Vector3#set
  local.tee $9
  local.get $1
  call $src/as/math/Vector3/Vector3#applyMatrix4
  call $~lib/rt/pure/__release
  global.get $src/as/math/Box3/points
  i32.const 4
  call $~lib/array/Array<src/as/math/Vector3/Vector3>#__get
  local.tee $10
  local.get $0
  i32.load
  f64.load
  local.get $0
  i32.load offset=4
  f64.load offset=8
  local.get $0
  i32.load offset=4
  f64.load offset=16
  call $src/as/math/Vector3/Vector3#set
  local.tee $11
  local.get $1
  call $src/as/math/Vector3/Vector3#applyMatrix4
  call $~lib/rt/pure/__release
  global.get $src/as/math/Box3/points
  i32.const 5
  call $~lib/array/Array<src/as/math/Vector3/Vector3>#__get
  local.tee $12
  local.get $0
  i32.load
  f64.load
  local.get $0
  i32.load offset=4
  f64.load offset=8
  local.get $0
  i32.load
  f64.load offset=16
  call $src/as/math/Vector3/Vector3#set
  local.tee $13
  local.get $1
  call $src/as/math/Vector3/Vector3#applyMatrix4
  call $~lib/rt/pure/__release
  global.get $src/as/math/Box3/points
  i32.const 6
  call $~lib/array/Array<src/as/math/Vector3/Vector3>#__get
  local.tee $14
  local.get $0
  i32.load
  f64.load
  local.get $0
  i32.load
  f64.load offset=8
  local.get $0
  i32.load offset=4
  f64.load offset=16
  call $src/as/math/Vector3/Vector3#set
  local.tee $15
  local.get $1
  call $src/as/math/Vector3/Vector3#applyMatrix4
  call $~lib/rt/pure/__release
  global.get $src/as/math/Box3/points
  i32.const 7
  call $~lib/array/Array<src/as/math/Vector3/Vector3>#__get
  local.tee $16
  local.get $0
  i32.load
  f64.load
  local.get $0
  i32.load
  f64.load offset=8
  local.get $0
  i32.load
  f64.load offset=16
  call $src/as/math/Vector3/Vector3#set
  local.tee $17
  local.get $1
  call $src/as/math/Vector3/Vector3#applyMatrix4
  call $~lib/rt/pure/__release
  local.get $0
  global.get $src/as/math/Box3/points
  call $src/as/math/Box3/Box3#setFromPoints
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $18
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
  local.get $1
  call $~lib/rt/pure/__release
  local.get $18
 )
 (func $src/as/math/Vector3/Vector3#add (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  local.get $0
  f64.load
  local.get $1
  f64.load
  f64.add
  f64.store
  local.get $0
  local.get $0
  f64.load offset=8
  local.get $1
  f64.load offset=8
  f64.add
  f64.store offset=8
  local.get $0
  local.get $0
  f64.load offset=16
  local.get $1
  f64.load offset=16
  f64.add
  f64.store offset=16
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $src/as/math/Box3/Box3#translate (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.get $1
  call $src/as/math/Vector3/Vector3#add
  call $~lib/rt/pure/__release
  local.get $0
  i32.load
  local.get $1
  call $src/as/math/Vector3/Vector3#add
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $src/as/math/Vector3/Vector3#distanceToSquared (param $0 i32) (param $1 i32) (result f64)
  (local $2 f64)
  (local $3 f64)
  (local $4 f64)
  (local $5 f64)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  f64.load
  local.get $1
  f64.load
  f64.sub
  local.set $2
  local.get $0
  f64.load offset=8
  local.get $1
  f64.load offset=8
  f64.sub
  local.set $3
  local.get $0
  f64.load offset=16
  local.get $1
  f64.load offset=16
  f64.sub
  local.set $4
  local.get $2
  local.get $2
  f64.mul
  local.get $3
  local.get $3
  f64.mul
  f64.add
  local.get $4
  local.get $4
  f64.mul
  f64.add
  local.set $5
  local.get $1
  call $~lib/rt/pure/__release
  local.get $5
 )
 (func $src/as/math/Vector3/Vector3#distanceTo (param $0 i32) (param $1 i32) (result f64)
  (local $2 f64)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  local.get $1
  call $src/as/math/Vector3/Vector3#distanceToSquared
  local.set $2
  local.get $2
  f64.sqrt
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $src/as/math/Box3/compareBox (param $0 i32) (param $1 i32) (param $2 f64) (result i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $0
  i32.load offset=4
  local.get $1
  i32.load offset=4
  call $src/as/math/Vector3/Vector3#distanceTo
  local.get $2
  f64.lt
  if (result i32)
   local.get $0
   i32.load
   local.get $1
   i32.load
   call $src/as/math/Vector3/Vector3#distanceTo
   local.get $2
   f64.lt
  else
   i32.const 0
  end
  local.set $3
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $start:src/as/math/Box3.spec~anonymous|0~anonymous|9
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
  global.get $src/as/math/Constants.tests/zero3
  call $src/as/math/Vector3/Vector3#clone
  local.tee $0
  global.get $src/as/math/Constants.tests/zero3
  call $src/as/math/Vector3/Vector3#clone
  local.tee $1
  call $src/as/math/Box3/Box3#constructor
  local.set $2
  i32.const 0
  global.get $src/as/math/Constants.tests/zero3
  call $src/as/math/Vector3/Vector3#clone
  local.tee $3
  global.get $src/as/math/Constants.tests/one3
  call $src/as/math/Vector3/Vector3#clone
  local.tee $4
  call $src/as/math/Box3/Box3#constructor
  local.set $5
  i32.const 0
  global.get $src/as/math/Constants.tests/one3
  call $src/as/math/Vector3/Vector3#clone
  local.tee $6
  call $src/as/math/Vector3/Vector3#negate
  local.tee $7
  global.get $src/as/math/Constants.tests/one3
  call $src/as/math/Vector3/Vector3#clone
  local.tee $8
  call $src/as/math/Box3/Box3#constructor
  local.set $9
  i32.const 0
  global.get $src/as/math/Constants.tests/one3
  call $src/as/math/Vector3/Vector3#clone
  local.tee $10
  call $src/as/math/Vector3/Vector3#negate
  local.tee $11
  global.get $src/as/math/Constants.tests/zero3
  call $src/as/math/Vector3/Vector3#clone
  local.tee $12
  call $src/as/math/Box3/Box3#constructor
  local.set $13
  i32.const 0
  call $src/as/math/Matrix4/Matrix4#constructor
  local.set $14
  local.get $14
  f64.const 1
  f64.const -2
  f64.const 1
  call $src/as/math/Matrix4/Matrix4#makeTranslation
  call $~lib/rt/pure/__release
  i32.const 0
  f64.const 1
  f64.const -2
  f64.const 1
  call $src/as/math/Vector3/Vector3#constructor
  local.set $15
  local.get $2
  call $src/as/math/Box3/Box3#clone
  local.tee $16
  local.get $14
  call $src/as/math/Box3/Box3#applyMatrix4
  local.tee $17
  local.get $2
  call $src/as/math/Box3/Box3#clone
  local.tee $18
  local.get $15
  call $src/as/math/Box3/Box3#translate
  local.tee $19
  f64.const 0.0001
  call $src/as/math/Box3/compareBox
  i32.eqz
  if
   i32.const 416
   i32.const 448
   i32.const 514
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  call $src/as/math/Box3/Box3#clone
  local.tee $20
  local.get $14
  call $src/as/math/Box3/Box3#applyMatrix4
  local.tee $21
  local.get $5
  call $src/as/math/Box3/Box3#clone
  local.tee $22
  local.get $15
  call $src/as/math/Box3/Box3#translate
  local.tee $23
  f64.const 0.0001
  call $src/as/math/Box3/compareBox
  i32.eqz
  if
   i32.const 416
   i32.const 448
   i32.const 515
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $9
  call $src/as/math/Box3/Box3#clone
  local.tee $24
  local.get $14
  call $src/as/math/Box3/Box3#applyMatrix4
  local.tee $25
  local.get $9
  call $src/as/math/Box3/Box3#clone
  local.tee $26
  local.get $15
  call $src/as/math/Box3/Box3#translate
  local.tee $27
  f64.const 0.0001
  call $src/as/math/Box3/compareBox
  i32.eqz
  if
   i32.const 416
   i32.const 448
   i32.const 516
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $13
  call $src/as/math/Box3/Box3#clone
  local.tee $28
  local.get $14
  call $src/as/math/Box3/Box3#applyMatrix4
  local.tee $29
  local.get $13
  call $src/as/math/Box3/Box3#clone
  local.tee $30
  local.get $15
  call $src/as/math/Box3/Box3#translate
  local.tee $31
  f64.const 0.0001
  call $src/as/math/Box3/compareBox
  i32.eqz
  if
   i32.const 416
   i32.const 448
   i32.const 517
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $10
  call $~lib/rt/pure/__release
  local.get $11
  call $~lib/rt/pure/__release
  local.get $12
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
  local.get $21
  call $~lib/rt/pure/__release
  local.get $22
  call $~lib/rt/pure/__release
  local.get $23
  call $~lib/rt/pure/__release
  local.get $24
  call $~lib/rt/pure/__release
  local.get $25
  call $~lib/rt/pure/__release
  local.get $26
  call $~lib/rt/pure/__release
  local.get $27
  call $~lib/rt/pure/__release
  local.get $28
  call $~lib/rt/pure/__release
  local.get $29
  call $~lib/rt/pure/__release
  local.get $30
  call $~lib/rt/pure/__release
  local.get $31
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $13
  call $~lib/rt/pure/__release
  local.get $14
  call $~lib/rt/pure/__release
  local.get $15
  call $~lib/rt/pure/__release
 )
 (func $src/as/math/Box3/Box3#equals (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.load offset=4
  local.get $0
  i32.load offset=4
  call $src/as/math/Vector3/Vector3#equals
  if (result i32)
   local.get $1
   i32.load
   local.get $0
   i32.load
   call $src/as/math/Vector3/Vector3#equals
  else
   i32.const 0
  end
  local.set $2
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
 )
 (func $start:src/as/math/Box3.spec~anonymous|0~anonymous|10
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
  i32.const 0
  global.get $src/as/math/Constants.tests/zero3
  call $src/as/math/Vector3/Vector3#clone
  local.tee $0
  global.get $src/as/math/Constants.tests/zero3
  call $src/as/math/Vector3/Vector3#clone
  local.tee $1
  call $src/as/math/Box3/Box3#constructor
  local.set $2
  i32.const 0
  global.get $src/as/math/Constants.tests/zero3
  call $src/as/math/Vector3/Vector3#clone
  local.tee $3
  global.get $src/as/math/Constants.tests/one3
  call $src/as/math/Vector3/Vector3#clone
  local.tee $4
  call $src/as/math/Box3/Box3#constructor
  local.set $5
  i32.const 0
  global.get $src/as/math/Constants.tests/one3
  call $src/as/math/Vector3/Vector3#clone
  local.tee $6
  call $src/as/math/Vector3/Vector3#negate
  local.tee $7
  global.get $src/as/math/Constants.tests/zero3
  call $src/as/math/Vector3/Vector3#clone
  local.tee $8
  call $src/as/math/Box3/Box3#constructor
  local.set $9
  local.get $2
  call $src/as/math/Box3/Box3#clone
  local.tee $10
  global.get $src/as/math/Constants.tests/one3
  call $src/as/math/Box3/Box3#translate
  local.tee $11
  i32.const 0
  global.get $src/as/math/Constants.tests/one3
  global.get $src/as/math/Constants.tests/one3
  call $src/as/math/Box3/Box3#constructor
  local.tee $12
  call $src/as/math/Box3/Box3#equals
  i32.eqz
  if
   i32.const 416
   i32.const 448
   i32.const 525
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $src/as/math/Box3/Box3#clone
  local.tee $13
  global.get $src/as/math/Constants.tests/one3
  call $src/as/math/Box3/Box3#translate
  local.tee $14
  global.get $src/as/math/Constants.tests/one3
  call $src/as/math/Vector3/Vector3#clone
  local.tee $15
  call $src/as/math/Vector3/Vector3#negate
  local.tee $16
  call $src/as/math/Box3/Box3#translate
  local.tee $17
  local.get $2
  call $src/as/math/Box3/Box3#equals
  i32.eqz
  if
   i32.const 416
   i32.const 448
   i32.const 532
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $9
  call $src/as/math/Box3/Box3#clone
  local.tee $18
  global.get $src/as/math/Constants.tests/one3
  call $src/as/math/Box3/Box3#translate
  local.tee $19
  local.get $5
  call $src/as/math/Box3/Box3#equals
  i32.eqz
  if
   i32.const 416
   i32.const 448
   i32.const 540
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  call $src/as/math/Box3/Box3#clone
  local.tee $20
  global.get $src/as/math/Constants.tests/one3
  call $src/as/math/Vector3/Vector3#clone
  local.tee $21
  call $src/as/math/Vector3/Vector3#negate
  local.tee $22
  call $src/as/math/Box3/Box3#translate
  local.tee $23
  local.get $9
  call $src/as/math/Box3/Box3#equals
  i32.eqz
  if
   i32.const 416
   i32.const 448
   i32.const 547
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
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
  local.get $20
  call $~lib/rt/pure/__release
  local.get $21
  call $~lib/rt/pure/__release
  local.get $22
  call $~lib/rt/pure/__release
  local.get $23
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
 )
 (func $start:src/as/math/Box3.spec~anonymous|0
  i32.const 368
  i32.const 2
  call $node_modules/@as-pect/assembly/assembly/internal/Test/test
  i32.const 512
  i32.const 3
  call $node_modules/@as-pect/assembly/assembly/internal/Test/test
  i32.const 544
  call $node_modules/@as-pect/assembly/assembly/internal/Test/todo
  i32.const 592
  i32.const 4
  call $node_modules/@as-pect/assembly/assembly/internal/Test/test
  i32.const 880
  call $node_modules/@as-pect/assembly/assembly/internal/Test/todo
  i32.const 912
  i32.const 5
  call $node_modules/@as-pect/assembly/assembly/internal/Test/test
  i32.const 944
  i32.const 6
  call $node_modules/@as-pect/assembly/assembly/internal/Test/test
  i32.const 1008
  i32.const 7
  call $node_modules/@as-pect/assembly/assembly/internal/Test/test
  i32.const 1056
  i32.const 8
  call $node_modules/@as-pect/assembly/assembly/internal/Test/test
  i32.const 1088
  i32.const 9
  call $node_modules/@as-pect/assembly/assembly/internal/Test/test
  i32.const 1136
  i32.const 10
  call $node_modules/@as-pect/assembly/assembly/internal/Test/test
  i32.const 1184
  i32.const 11
  call $node_modules/@as-pect/assembly/assembly/internal/Test/test
  i32.const 1280
  i32.const 12
  call $node_modules/@as-pect/assembly/assembly/internal/Test/test
  i32.const 1328
  call $node_modules/@as-pect/assembly/assembly/internal/Test/todo
 )
 (func $start:src/as/math/Box3.spec
  call $start:src/as/math/Box3
  call $start:src/as/math/Constants.tests
  i32.const 336
  i32.const 13
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
  i32.const 10
 )
 (func $~start
  global.get $~started
  if
   return
  else
   i32.const 1
   global.set $~started
  end
  call $start:src/as/math/Box3.spec
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
   block $switch$1$case$12
    block $switch$1$case$11
     block $switch$1$case$10
      block $switch$1$case$7
       block $switch$1$case$6
        block $switch$1$case$4
         block $switch$1$case$2
          local.get $0
          i32.const 8
          i32.sub
          i32.load
          br_table $switch$1$case$2 $switch$1$case$2 $switch$1$case$4 $switch$1$case$4 $switch$1$case$6 $switch$1$case$7 $switch$1$case$2 $switch$1$case$2 $switch$1$case$10 $switch$1$case$11 $switch$1$case$12 $switch$1$default
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
     call $~lib/array/Array<src/as/math/Vector3/Vector3>#__visit_impl
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
  unreachable
 )
)
