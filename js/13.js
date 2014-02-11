var exec  = require('child_process').exec,
    read  = require('fs').readFileSync,
    input = read('../input/13'),
    cmd   = input.toString().split("\n").slice(0, -1).join('+');

exec('echo ' + cmd + ' | bc', function(_, out) {
    console.log(out.substr(0, 10));
});

