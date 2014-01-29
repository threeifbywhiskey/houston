require 'date'

century = Date.new(1901, 1, 1)..Date.new(2000, 12, 31)
p century.select { |day| day.sunday? && day.day == 1 }.size
