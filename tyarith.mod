module tyarith.

%% The typing relation. See figure 8-2 in section 8.2 on page 93.

typeof etrue tbool.
typeof efalse tbool.
typeof ezero tnat.
typeof (esucc E) tnat :- typeof E tnat.
typeof (epred E) tnat :- typeof E tnat.
typeof (eiszero E) tbool :- typeof E tnat.
typeof (eif E1 E2 E3) T :-
  typeof E1 tbool, typeof E2 T, typeof E3 T.

%% Small-step semantics. See figure 3-1 on page 34, and figure 3-2 on
%% page 41.

step (eif etrue T _) T.
step (eif efalse _ F) F.
step (eif E1 T F) (eif E2 T F) :- step E1 E2.
step (esucc E1) (esucc E2) :- step E1 E2.
step (epred ezero) ezero.
step (epred (esucc E)) E.
step (epred E1) (epred E2) :- step E1 E2.
step (eiszero ezero) etrue.
step (eiszero (esucc _)) efalse.
step (eiszero E1) (eiszero E2) :- step E1 E2.
