cipher = eval '[' + IO.read('../input/59') + ']'
alpha  = [*97..122]
keys   = alpha.product alpha, alpha

key = keys.max_by do |key|
  copy = cipher.dup
  copy.size.times do |i|
    copy[i] ^= key[i % 3]
  end
  copy.count 32
end

p cipher.zip(key.cycle).map { |a, b| a ^ b }.reduce(:+)
