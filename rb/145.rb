def rev n
  return false if n % 10 == 0
  "#{n + n.to_s.reverse.to_i}" =~ /^[13579]+$/
end

p (1..1e9).select { |n| rev n }.size
