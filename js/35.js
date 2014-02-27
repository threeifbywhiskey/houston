function prime(n) {
    if (n == 2)
        return true;

    if (n % 2 == 0)
        return false;

    for (m = 3; m <= Math.sqrt(n); m += 2)
        if (n % m == 0)
            return false;

    return true;
}

function circular(n) {
    var digs = 0, dup = n, mag = 1;

    if (!prime(n))
        return false;

    while (++digs, dup = Math.floor(dup / 10))
        mag *= 10;

    for (var i = 0; i < digs - 1; ++i) {
        n = (n % 10) * mag + Math.floor(n / 10);
        if (!prime(n))
            return false;
    }

    return true;
}

var total = 0;
for (var i = 2; i < 1e6; ++i)
    total += circular(i);
console.log(total);
