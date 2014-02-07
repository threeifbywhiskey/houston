function fact(n) {
    return n < 2 ? 1 : n * fact(--n);
}

function factsum(n) {
    return n.toString().split('').map(function(c) {
        return fact(c * 1);
    }).reduce(function(a, b) {
        return a + b;
    });
}

sum = 0;
for (var i = 3; i < 42000; ++i)
    sum += factsum(i) == i ? i : 0;

console.log(sum);
