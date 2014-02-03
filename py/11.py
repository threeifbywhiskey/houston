from re import split

with open('../input/11') as f:
    nums = map(int, split('\s', f.read())[:-1])

    max = 0

    for i in xrange(400):
        for j in [1, 19, 20, 21]:
            line = xrange(0, j * 4, j)
            prod = map(lambda k: nums[i + k if i + k < 400 else 0], line)
            prod = reduce(lambda a, b: a * b, prod)
            if prod > max:
                max = prod

print max
