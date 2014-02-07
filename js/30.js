function solution(n) {
    return n.toString().split('').map(function(c) {
        return Math.pow(c * 1, 5);
    }).reduce(function(a, b) {
        return a + b;
    }) == n;
}

sum = 0
for (var i = 2; i < 200000; ++i)
    sum += solution(i) ? i : 0;

console.log(sum);
