p (2..100).map { |i| (2..100).map { |j| i ** j } }.flatten.uniq.size
