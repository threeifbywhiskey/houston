p (3..999).reduce { |sum, n| sum + (n % 3 * n % 5 == 0 ? n : 0) }
