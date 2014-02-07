for (a = 5; a < 1000; a += 5) {
    for (b = 5; b < 1000 - a; b += 5) {
        c = 1000 - a - b;
        if (a * a + b * b == c * c)
            return console.log(a * b * c);
    }
}
