x, y = gets.split.map(&:to_i)
ans = []

while x >= 2 || y >= 2
  ans << [x,y].join(' ')
  x > y ? x-=y : y-= x
end

puts ans.size
puts ans.reverse
