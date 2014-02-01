ONES = [0, 3, 3, 5, 4, 4, 3, 5, 5, 4, 3, 6, 6, 8, 8, 7, 7, 9, 8, 8]
TENS = [0, 3, 6, 6, 5, 5, 5, 7, 6, 6]

def letters n
  return ONES[n] if n < 20
  return TENS[n / 10] if n % 10 == 0 && n < 100
  return TENS[n / 10] + ONES[n % 10] if n < 100
  ONES[n / 100] + (n % 100 == 0 ? 7 : 10) + letters(n % 100)
end

# Add 1 instead of special-casing "one thousand".
p (1..1000).map { |n| letters n }.reduce(:+) + 1
