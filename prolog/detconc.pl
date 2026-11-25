% detconc: parallel Prolog that always gives the same results however the work is scheduled.
% A job is a DAG of tasks; each task is a pure function of its inputs' results. Any order that
% respects the dependencies (any topological order, or the waves that run side by side) gives
% the same results, so a parallel run can be checked against any sequential one.
% Tasks: task(Id, Deps, Op) with Op one of const(N), sum, product, max, inc.
%?- waves([task(a, [], const(2)), task(b, [], const(3)), task(c, [a, b], sum)], W).   % W = [[a,b],[c]]
%?- run_order([task(a, [], const(2)), task(b, [], const(3)), task(c, [a, b], sum)], [b, a, c], R).   % R = [a-2, b-3, c-5]
%?- run_waves([task(a, [b], const(1)), task(b, [a], const(2)), task(c, [z], sum)], R).   % R = error(unscheduled([a,b,c]), missing([z]))
:- module(detconc, [valid_order/2, orders/2, run_order/3, waves/2, run_waves/2, critical_path/2]).
:- use_module(library(lists)).
:- use_module(library(apply)).
:- use_module(library(pairs)).

apply_op(const(N), _, N).
apply_op(sum, Xs, S) :- sum_list(Xs, S).
apply_op(product, Xs, P) :- foldl([X, A, B]>>(B is A * X), Xs, 1, P).
apply_op(max, Xs, M) :- ( Xs == [] -> M = 0 ; max_list(Xs, M) ).
apply_op(inc, Xs, Y) :- sum_list(Xs, S), Y is S + 1.

valid_order(Ts, O) :- length(Ts, N), length(O, N), msort(O, S), findall(Id, member(task(Id, _, _), Ts), Ids), msort(Ids, S),
    forall(( nth1(I, O, Id), member(task(Id, Ds, _), Ts), member(D, Ds) ), ( nth1(J, O, D), J < I )).
orders(Ts, O) :- findall(Id, member(task(Id, _, _), Ts), Ids), permutation(Ids, O), valid_order(Ts, O).

% run_order(+Tasks, +Order, -Results): Id-Value pairs, sorted by Id.
run_order(Ts, O, R) :- foldl([Id, A0, A]>>( member(task(Id, Ds, Op), Ts), maplist([D, V]>>memberchk(D-V, A0), Ds, Vs), apply_op(Op, Vs, X), A = [Id-X|A0] ), O, [], R0), msort(R0, R).

% waves(+Tasks, -Waves): wave k holds the tasks whose dependencies are all in earlier waves.
waves(Ts, Ws) :- waves_(Ts, [], Ws).
waves_(Ts, Done, Ws) :- findall(Id, ( member(task(Id, Ds, _), Ts), \+ memberchk(Id, Done), forall(member(D, Ds), memberchk(D, Done)) ), W0), msort(W0, W),
    ( W == [] -> Ws = [] ; append(Done, W, Done1), Ws = [W|Rest], waves_(Ts, Done1, Rest) ).

% run_waves(+Tasks, -Results): each wave's tasks could run at the same time; the results are the same.
% A job that is not a DAG gives error(unscheduled(Ids), missing(Deps)): Ids are the tasks no wave could
% place (they are on a cycle, or wait on one, or on a task that does not exist) and Deps the dependencies
% that name no task. Nothing is dropped without saying so.
run_waves(Ts, R) :- waves(Ts, Ws), append(Ws, O), unscheduled(Ts, O, U),
    ( U == [] -> run_order(Ts, O, R) ; missing(Ts, M), R = error(unscheduled(U), missing(M)) ).
unscheduled(Ts, Placed, U) :- findall(Id, ( member(task(Id, _, _), Ts), \+ memberchk(Id, Placed) ), U0), msort(U0, U).
missing(Ts, M) :- findall(D, ( member(task(_, Ds, _), Ts), member(D, Ds), \+ memberchk(task(D, _, _), Ts) ), M0), sort(M0, M).
critical_path(Ts, N) :- waves(Ts, Ws), length(Ws, N).
