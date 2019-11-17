% Implemente um predicado concatena( L1, L2, L3 ) que concatena as listas L1 e L2 e coloca
% o resultado em L3.

% caso base: Se a L1 é vazia então L3 é igual a L2
% caso recurssivo: Vai pegando sempre o primeiro valor de L1, concatenando com L3 e chamando a recurssão com o resto de L1. Quando L1 ficar sem elementos chega no caso base

concatenar([], L2, [L2]) :- !.
concatenar([H|L1], L2, [H|L3]) :- concatenar(L1, L2, L3).

