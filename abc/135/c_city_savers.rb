# 左倒してから右を倒す
n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

ans = 0
n.times do |i|
  left = [a[i], b[i]].min
  ans += left
  a[i] -= left
  b[i] -= left

  right = [a[i+1], b[i]].min
  ans += right
  a[i+1] -= right
  b[i] -= right
end

puts ans
