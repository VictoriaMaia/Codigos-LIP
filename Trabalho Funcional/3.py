# Faça um programa que recebe duas listas A e B e 
# imprime a diferença simétrica de A e B. A
# diferença simétrica de A e B é dada por 
# (A - B) U (B - A).

pertence = lambda x, L: len(L) > 0 and (x == L[0] or pertence(x, L[1:]))
# selecionar quem esta em L1 e não esta em L2
selecionar = lambda L1, L2: filter(lambda x: not(pertence(x, L2)), L1)
dif_simetrica = lambda L1, L2: list(selecionar(L1, L2)) + list(selecionar(L2, L1))

print(dif_simetrica(input("Lista1\n").split(" "), input("Lista2\n").split(" ")))
