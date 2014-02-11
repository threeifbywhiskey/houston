var fs = require('fs'),
    input = fs.readFileSync('../input/99'),
    nums = input.toString().split('\n');

var max = 0, line;

for (var i = 0; i < nums.length; ++i) {
    sp = nums[i].split(',');
    a = sp[0] * 1, b = sp[1] * 1;

    prod = Math.log(a) * b;
    if (prod > max)
        max = prod, line = i + 1;
}

console.log(line);
