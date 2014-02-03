cache = {}

def collatz_length(n):
    orig, len = n, 1

    while n != 1:
        n = n * 3 + 1 if n % 2 else n / 2
        if cache.get(n):
            cache[orig] = len + cache[n]
            return cache[orig]
        len += 1

    cache[orig] = len
    return cache[orig]

print max(xrange(1, 1000000), key=collatz_length)
