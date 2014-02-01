def bouncy? n
  c = n.to_s.chars.to_a
  c != (s = c.sort) && c != s.reverse
end

b, n = 0, 0
until b / n.to_f == 0.99
  n += 1
  b += bouncy?(n) ? 1 : 0
end

p n
