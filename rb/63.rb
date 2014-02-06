ns = 0

(1..9).each do |a|
  (1..25).each do |b|
    ns += 1 if (a ** b).to_s.size == b
  end
end

p ns
