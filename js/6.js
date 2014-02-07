n = 100;
sum = n / 2 * (n + 1);
sqsum = sum * sum;
sumsq = 0;

for (var i = 1; i <= n; ++i)
    sumsq += i * i;

console.log(sqsum - sumsq);
