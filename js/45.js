function pentagonal(n) {
    return (Math.sqrt(24 * n + 1) + 1) / 6 % 1 == 0;
}

for (i = 144 ;; ++i)
    if (pentagonal(n = i * (2 * i - 1)))
        break;

console.log(n);
