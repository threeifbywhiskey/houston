function pandigital(n, m, p) {
    str = '' + n + m + p;
    if (str.indexOf('0') != -1)
        return false;
    for (var i = 1; i < 10; ++i)
        if (str.split(i + '').length != 2)
            return false;
    return true;
}

var prods = [];

for (var i = 1; i < 10; ++i)
    for (var j = 1234; j < 9876; ++j)
        if (pandigital(i, j, i * j))
            prods.push(i * j);

for (var i = 12; i < 98; ++i)
    for (var j = 123; j < 987; ++j)
        if (pandigital(i, j, i * j))
            prods.push(i * j);

prods = prods.filter(function (e, i, arr) {
    return prods.lastIndexOf(e) === i;
});

console.log(prods.reduce(function(a, b) { return a + b }));
