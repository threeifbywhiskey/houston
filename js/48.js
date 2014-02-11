var exec = require('child_process').exec;

var cmd = 'export BC_LINE_LENGTH=0; echo 1';
for (var i = 2; i <= 1000; ++i)
    cmd += '+' + i + '^' + i;
cmd += ' | bc';

exec(cmd, function(_, out) {
    console.log(out.substr(-11, 10));
});
