def divsum n
  (1..n / 2).select { |m| n % m == 0 }.reduce(:+)
end

amicable = []

(2..10000).each do |i| # 220
  ds = divsum i
  amicable << i if i == divsum(ds) && i != ds
end

p amicable.reduce(:+)
