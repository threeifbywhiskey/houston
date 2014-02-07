function prime(n) {
    n = n < 0 ? -n : n;

    if (n == 2)
        return true;

    if (n % 2 == 0)
        return false;

    for (m = 3; m <= Math.sqrt(n); m += 2)
        if (n % m == 0)
            return false;

    return true;
}

var max = maxprod = 0;

for (var a = -999; a < 1000; ++a) {
    for (var b = -999; b < 1000; ++b) {
        n = 0;
        while (prime(n * n + a * n + b))
            ++n;
        if (n > max)
            max = n, maxprod = a * b;
    }
}

console.log(maxprod);
