module simple.

%% The typing relation.

typeof (eabs T1 E) (tfun T1 T2) :-
  pi x\ typeof x T1 => typeof (E x) T2. 
typeof (eapp E1 E2) T2 :-
  typeof E1 (tfun T1 T2), typeof E2 T1.

%% Small-step semantics.

step (eapp E1 E) (eapp E2 E) :- step E1 E2.
step (eapp E E1) (eapp E E2) :- step E1 E2.
step (eapp (eabs T E1) E2) (E1 E2).
