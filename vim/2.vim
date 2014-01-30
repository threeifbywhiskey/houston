" Project Euler #2
" vim -S 2.vim

let a = 1
let b = 1

" Get the Fibonacci numbers.
while b < 4000000
    let a += b
    let _ = append(line('$'), a)
    let b += a
    let _ = append(line('$'), b)
endwhile

" Remove the odd ones."
%s/^.*[13579]\n/

" Join the numbers (with spaces)."
normal ddggvGJ

" Replace the spaces with +s and eval.
s/ /+/g | s/.*/\=eval(getline(1))
