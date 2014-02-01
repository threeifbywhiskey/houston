ones = [0, 3, 3, 5, 4, 4, 3, 5, 5, 4, 3, 6, 6, 8, 8, 7, 7, 9, 8, 8]
tens = [0, 3, 6, 6, 5, 5, 5, 7, 6, 6]

def letters(n):
    if n < 20:
        return ones[n]
    if n % 10 == 0 and n < 100:
        return tens[n / 10]
    if n < 100:
        return tens[n / 10] + ones[n % 10]

    return ones[n / 100] + (10 if n % 100 else 7) + letters(n % 100)

total = 0

for i in xrange(1, 1001):
    total += letters(i)

# Add 1 instead of special-casing "one thousand".
print total + 1
