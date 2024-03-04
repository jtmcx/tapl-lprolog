# TAPL in λProlog

This repository houses [λProlog][lprolog] translations of various
programming languages described in the book [Types and Programming
Languages][tapl] (TAPL), by Benjamin Pierce. Select theorems, lemmas,
and exercises have been translated into [abella][abella] proofs.

## Modules

| Module                           | Chapter                                   |
| -------------------------------- | ----------------------------------------- |
| [tyarith.mod](tyarith.mod)       | Chapter 8 - Typed Arithmetic Expressions  |
| [simplebool.mod](simplebool.mod) | Chapter 9 - Simply Typed Lambda Calculus  |

## Building

To install [teyjus][teyjus] and [abella][abella] using [opam][opam]:

```
$ opam switch create tapl 4.14.1
$ eval $(opam env --switch=tapl)
$ opam pin add teyjus 'git+https://github.com/teyjus/teyjus#v2.1.1'
$ opam install abella
```

[lprolog]:  http://www.lix.polytechnique.fr/Labo/Dale.Miller/lProlog/
[tapl]:     https://www.cis.upenn.edu/~bcpierce/tapl/
[teyjus]:   https://teyjus.cs.umn.edu/
[abella]:   https://abella-prover.org/
[opam]:     https://opam.ocaml.org/
