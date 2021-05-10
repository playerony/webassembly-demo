(module
 (type $i32_i32_=>_none (func (param i32 i32)))
 (type $i32_i32_=>_i32 (func (param i32 i32) (result i32)))
 (import "index" "log" (func $assembly/index/log (param i32 i32)))
 (memory $0 0)
 (export "add" (func $assembly/index/add))
 (export "memory" (memory $0))
 (func $assembly/index/add (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  local.get $1
  call $assembly/index/log
  local.get $0
  local.get $1
  i32.add
 )
)
