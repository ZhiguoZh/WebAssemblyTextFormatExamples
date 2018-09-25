(module
  (type (func (param i32) (result i32)))
  (func (type 0) (param i32) (result i32)
    (local i32 i32 i32 i32)
    i32.const 0
    get_local 0
    i32.eq
    if 
      i32.const 0
      return
    end
    i32.const 1
    get_local 0
    i32.eq
    if
      i32.const 1
      return
    end
    i32.const 0
    set_local 1
    i32.const 1
    set_local 2
    ;;initializer
    i32.const 2
    set_local 4
    block
      loop
        ;;termination
        get_local 4
        get_local 0
        i32.gt_s
        br_if 1
        ;;body
        get_local 1
        get_local 2
        i32.add
        set_local 3
        get_local 2
        set_local 1
        get_local 3
        set_local 2
        ;;increment
        get_local 4
        i32.const 1
        i32.add
        set_local 4
        br 0
      end
    end
    get_local 3
  )
  (export "NthFibo" (func 0))
)
