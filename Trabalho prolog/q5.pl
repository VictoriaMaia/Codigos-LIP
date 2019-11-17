% Implemente o predicado ultimo_primeiro_maior_menor( L, U, P, M, N ) que, da lista L,
% coloca o último elemento em U, o primeiro elemento em P, o maior elemento em M e o
% menor elemento em N.

% caso base: o corpo da lista ser vazio, então o último é a cabeça
% caso recursivo: mandar sempre o corpo tirando a cabeça.
ultimo([H|T], U) :- T = [], U is H, !.
ultimo([_|T], U) :- ultimo(T, U).

primeiro([P|_], P) :- !.

% if -> then; else
% caso base: se só tem um valor na lista, então M é igual a ele
% caso recursivo : A partir do último valor, vai verificando se o anterior é maior

maior([M|T], M) :- T = [], !.
maior([H|T], M) :- maior(T, Aux), (H > Aux -> M is H ; M is Aux).

menor([N|T], N) :- T = [], !.
menor([H|T], N) :- menor(T, Aux), (H < Aux -> N is H ; N is Aux).


ultimo_primeiro_maior_menor(L, U, P, M, N) :- primeiro(L,P), ultimo(L,U), maior(L,M), menor(L,N).

