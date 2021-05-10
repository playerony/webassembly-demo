(module
 (type $f64_=>_f64 (func (param f64) (result f64)))
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $none_=>_i32 (func (result i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (import "index" "log" (func $assembly/index/log (param i32 i32)))
 (memory $0 1)
 (data (i32.const 1036) "\1c")
 (data (i32.const 1048) "\01\00\00\00\08\00\00\00t\00e\00s\00t")
 (export "add" (func $assembly/index/add))
 (export "toStringTest" (func $assembly/index/toStringTest))
 (export "abs" (func $assembly/index/abs))
 (export "acos" (func $assembly/index/acos))
 (export "memory" (memory $0))
 (func $assembly/index/add (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $assembly/index/log
  local.get $0
  local.get $1
  i32.add
 )
 (func $assembly/index/toStringTest (result i32)
  i32.const 1056
 )
 (func $assembly/index/abs (param $0 f64) (result f64)
  local.get $0
  f64.abs
 )
 (func $~lib/math/R (param $0 f64) (result f64)
  local.get $0
  local.get $0
  local.get $0
  local.get $0
  local.get $0
  local.get $0
  f64.const 3.479331075960212e-05
  f64.mul
  f64.const 7.915349942898145e-04
  f64.add
  f64.mul
  f64.const -0.04005553450067941
  f64.add
  f64.mul
  f64.const 0.20121253213486293
  f64.add
  f64.mul
  f64.const -0.3255658186224009
  f64.add
  f64.mul
  f64.const 0.16666666666666666
  f64.add
  f64.mul
  local.get $0
  local.get $0
  local.get $0
  local.get $0
  f64.const 0.07703815055590194
  f64.mul
  f64.const -0.6882839716054533
  f64.add
  f64.mul
  f64.const 2.0209457602335057
  f64.add
  f64.mul
  f64.const -2.403394911734414
  f64.add
  f64.mul
  f64.const 1
  f64.add
  f64.div
 )
 (func $~lib/math/NativeMath.acos (param $0 f64) (result f64)
  (local $1 f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  local.get $0
  i64.reinterpret_f64
  i64.const 32
  i64.shr_u
  i32.wrap_i64
  local.tee $3
  i32.const 2147483647
  i32.and
  local.tee $2
  i32.const 1072693248
  i32.ge_u
  if
   local.get $0
   i64.reinterpret_f64
   i32.wrap_i64
   local.get $2
   i32.const 1072693248
   i32.sub
   i32.or
   i32.eqz
   if
    local.get $3
    i32.const 31
    i32.shr_u
    if
     f64.const 3.141592653589793
     return
    end
    f64.const 0
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
   i32.const 1012924416
   i32.le_u
   if
    f64.const 1.5707963267948966
    return
   end
   f64.const 1.5707963267948966
   local.get $0
   f64.const 6.123233995736766e-17
   local.get $0
   local.get $0
   local.get $0
   f64.mul
   call $~lib/math/R
   f64.mul
   f64.sub
   f64.sub
   f64.sub
   return
  end
  local.get $3
  i32.const 31
  i32.shr_u
  if
   f64.const 1.5707963267948966
   local.get $0
   f64.const 0.5
   f64.mul
   f64.const 0.5
   f64.add
   local.tee $0
   f64.sqrt
   local.tee $1
   local.get $0
   call $~lib/math/R
   local.get $1
   f64.mul
   f64.const 6.123233995736766e-17
   f64.sub
   f64.add
   f64.sub
   local.tee $0
   local.get $0
   f64.add
   return
  end
  f64.const 0.5
  local.get $0
  f64.const 0.5
  f64.mul
  f64.sub
  local.tee $1
  f64.sqrt
  local.tee $4
  i64.reinterpret_f64
  i64.const -4294967296
  i64.and
  f64.reinterpret_i64
  local.tee $0
  local.get $1
  call $~lib/math/R
  local.get $4
  f64.mul
  local.get $1
  local.get $0
  local.get $0
  f64.mul
  f64.sub
  local.get $4
  local.get $0
  f64.add
  f64.div
  f64.add
  f64.add
  local.tee $0
  local.get $0
  f64.add
 )
 (func $assembly/index/acos (param $0 f64) (result f64)
  local.get $0
  call $~lib/math/NativeMath.acos
 )
)
