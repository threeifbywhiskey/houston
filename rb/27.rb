require 'prime'

max, maxprod = 0, 0

(-999..999).each do |a|
  (-999..999).each do |b|
    n = 0
    n += 1 while (n * n + a * n + b).prime?
    if n > max
      max = n
      maxprod = a * b
    end
  end
end

p maxprod
