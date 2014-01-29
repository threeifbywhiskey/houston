p IO.read('../input/8')
  .delete("\n")
  .chars
  .map(&:to_i)
  .each_cons(5)
  .map { |c| c.reduce(:*) }
  .max
