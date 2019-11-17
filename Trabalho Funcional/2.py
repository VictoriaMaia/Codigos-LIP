# Faça um programa que recebe uma lista de inteiros e 
# imprime somente os números que não
# são primos.

not_primo = lambda x : len(
    list(filter(lambda num: int(x) % num == 0, range(2, int(x))))
    ) != 0

print(list(filter(not_primo, list(map(int, input("não termine com espaço\n").split(" "))))))
