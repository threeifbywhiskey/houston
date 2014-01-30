nums = IO.read('../input/11').split.map(&:to_i)

max = 0

400.times do |i|
  [1, 19, 20, 21].each do |j|
    line = (0..j * 3).step(j)
    prod = line.map { |k| nums[i + k].to_i }.reduce(:*)
    max  = prod if prod > max
  end
end

p max
