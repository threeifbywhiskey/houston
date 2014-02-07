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

primes = [2];

for (i = 3; primes.length != 10001; i += 2)
    if (prime(i))
        primes.push(i);

console.log(primes[10000]);
