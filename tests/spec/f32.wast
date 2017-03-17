(module
  (func $add (param $x f32) (param $y f32) (result f32) (f32.add (get_local $x) (get_local $y)))
  (func $sub (param $x f32) (param $y f32) (result f32) (f32.sub (get_local $x) (get_local $y)))
  (func $mul (param $x f32) (param $y f32) (result f32) (f32.mul (get_local $x) (get_local $y)))
  (func $div (param $x f32) (param $y f32) (result f32) (f32.div (get_local $x) (get_local $y)))
  (func $sqrt (param $x f32) (result f32) (f32.sqrt (get_local $x)))
  (func $min (param $x f32) (param $y f32) (result f32) (f32.min (get_local $x) (get_local $y)))
  (func $max (param $x f32) (param $y f32) (result f32) (f32.max (get_local $x) (get_local $y)))
  (func $ceil (param $x f32) (result f32) (f32.ceil (get_local $x)))
  (func $floor (param $x f32) (result f32) (f32.floor (get_local $x)))
  (func $trunc (param $x f32) (result f32) (f32.trunc (get_local $x)))
  (func $nearest (param $x f32) (result f32) (f32.nearest (get_local $x)))
  (func $abs (param $x f32) (result f32) (f32.abs (get_local $x)))
  (func $neg (param $x f32) (result f32) (f32.neg (get_local $x)))
  (func $copysign (param $x f32) (param $y f32) (result f32) (f32.copysign (get_local $x) (get_local $y)))

  (export "add" $add)
  (export "sub" $sub)
  (export "mul" $mul)
  (export "div" $div)
  (export "sqrt" $sqrt)
  (export "min" $min)
  (export "max" $max)
  (export "ceil" $ceil)
  (export "floor" $floor)
  (export "trunc" $trunc)
  (export "nearest" $nearest)
  (export "abs" $abs)
  (export "neg" $neg)
  (export "copysign" $copysign)
)

(assert_return (invoke "add" (f32.const -0x0p+0) (f32.const -0x0p+0)) (f32.const -0x0p+0))