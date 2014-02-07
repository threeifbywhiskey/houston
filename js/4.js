palin = function(n) {
    s = n.toString().split('');
    return s.join('') == s.reverse().join('');
}

max = 0;

for (a = 900; a < 1000; ++a) {
    for (b = 900; b < 1000; ++b) {
        prod = a * b;
        if (prod > max && palin(prod))
            max = prod;
    }
}

console.log(max);
