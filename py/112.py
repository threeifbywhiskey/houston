def bouncy(n):
    c = list(str(n))
    return c != sorted(c) and c != sorted(c, reverse=True)

b, n = 0, 1

while b / float(n) != .99:
    n += 1
    b += bouncy(n)

print n
