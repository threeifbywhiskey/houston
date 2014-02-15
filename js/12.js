function divisors(n) {
    var factors = [];

    if (n % 2 == 0) {
        factors.push(2);
        while ((n = Math.floor(n / 2)) % 2 == 0)
            factors.push(2);
    }

    var p = 3;

    while (n > 1) {
        if (n % p == 0) {
            factors.push(p);
            while ((n = Math.floor(n / p)) % p == 0)
                factors.push(p);
        }
        p += 2;
    }

    var counts = {}
    for (var i = 0; i < factors.length; ++i)
        counts[factors[i]] = 1;
    for (var i = 0; i < factors.length; ++i)
        ++counts[factors[i]];

    factors = 1;
    for (key in counts)
        factors *= counts[key];
    return factors;
}

var n = p = 1;
while (divisors(n) <= 500)
    n += p += 1;
console.log(n);
