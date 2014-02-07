function divsum(n) {
    var sum = 0;
    for (var i = 1; i <= n / 2; ++i)
        sum += n % i == 0 ? i : 0;
    return sum;
};

var sum = 0
for (var i = 2; i < 10000; ++i) {
    var ds = divsum(i);
    if (i == divsum(ds) && i != ds)
        sum += i;
}

console.log(sum);
