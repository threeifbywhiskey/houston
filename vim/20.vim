" Project Euler #20
" vim -S 20.vim

" Use bc to get the number.
0r!seq 100 | paste -sd '*' | bc

" Get the number on a single line."
%s/\\\n//g

" Put +s in between the numbers and remove the last one.
%s/\d/\=submatch(0) . '+'/g | normal $x

" Replace the line with its sum.
s/.*/\=eval(getline(1))
