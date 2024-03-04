sig simplebool.

kind ty         type.
type tfun       ty -> ty -> ty.
type tbool      ty.

kind expr       type.
type eabs       ty -> (expr -> expr) -> expr.
type eapp       expr -> expr -> expr.
type etrue      expr.
type efalse     expr.
type eif        expr -> expr -> expr -> expr.

type typeof     expr -> ty -> o.
type step       expr -> expr -> o.