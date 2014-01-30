with open('../input/8') as f:
    nums = ''.join(f.read().split('\n'))

    max = 0

    for i in xrange(995):
        digits  = map(int, list(nums[i:i + 5]))
        product = reduce(lambda a, b: a * b, digits)
        if product > max:
            max = product

    print max
