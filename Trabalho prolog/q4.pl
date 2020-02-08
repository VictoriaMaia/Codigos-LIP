contar(_, [], 0) :- !.
contar(X, [X|T], R) :- contar(X, T, Aux), R is 1+Aux, !.
contar(X, [_|T], R) :- contar(X, T, R).

frequente([H|T], H, 1) :- T = [].
frequente([H|T], V, F) :- contar(H, [H|T], Aux), frequente(T, VAux, Aux2), (Aux > Aux2 -> F is Aux, V is H; F is Aux2, V is VAux), !.

moda([H|T], V) :- frequente([H|T], V, _).