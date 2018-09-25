(module
  (type (func (param i32) (result i32)))
  (func (type 0) (param i32) (result i32)
    get_local 0
    i32.const 10
    i32.gt_s
    if (result i32)
      i32.const 100
    else
      i32.const -100
    end
  )
  (export "IsGreaterThan10" (func 0))
)
