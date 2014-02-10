" Project Euler #9
" vim -S 9.vim

for a in range(5, 1000, 5)
    let done = 0
    for b in range(5, 1000 - a, 5)
        let c = 1000 - a - b
        if a * a + b * b == c * c
            let _ = append(0, a * b * c)
            let done = 1
        endif
    endfor
    if done
        break
    endif
endfor
