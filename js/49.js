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

function same_digits(a, b) {
    return a.toString().split('').sort().toString()
        == b.toString().split('').sort().toString();
}

for (var i = 1488 ;; ++i) {
    var j = i + 3330, k = i + 6660;
    if (prime(i) && prime(j) && prime(k) && same_digits(i, j) && same_digits(j, k))
        break;
}

console.log([i, i + 3330, i + 6660].join(''));
