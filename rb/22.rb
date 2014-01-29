def name_value name
  name.chars.map { |c| c.ord - 64 }.reduce(:+)
end

p IO.read('../input/22')
  .scan(/\w+/)
  .sort
  .each_with_index
  .reduce(0) { |sum, (name, i)|
    sum += name_value(name) * i.succ
  }
