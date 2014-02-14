function bouncy(n) {
    var c = n.toString().split(''),
        s = c.slice(0).sort();
    return c.toString() != s.toString() && c.toString() != s.reverse().toString();
}

var b = n = 0;
while (b / n != 0.99)
    b += bouncy(n += 1);

console.log(n);
