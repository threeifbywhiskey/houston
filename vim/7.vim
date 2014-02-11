" Project Euler #7
" vim -S 7.vim

fun! Prime(n)
    if a:n % 2 == 0 | return 0 | endif

    for a in range(3, float2nr(sqrt(a:n)) + 1, 2)
        if a:n % a == 0 | return 0 | endif
    endfor

    return 1
endfun

let primes=1
let n=2

while primes < 10001
    let n += 1
    if Prime(n)
        let primes += 1
    endif
endwhile

let _ = append(0, n)
