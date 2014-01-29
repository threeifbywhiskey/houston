" Project Euler #1
" vim -S 1.vim

" Get 999 blank lines.
norm yy998p

" Each line contains the product of its line number modulo 3 and 5.
%s/^/\=line('.') % 3 * line('.') % 5

" Replace each line containing 0 with a number of *s equal
" to its line number, then remove the remaining digits.
%s/0/\=repeat('*', line('.'))/ | %s/\_d//g

" Replace the *s with how many there are, namely the solution.
%s/.*/\=strlen(submatch(0))
