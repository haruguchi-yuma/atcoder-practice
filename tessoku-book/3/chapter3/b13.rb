n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

i = 0
s = [0] + a.map { i += it }

r = 0
ans = 0

n.times do |l|
  r = l + 1 if r <= l
  r += 1 while r <= n && s[r] - s[l] <= k

  ans += r - l - 1
end

p ans
