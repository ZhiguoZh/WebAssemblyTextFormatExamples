(module
  (type (func (result i32)))
  (func (type 0) (result i32)
    (local i32 i32 i32 i32)
    i32.const 0
    i32.load
    set_local 0
    ;;initializer
    i32.const 1
    set_local 1
    i32.const 0
    set_local 2
    block
      loop
        ;;termination
        get_local 0
        get_local 1
        i32.lt_s
        br_if 1
        ;;body
        get_local 1
        i32.const 2
        i32.rem_s
        i32.eqz
        if
          get_local 2
          i32.load
          set_local 3
          i32.const 0
          get_local 3
          i32.sub
          set_local 3
          get_local 2
          get_local 3
          i32.store
        end
        ;;increment
        get_local 1
        i32.const 1
        i32.add
        tee_local 1
        i32.const 4
        i32.mul
        set_local 2
        br 0
      end
    end 
    get_local 0
  )
  (memory 20 20)
  (data (i32.const 0) "\07\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00")
  (export "NegOddElem" (func 0))
  (export "mem" (memory 0))
)
