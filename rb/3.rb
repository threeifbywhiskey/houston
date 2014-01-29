n, f = 600851475143, 3
(f += 2; n /= f if n % f == 0) until n == 1
p f
