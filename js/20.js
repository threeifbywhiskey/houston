var exec = require('child_process').exec;

var cmd = 'export BC_LINE_LENGTH=0; echo 1';
for (var i = 2; i <= 100; ++i)
    cmd += '*' + i;
cmd += ' | bc';

exec(cmd, function(_, out) {
    console.log(out.split('').map(function(n) {
        return n * 1;
    }).reduce(function(a, b) { return a + b }));
});
