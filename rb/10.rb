require 'prime'

gen = Prime.each
sum = 0

while (n = gen.next) < 2e6
  sum += n unless n > 2e6
end

p sum
