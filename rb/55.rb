def palindromic? n
  (s = n.to_s) == s.reverse
end

def lychrel? n
  50.times do
    n += n.to_s.reverse.to_i
    return false if palindromic? n
  end

  true
end

p (1..10000).select { |n| lychrel? n }.size
