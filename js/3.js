n = 600851475143, f = 3;

while (n != 1) {
    f += 2;
    if (n % f == 0)
        n /= f;
}

console.log(f);
