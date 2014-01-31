nums  = %w[I V X L C D M IV IX XL XC CD CM]
vals  = [1, 5, 10, 50, 100, 500, 1000, 4, 9, 40, 90, 400, 900]
ROMAN = Hash[nums.zip vals]

def from_roman str
  vals = str.chars.map { |c| ROMAN[c] }
  vals.size.pred.times do |i|
    vals[i] *= -1 if vals[i + 1] > vals[i]
  end
  vals.reduce(:+)
end

def to_roman n
  roman = ''
  until n == 0
    max = ROMAN.sort_by(&:last).reverse.find { |_, v| v <= n }
    roman << max[0]
    n -= max[1]
  end
  roman
end

romans = IO.read('89').split("\n")
romans.map! { |r| r.size - to_roman(from_roman(r)).size }
p romans.reduce(:+)
