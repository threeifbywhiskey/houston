var fs = require('fs'),
    input = fs.readFileSync('../input/42'),
    words = eval('[' + input + ']');

function triangular(n) {
    return Math.sqrt(8 * n + 1) % 1 == 0;
}

function value(word) {
    return word.split('').map(function(c) {
        return c.charCodeAt(0) - 64;
    }).reduce(function(a, b) {
        return a + b;
    });
}

console.log(words.map(value).filter(triangular).length);
