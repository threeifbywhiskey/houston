n = 5040

while any(map(lambda m: n % m, [11, 13, 14, 17, 19, 20])):
    n += 5040

print n
