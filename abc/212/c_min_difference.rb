n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort
b = gets.split.map(&:to_i).sort

ans = 10 ** 9
x = y = 0

while x < n && y < m
  diff = (a[x] - b[y]).abs
  ans = diff if ans > diff
  
  a[x] < b[y] ? x+= 1 : y += 1
end

p ans
