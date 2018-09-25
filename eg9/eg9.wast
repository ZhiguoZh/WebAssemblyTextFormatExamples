(module
  (type (func (result i32)))
  (func (type 0) (result i32)
    get_global 0
    i32.const 1
    i32.add
    set_global 0
    get_global 0
  )
  (global (mut i32) (i32.const 0))
  (export "CallTimes" (func 0))
)
