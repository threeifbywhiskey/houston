def pandigital *args
  args.join.chars.sort == [*'1'..'9']
end

prods = []

(1..9).each do |a|
  (1234..9999).each do |b|
    prods << a * b if pandigital a, b, a * b
  end
end

(12..98).each do |a|
  (123..987).each do |b|
    prods << a * b if pandigital a, b, a * b
  end
end

p prods.uniq.reduce(:+)
