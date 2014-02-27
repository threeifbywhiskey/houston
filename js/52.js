function digits(n) {
    return n.toString().split('').sort().join();
}

var i = 125874;

while (++i) {
    var sol = true;
    for (var j = 2; j <= 6; ++j)
        if (digits(i) != digits(i * j))
            sol = false;
    if (sol)
        break;
}

console.log(i);
