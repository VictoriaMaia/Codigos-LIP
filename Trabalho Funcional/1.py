# Faça um programa que recebe um inteiro n e 
# imprima os n primeiros termos da sequência
# de Fibonacci

# F(n+2) = F(n+1) + F(n), n>= 1 e F(1) = F(2) = 1

fibonacci = lambda n : (n==1 and 1) or (n==2 and 1)or (fibonacci(n-1) + fibonacci(n-2)) 

print(list(map(fibonacci, range(1, int(input())+1))))