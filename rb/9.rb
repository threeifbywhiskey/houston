(5..1000).step(5).each do |a|
  done = false

  (5..1000 - a).step(5).each do |b|
    c = 1000 - a - b
    done = p a * b * c if a * a + b * b == c * c
  end

  break if done
end
