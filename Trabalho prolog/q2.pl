% Implementar as quatro operações matemáticas, onde possamos saber se um número é uma
% (soma, multiplicação, divisão, ou subtração) de dois números. Ex.: operacao(X, Y, Z) pode
% imprimir "Z é uma soma de X+Y". Outro exemplo: operacao(18,3,6) imprime "6 é uma
% divisão de 18/3"

soma(X,Y,Z) :- Z is X+Y.
sub(X,Y,Z) :- Z is X-Y.
div(X,Y,Z) :- Z is X/Y.
mult(X,Y,Z):- Z is X*Y.

imprimir_soma(X,Y,Z) :- write(Z), write(" é uma soma de "), write(X), write("+"), write(Y), write("\n").
imprimir_sub(X,Y,Z) :- write(Z), write(" é uma subtração de "), write(X), write("-"), write(Y), write("\n").
imprimir_mult(X,Y,Z) :- write(Z), write(" é uma multiplicação de "), write(X), write("*"), write(Y), write("\n").
imprimir_div(X,Y,Z) :- write(Z), write(" é uma divisão de "), write(X), write("/"), write(Y), write("\n").    

qual_op(X,Y,Z) :- (mult(X,Y,Z), Z>0, div(X,Y,Z), imprimir_mult(X,Y,Z), imprimir_div(X,Y,Z)),!;
                  (sub(X,Y,Z), Z>0, div(X,Y,Z), imprimir_sub(X,Y,Z), imprimir_div(X,Y,Z)),!; 
                  (soma(X,Y,Z), imprimir_soma(X,Y,Z)),!; 
                  (sub(X,Y,Z), imprimir_sub(X,Y,Z)),!; 
                  (mult(X,Y,Z), imprimir_mult(X,Y,Z)),!; 
                  (div(X,Y,Z), imprimir_div(X,Y,Z)),!.