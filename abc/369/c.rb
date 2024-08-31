n = gets.to_i
a = gets.split.map(&:to_i)

right = 1
ans = 0
(n-1).times do |left|
  d = a[left+1] - a[left]

  right += 1 while right <= n-1 && a[right] + d == a[right+1]
  ans += right - left + 1
end
p ans + 1
