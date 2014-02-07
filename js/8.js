var fs = require('fs');

var input = fs.readFileSync('../input/8').toString().replace(/\n/g, '');

max = 0;

for (var i = 0; i < 996; ++i) {
    var prod = eval(input.substr(i, 5).replace(/\B/g, '*'));
    max = prod > max ? prod : max;
}

console.log(max);
