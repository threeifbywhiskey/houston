n, f = 600851475143, 3

while n != 1:
    f += 2
    if n % f == 0:
        n /= f

print f
