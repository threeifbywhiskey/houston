var fs = require('fs'),
    input = fs.readFileSync('../input/18'),
    nums = input.toString().split("\n").map(function(line) {
        return line.split(' ').map(function(num) {
            return num * 1;
        });
    });

var max = 0
for (var i =0; i < 16384; ++i) {
    var n = 0, sum = nums[0][0];
    for (var j = 0; j < 14; ++j)
        sum += nums[j + 1][n += i >> j & 1];
    max = sum > max ? sum : max;
}

console.log(max);
