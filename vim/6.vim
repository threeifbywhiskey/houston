" Project Euler #6
" vim -S 6.vim

sil 0r!seq 100
normal gg100J
s/\(\d\+\)/\1*\1/g | s/ /+/g | s/.*/\=eval(getline(1))

sil r!seq 100
normal 2G100J
s/ /+/g | s/.*/\=eval(getline(2))
normal yypkJr*
s/.*/\=eval(getline(2))
normal ddkPJr-
s/.*/\=eval(getline(1))
