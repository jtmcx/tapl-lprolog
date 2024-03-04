sig tyarith.

kind expr       type.
type etrue      expr.
type efalse     expr.
type eif        expr -> expr -> expr -> expr.
type ezero      expr.
type esucc      expr -> expr.
type epred      expr -> expr.
type eiszero    expr -> expr.

kind value      type.
kind number     type.
type vtrue      value.
type vfalse     value.
type vnum       number -> value.
type vzero      number.
type vsucc      number -> number.

kind ty         type.
type tbool      ty.
type tnat       ty.

type typeof	expr -> ty -> o.
type step	expr -> expr -> o.

