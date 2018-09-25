(module
  (type (func (param i32 i32)))
  (import "func" "log" (func (param i32 i32)))
  (import "mem" "memory" (memory 1))
  (func (type 0) (param i32 i32)
    get_local 0
    get_local 1
    call 0
  )
  (export "PrintStr" (func 1))
)
