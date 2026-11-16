% Theorems, proved by exhaustion. Run: swipl -g main -t halt proofs/theorems.pl
:- module(theorems, [main/0]).
:- use_module(prove).
:- discontiguous theorem/1.
:- use_module(library(lists)).
:- use_module(library(apply)).
main :- prove_all(theorems).
:- use_module('../prolog/detconc').

% Domain: every DAG on tasks a, b, c, d where each task may depend on any earlier ones, with every op.
op(O) :- member(O, [sum, product, max, inc]).
dag(Ts) :- member(Ca, [const(1), const(2)]), member(Cb, [const(3), const(0)]),
    subset_of([a, b], Dc), op(Oc), subset_of([a, b, c], Dd), op(Od),
    Ts = [task(a, [], Ca), task(b, [], Cb), task(c, Dc, Oc), task(d, Dd, Od)].
subset_of([], []).
subset_of([X|Xs], [X|Ys]) :- subset_of(Xs, Ys).
subset_of([_|Xs], Ys) :- subset_of(Xs, Ys).

% 1. Determinism: every order that respects the dependencies gives the same results.
theorem(every_schedule_same_results) :- forall(dag(Ts), ( findall(R, ( orders(Ts, O), run_order(Ts, O, R) ), [R1|Rs]), forall(member(R, Rs), R == R1) )).

% 2. The parallel waves give the same results as any sequential order.
theorem(waves_equal_sequential) :- forall(dag(Ts), ( run_waves(Ts, R1), orders(Ts, O), run_order(Ts, O, R2), R1 == R2 )).

% 3. The waves respect the dependencies, and cover every task once.
theorem(waves_are_valid) :- forall(dag(Ts), ( waves(Ts, Ws), append(Ws, O), valid_order(Ts, O) )).

% 4. The number of waves is the longest chain of dependencies (no schedule needs fewer rounds).
theorem(waves_are_the_critical_path) :- forall(dag(Ts), ( critical_path(Ts, N), longest_chain(Ts, L), N =:= L )).
longest_chain(Ts, L) :- aggregate_all(max(D), ( member(task(Id, _, _), Ts), depth(Ts, Id, D) ), L).
depth(Ts, Id, D) :- member(task(Id, Ds, _), Ts), ( Ds == [] -> D = 1 ; aggregate_all(max(X), ( member(P, Ds), depth(Ts, P, X) ), M), D is M + 1 ).
