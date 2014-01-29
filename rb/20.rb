p (2..100).reduce(:*).to_s.chars.map(&:to_i).reduce(:+)
