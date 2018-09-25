(module
  (type (func (param i32) (result i32)))
  (type (func (result i32)))
  (import "js" "table" (table 2 anyfunc))
  ;;(global (import "other" "glob") (mut i32))
  (import "other" "glob" (global (mut i32)))
  (func (type 0) (param i32) (result i32)
    get_local 0
    call_indirect (type 1)
  )
  (func (type 1) (result i32)
    get_global 0
    i32.const 3
    i32.add
    set_global 0
    get_global 0
  )
  (func (type 1) (result i32)
    get_global 0
    i32.const 5
    i32.add
    set_global 0
    get_global 0
  )
  (export "inc" (func 0))
  (export "add3" (func 1))
  (export "add5" (func 2))
)
