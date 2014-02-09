var fs = require('fs'),
    input = fs.readFileSync('../input/11'),
    nums = input.toString().split(/\s+/).map(function(num) {
        return num * 1;
    });

var max = 0;
for (var i = 0; i < 400; ++i) {
    for (var j = 19; j < 22; ++j) {
        var prod = 1;
        for (var k = 0; k <= j * 3; k += j)
            prod *= i + k >= 400 ? 1 : nums[i + k];
        max = prod > max ? prod : max;
    }
}

console.log(max);
