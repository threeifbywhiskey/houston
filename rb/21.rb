def divsum n
  (1..n / 2).select { |m| n % m == 0 }.reduce(:+)
end

sum = 0

(2..10000).each do |i|
  ds = divsum i
  sum += i if i == divsum(ds) && i != ds
end

p sum
