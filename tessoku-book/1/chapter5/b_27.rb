a, b = gets.split.map(&:to_i).sort

def gcd(a, b)
  return b if a == 0
  gcd(b % a, a)
end

p a * b / gcd(a, b)
