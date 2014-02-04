nums = IO.read('../input/18').split("\n").map { |l| l.split.map(&:to_i) }

p 16834.times.map { |i|
  n = 0
  14.times.map { |j| nums[j + 1][n += i[j]] }.reduce(:+)
}.max + nums[0][0]
