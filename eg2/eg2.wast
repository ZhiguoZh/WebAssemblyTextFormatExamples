(module
  (type (func (param i32 i32) (result i32)))
  (func (type 0) (param i32 i32) (result i32) 
    get_local 0
    set_local 1
    (;get_local 1;)
  )
  (export "ret_arg" (func 0))
)
