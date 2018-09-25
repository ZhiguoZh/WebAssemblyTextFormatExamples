(module
  (type (;0;) (func (param i32) (result i32)))
  (type (;1;) (func (result i32)))
  (import "js" "table" (table (;0;) 2 anyfunc))
  (import "other" "glob" (global (;0;) (mut i32)))
  (func (;0;) (type 0) (param i32) (result i32)
    get_local 0
    call_indirect (type 1))
  (func (;1;) (type 1) (result i32)
    get_global 0
    i32.const 3
    i32.add
    set_global 0
    get_global 0)
  (func (;2;) (type 1) (result i32)
    get_global 0
    i32.const 5
    i32.add
    set_global 0
    get_global 0)
  (export "inc" (func 0))
  (export "add3" (func 1))
  (export "add5" (func 2)))
