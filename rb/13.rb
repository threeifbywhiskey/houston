puts IO.read('../input/13').split.map(&:to_i).reduce(:+).to_s[0, 10]
