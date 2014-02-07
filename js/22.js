var fs = require('fs');

var input = fs.readFileSync('../input/22');
var names = eval('[' + input + ']').sort();

function value(name) {
    var val = 0;
    for (var i = 0; i < name.length; ++i)
        val += name.charCodeAt(i) - 64;
    return val;
}

sum = 0;
for (var i = 0; i < names.length; ++i)
    sum += (i + 1) * value(names[i]);

console.log(sum);
