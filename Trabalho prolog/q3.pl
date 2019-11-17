% Implemente um predicado potencia( A, B, X ), que coloca em X o valor do A^B . É proibido o
% uso do operador de potência (^) ou o uso de funções prontas que calculem a potência.

% caso base: B é zero então A ^ 0 é 1 . Então A é uma variável que não importa e X recebe 1
% caso recursivo : B é decrementado, chama a recursão e calcula a multiplicação na volta da 
% recursão.

potencia(_, 0, 1) :- !.
potencia(A, B, X) :- Bdec is B-1, potencia(A,Bdec,Aux), X is A*Aux.
