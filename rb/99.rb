pairs = IO.read('../input/99').split("\n")
pairs.map! { |p| p.split(',').map(&:to_i) }
p pairs.index(pairs.max_by { |a, b| Math.log(a) * b }) + 1
