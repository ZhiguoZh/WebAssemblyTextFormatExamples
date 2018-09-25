(module
  (type (func (param i32) (result i32)))
  (func (type 0) (param i32) (result i32)
    (local i32 i32)
    get_local 0
    i32.const 0
    i32.eq
    if
      i32.const 0
      return
    end
    get_local 0
    i32.const 1
    i32.eq
    if
      i32.const 1
      return
    end
    get_local 0
    i32.const 1
    i32.sub
    set_local 1
    get_local 0
    i32.const 2
    i32.sub
    set_local 2
    get_local 1
    call 0
    get_local 2
    call 0
    i32.add
  )
  (export "NthFibo" (func 0))
)
