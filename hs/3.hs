-- largest prime factor
lpf' f n | n == 1 = f
         | mod n f == 0 = lpf' f (quot n f)
         | True = lpf' (f + 2) n

lpf = lpf' 3

main = print $ lpf 600851475143
