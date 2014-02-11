" Project Euler #28
" vim -S 28.vim

let n = 1000
let total = 1 | let cur = 1 | let add = 0

for i in range(n / 2)
    let add += 2
    for j in range(4)
        let cur += add
        let total += cur
    endfor
endfor

let _ = append(0, total)
