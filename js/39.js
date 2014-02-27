function rights(p) {
    var r = 0;
    for (var i = 1; i <= 1000; ++i)
        if ((p * p - 2 * p * i) / (2 * p - 2 * i) % 1 == 0)
            ++r;
    return r / 2;
}

var max, mr = 0;

for (var i = 120; i <= 1000; ++i) {
    var r = rights(i);
    if (r > mr)
        mr = r, max = i;
}

console.log(max);
