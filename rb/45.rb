def pentagonal? n
  (Math.sqrt(24 * n + 1) + 1) / 6 % 1 == 0
end

hex = 143
break if pentagonal? n = hex * (2 * hex - 1) while hex += 1
p n
