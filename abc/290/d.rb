t = gets.to_i

def solve
  n , d, k = gets.split.map(&:to_i)
  k -= 1
  g = n.gcd(d)
  m = n/g
  e = d/g

  block = k*e%m
  i = k/m
  puts block * g + i
end

t.times {solve}
