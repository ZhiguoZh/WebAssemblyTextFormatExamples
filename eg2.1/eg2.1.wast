(module
  (type (func (param i32 i32) (result i32)))
  (func (type 0) (param i32 i32) (result i32) 
    (local i32 i32 i32)
    get_local 0
    set_local 3
    get_local 3
  )
  (export "ret_arg" (func 0))
)
