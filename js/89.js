var fs = require('fs'),
    input = fs.readFileSync('../input/89');

roman = {I: 1, IV: 4, V: 5, IX: 9, X: 10, XL: 40, L: 50,
         XC: 90, C: 100, CD: 400, D: 500, CM: 900, M: 1000};

function from_roman(str) {
    var vals = str.split('').map(function (c) { return roman[c]; });
    for (var i = 0; i < vals.length - 1; ++i)
        if (vals[i + 1] > vals[i])
            vals[i] *= -1;
    return vals.reduce(function(a, b) { return a + b; });
}

function to_roman(n) {
    var str = '',
        nums = Object.keys(roman);
    while (n) {
        var max = 0;
        for (var i = nums.length - 1; i > -1; --i) {
            if (roman[nums[i]] <= n) {
                max = i;
                break;
            }
        }
        str += nums[max];
        n -= roman[nums[max]];
    }

    return str;
}

var nums = input.toString().split("\n");
console.log(nums.slice(0, -1).map(function(num) {
    return num.length - to_roman(from_roman(num)).length;
}).reduce(function(a, b) { return a + b; }));
