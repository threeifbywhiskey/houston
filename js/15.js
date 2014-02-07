function fact(n) {
    return n < 2 ? 1 : n * fact(--n);
}

n = 20
console.log(fact(2 * n) / (fact(n) * fact(n)));
