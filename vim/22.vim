" Project Euler #22
" vim -S 22.vim ../input/22

" Split to lines on commas and sort.
s/,//g | sort

" Replace each letter with its value and a +.
%s/\u/\=char2nr(submatch(0)) - 64 . '+'/g

" Build up the math: position * (value)
%s/"/\=line('.') . '*('/ | %s/+"/)/

" Mush it all into a big sum and eval.
1,$-1s/\n/+/ | s/.*/\=eval(getline(1))
