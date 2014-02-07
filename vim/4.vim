" Project Euler #4
" vim -S 4.vim

fun Palin(n)
    let str = split(string(a:n), '\zs')
    return reverse(copy(str)) == str
endfun

let max = 0
for a in range(900, 999)
    for b in range(900, 999)
        let prod = a * b
        if (Palin(prod)) && prod > max
            let max = prod
        endif
    endfor
endfor

let _ = append(0, max)
