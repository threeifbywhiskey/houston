" Project Euler #8
" vim -S 8.vim ../input/8

normal 20J
s/ //g

let max = 0
let nums = getline('.')

for i in range(996)
    let prod = nums[i] * nums[i + 1] * nums[i + 2] * nums[i + 3] * nums[i + 4]
    let max = prod > max ? prod : max
endfor

normal dd
let _ = append(0, max)
