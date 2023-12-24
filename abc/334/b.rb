a, m, l, r = gets.split.map(&:to_i)

l -= a
r -= a

if l < 0
  X = -1/m+1
  l+= X * m
  r+= X * m
end

puts r/m - (l-1)/m
