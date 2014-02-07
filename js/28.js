var n = 1000, t = 1, c = 1, a = 0

for (var i = 0; i < n / 2; ++i) {
    a += 2;
    for (var j = 0; j < 4; ++j)
        t += c += a;
}

console.log(t);
