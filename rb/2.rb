fib = [1, 1]
fib << fib[-1] + fib[-2] while fib[-1] < 4e6
p fib.select(&:even?).reduce(:+)
