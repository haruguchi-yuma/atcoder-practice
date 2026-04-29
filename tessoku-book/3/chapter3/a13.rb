n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

r = 0
ans = 0
n.times do |l|
  r = l + 1 if r <= l
  r += 1 while r < n && a[r] - a[l] <= k
  ans += r - l - 1
end

p ans
