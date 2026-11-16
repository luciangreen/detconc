:- module(cases, [title/1, case/3]).
:- use_module('../prolog/detconc').
:- use_module(engine).
title('detconc').
dag_g(Ts) :- rnd_int(2, 6, N), numlist(1, N, Is), foldl([I, A0, A]>>( atom_concat(t, I, Id), findall(P, member(task(P, _, _), A0), Prev),
    ( Prev == [] -> rnd_int(0, 5, C), T = task(Id, [], const(C)) ; rnd_subset(Prev, Ds), ( Ds == [] -> rnd_int(0, 5, C), T = task(Id, [], const(C)) ; rnd_pick([sum, product, max, inc], Op), T = task(Id, Ds, Op) ) ),
    append(A0, [T], A) ), Is, [], Ts).
case(waves, [Ts], waves) :- dag_g(Ts).
case(run_waves, [Ts], run_waves) :- dag_g(Ts).
case(critical_path, [Ts], critical_path) :- dag_g(Ts).
case(run_reversed_valid, [Ts], run_some_order) :- dag_g(Ts).
% the last valid order (in permutation order) gives the same results as the waves
run_some_order(Ts, same_as_waves(B)) :- findall(O, orders(Ts, O), Os), last(Os, O), run_order(Ts, O, R1), run_waves(Ts, R2), ( R1 == R2 -> B = true ; B = false ).
