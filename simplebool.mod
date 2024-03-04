module simplebool.

typeof etrue tbool.
typeof efalse tbool.
typeof (eif E1 E2 E3) T :-
  typeof E1 tbool, typeof E2 T, typeof E3 T.

step (eif etrue T _) T.
step (eif efalse _ F) F.
step (eif E1 T F) (eif E2 T F) :- step E1 E2.
