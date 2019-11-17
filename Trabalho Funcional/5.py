# Faça um programa que recebe um inteiro n e uma string s como entrada e imprime uma
# nova string com cada vogal (letras ‘a’, ‘e’, ‘i’, ‘o’, ‘u’ minúsculas ou maiúsculas) repetida n
# vezes, os outros caracteres devem permanecer inalterados. Por exemplo, se s = “quixada” e
# n = 3, seu programa deve imprimir “quuuiiixaaadaaa”. Não utilize funções prontas da
# linguagem.

repetir = lambda vogal, x: (x > 0) and vogal + repetir(vogal, x-1) or ""

# Se o tamanho da string for maior do que zero, será verificado se o primeiro caracter é uma vogal,
# se for, repete a vogal e chama recurssivo a função para o restante da string tirando o primeiro
# caracter. Se o tamanho da string for zero retorna uma string vazia para ser concatenada no fim da
# strign de resposta.

# f(S) = repete(x) + f(t) se x for vogal 
#        x + f(t) c.c

f = lambda strEntrada, qnt: (len(strEntrada) > 0 or "") and (((strEntrada[0] == "A" or strEntrada[0] == "a" or strEntrada[0] == "E" or strEntrada[0] == "e" or strEntrada[0] == "I" or strEntrada[0] == "i" or strEntrada[0] == "O" or strEntrada[0] == "o" or strEntrada[0] == "U" or strEntrada[0] == "u") and repetir(strEntrada[0],qnt) + f(strEntrada[1:], qnt)) or (strEntrada[0] + f(strEntrada[1:],qnt)))


print(f(input("Digite a string:\n"), int(input("Digite o inteiro:\n"))))

# ------------- Anotação ----------------
# print(entrada[1])
# stringEntrada = entrada[1].split("")
# stringEntrada.insert(0, "e")
# print(''.join(stringEntrada))