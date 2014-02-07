let n = 5040

while 1
    if n % 11 || n % 13 || n % 14 || n % 17 || n % 19 || n % 20
    else
        break
    endif
    let n += 5040
endwhile

let _ = append(0, n)
