def value word
  word.chars.map { |c| c.ord - 64 }.reduce(:+)
end

# Build array of triangular numbers.
tri = [0]
20.times do |i|
  tri << tri[-1] + i
end

words = IO.read('../input/42').scan(/\w+/)
p words.select { |w| tri.include?(value w) }.size
