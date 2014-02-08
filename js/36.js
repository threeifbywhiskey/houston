function palin(base, n) {
    var digs = [];
    while (n) {
        digs.push(n % base);
        n = Math.floor(n / base)
    }
    return digs.toString() == digs.reverse().toString();
}

var sum = 0
for (var i = 1; i < 1e6; ++i)
    sum += palin(10, i) && palin(2, i) ? i : 0;

console.log(sum);
