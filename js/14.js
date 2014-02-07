cache = {}

function collatz_length(n) {
    var orig = 1, len = 1;

    while (n != 1) {
        n = n % 2 ? n * 3 + 1 : Math.floor(n / 2);
        if (cache[n])
            return cache[orig] = len;
        ++len;
    }

    return cache[orig] = len;
}

var maxlen = 0, max;

for (i = 1; i < 1000000; ++i) {
    len = collatz_length(i);
    if (len > maxlen)
        maxlen = len, max = i;
}

console.log(max);
