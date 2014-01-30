def solution n
  (1..6).map { |m| (n * m).to_s.chars.sort }.uniq.size == 1
end

p (100000..150000).find { |n| solution n }
