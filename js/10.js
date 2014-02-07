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

sum = 2;
for (i = 3; i < 2000000; i += 2)
    sum += prime(i) ? i : 0;

console.log(sum);
