def rights p
  (1..1000).select { |a|
    (p * p - 2 * p * a) / (2 * p - 2 * a).to_f % 1 == 0
  }.size / 2
end

p (120..1000).max_by { |n| rights n }
