def value hand
  ranks = hand.map { |h| ' 23456789TJQKA'.index h[0] }.sort.reverse
  suits = hand.map { |h| h[1] }

  flush = suits.uniq.size == 1
  straight = ranks.each_cons(2).map { |a, b| a - b }.count(1) == 4

  return [8] + ranks if straight and flush
  return [5] + ranks if flush
  return [4] + ranks if straight

  counts = ranks.group_by { |r| ranks.count r }

  quads = counts[4]
  return [7] + [quads[0]] + (ranks - quads) if quads

  trips = counts[3]
  pairs = counts[2]
  return [6] + [trips[0]] + [pairs[0]] if trips and pairs
  return [3] + [trips[0]] + (ranks - trips) if trips
  return [pairs.size / 2] + pairs.uniq + (ranks - pairs) if pairs

  [0] + ranks
end

hands = IO.read('54').split("\n").map(&:split)
wins  = 0

hands.each do |hand|
  p1 = hand[0, 5]
  p2 = hand[5, 5]
  wins += 1 if (value(p1) <=> value(p2)) == 1
end

p wins
