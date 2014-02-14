" Project Euler #32
" vim -S 32.vim

fun! Pandigital(m, n, p)
    let str = printf("%d%d%d", a:m, a:n, a:p)
    let chars = sort(split(str, '\zs'))
    call map(chars, "str2nr(v:val)")
    return chars == range(1, 9)
endfun

let prods = []

for i in range(1, 9)
    for j in range(1234, 9876)
        if Pandigital(i, j, i * j)
            call add(prods, i * j)
        endif
    endfor
endfor

for i in range(12, 98)
    for j in range(123, 987)
        if Pandigital(i, j, i * j) && index(prods, i * j) == -1
            call add(prods, i * j)
        endif
    endfor
endfor

let sum = 0

for i in range(len(prods))
    let sum += prods[i]
endfor

call append(0, sum)
