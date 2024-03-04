sig simple.

kind ty         type.
type tfun       ty -> ty -> ty.

kind expr       type.
type eabs       ty -> (expr -> expr) -> expr.
type eapp       expr -> expr -> expr.

type typeof     expr -> ty -> o.
type step       expr -> expr -> o.