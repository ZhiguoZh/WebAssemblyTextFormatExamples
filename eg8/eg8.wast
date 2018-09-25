(module
  (type (func (param f32 f32) (result f32)))
  (type (func (param f32 f32 i32) (result f32)))
  (func (type 0) (param f32 f32) (result f32)
    get_local 0
    get_local 1
    f32.add
    f32.const 2.0
    f32.div
  )
  (func (type 0) (param f32 f32) (result f32)
    get_local 0
    get_local 1
    f32.mul
    f32.sqrt
  )
  (func (type 1) (param f32 f32 i32) (result f32)
    get_local 0
    get_local 1
    get_local 2
    call_indirect (type 0)
  )
  (table 2 anyfunc)
  (elem (i32.const 0) 0 1)
  (export "MeanOrGeomean" (func 2))
)
