" Project Euler #13
" vim -S 13.vim ../input/13

normal 100J
s/ /+/g
w! /tmp/e13 | e! /tmp/e13
r! bc < %
normal 10ld$kdd
