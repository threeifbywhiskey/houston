i = 0
num = ''

while len(num) < 1e6:
    i += 1
    num += str(i)

prod = 1
for i in xrange(0, 7):
    prod *= int(num[10 ** i - 1])

print prod
