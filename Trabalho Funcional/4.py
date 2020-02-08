 # Faça um programa que recebe uma lista L e a ordena
 # em uma nova lista utilizando o mergeSort. Se você 
 # não conhece o mergeSort, ver http://www.filedropper.com/mergesort. 

mergesort = lambda l: (len(l)<=1 and l) or (lambda f: (lambda x: f(lambda *args: x(x)(*args))) (lambda x: f(lambda *args: x(x)(*args)))) (
        lambda m: (lambda a,b,r: len(a) and (len(b) and (a[0]<=b[0] and (r.append(a[0]) or a.remove(a[0]) or m(a,b,r)) or (r.append(b[0]) or b.remove(b[0]) or m(a,b,r))) or (
        r.append(a[0]) or a.remove(a[0]) or m(a,b,r))) or (
        len(b) and (r.append(b[0]) or b.remove(b[0]) or m(a,b,r)) or r))) (mergesort(l[:int(len(l)/2)]), mergesort(l[int(len(l)/2):]), [])

print(mergesort(list(map(int, input().split(" ")))))