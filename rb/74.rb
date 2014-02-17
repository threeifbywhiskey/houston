def fact n
  return 1 if n < 2
  (2..n).reduce(:*)
end

def facsum n
  n.to_s.chars.map { |m| fact m.to_i }.reduce(:+)
end

def chain_length n
  chain = [n]
  until chain.include?(n = facsum(n))
    chain << n
  end
  chain.length
end

p (1..1e6).select { |n| chain_length(n) == 60 }.size
