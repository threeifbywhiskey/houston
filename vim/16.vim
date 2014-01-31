" Project Euler #16
" vim -S 16.vim

" Use bc to get the number.
0r!echo 2 ^ 1000 | bc

" Get the number on a single line."
%s/\\\n//g

" Put +s in between the numbers and remove the last one.
%s/\d/\=submatch(0) . '+'/g | normal $x

" Replace the line with its sum.
s/.*/\=eval(getline(1))
