n = 100
sqsum  = (n / 2 * n.succ) ** 2
sumsq = (1..n).map { |m| m * m }.reduce(:+)
p sqsum - sumsq
