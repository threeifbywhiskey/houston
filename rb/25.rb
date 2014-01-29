fib = [1, 1]

until fib[-1].to_s.size > 999
  fib << fib[-1] + fib[-2]
end

p fib.size
