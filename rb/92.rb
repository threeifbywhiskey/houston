def arrive89 n
  until n == 1 || n == 89
    n = n.to_s.split('').map { |m| m.to_i * m .to_i }.reduce(:+)
  end

  return n == 89
end

p (1..10000000).select { |n| arrive89 n }.size
