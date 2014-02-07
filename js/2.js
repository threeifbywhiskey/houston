a = 1, b = 1, sum = 0;

while (b < 4e6) {
    a += b;
    sum += a % 2 ? 0 : a;
    b += a;
    sum += b % 2 ? 0 : b;
}

console.log(sum)
