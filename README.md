# detconc

parallel Prolog that always gives the same results however the work is scheduled. A job is a DAG of tasks; each task is a pure function of its inputs' results. Any order that respects the dependencies (any topological order, or the waves that run side by side) gives the same results, so a parallel run can be checked against any sequential one. Tasks: task(Id, Deps, Op) with Op one of const(N), sum, product, max, inc.

## Use

```prolog
?- use_module(prolog/detconc).
?- waves([task(a, [], const(2)), task(b, [], const(3)), task(c, [a, b], sum)], W).   % W = [[a,b],[c]]
?- run_order([task(a, [], const(2)), task(b, [], const(3)), task(c, [a, b], sum)], [b, a, c], R).   % R = [a-2, b-3, c-5]
```

## Proofs

`proofs/theorems.pl` proves 4 theorems by exhaustion: each one is checked for every case in a finite domain that covers every branch of the definitions. every DAG on tasks a, b, c, d where each task may depend on any earlier ones, with every op.

1. Determinism: every order that respects the dependencies gives the same results.
2. The parallel waves give the same results as any sequential order.
3. The waves respect the dependencies, and cover every task once.
4. The number of waves is the longest chain of dependencies (no schedule needs fewer rounds).

```sh
swipl -g main -t halt proofs/theorems.pl
```

## 200 inputs and outputs

`io/ios.txt` lists 200 inputs and outputs from real runs, and `io/ios.pl` has the same as Prolog facts. The inputs come from a fixed seed (`io/cases.pl`). `swipl -g check -t halt io/run.pl` runs them again. It fails if any output changes, or if a predicate doesn't confirm its own recorded output, which checks steadfastness. GitHub Actions runs the proofs and the examples on every push, and records the examples on the first push.

Licence: BSD-3-Clause.
