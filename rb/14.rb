$cache = {}

def collatz_length n
  orig, len = n, 1

  until n == 1
    n = n % 2 == 0 ? n / 2 : n * 3 + 1
    return $cache[orig] = len + $cache[n] if $cache[n]
    len += 1
  end

  $cache[orig] = len
end

p (1..1000000).max_by { |n| collatz_length n }
