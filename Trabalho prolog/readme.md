# Informações sobre as questões:

### 1. Predicado que concatena duas listas.

   Input : lista L1; lista L2; lista vazia X
    
   Outuput : X contendo a união de L1 e L2
  
   Exemplo de execução:
  
  ```
  $ swipl q1.pl
  ?- concatenar([1,2],[3,4],X).
    X = [1, 2, [3, 4]].  
  ```

### 2. Predicado que reconhece se o número n3 é uma (soma, multiplicação, divisão, ou subtração) de dois números (n1 e n2).

   Input : três inteiros (n1, n2, n3)
    
   Outuput : operação que n3 é resultado utilizando n1 e n2

   Exemplo de execução:
  
  ```
  $ swipl q2.pl
  ?- qual_op(18,3,6).
    6 é uma divisão de 18/3
    true.
  ```


### 3. Predicado que calcula potencia.

   Input : inteiro A; inteiro B; variável X
    
   Output : A^B
    
   Exemplo de execução:
    
    ```
    $ swipl q3.pl
    ?- potencia(2,3,X).
      X = 8.
    ```
    
    
### 4. Predicado que calcula a moda.

   Input : lista L; variável X
    
   Output : moda da lista L
    
   Exemplo de execução:
    
    ```
    $ swipl q4.pl
    ?- moda([1,1,1,2,3,1,2],X).
      X = 1.
    ```

### 5. Predicado que reconhece o último valor, o primeiro valor, o maior valor e o menor valor.

   Input : lista L
    
   Output : último valor U, primeiro valor P, maior valor M, menor valor N

   Exemplo de execução:
   
    ```
    $ swipl q5.pl
    ?- ultimo_primeiro_maior_menor([5,1,7,2],U,P,M,N).
    U = 2,
    P = 5,
    M = 7,
    N = 1.
    ```
