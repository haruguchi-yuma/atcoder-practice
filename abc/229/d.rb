# 尺取法
s = gets.chomp.chars
k = gets.to_i
n = s.size
a = s.map { _1 == '.' ? 1 : 0 }

ans = 0
r = 0
sum = 0

n.times do |l|
  while r < n && sum + a[r] <= k
    sum += a[r];
    r += 1
  end
  ans = [ans, r-l].max
  sum -= a[l]
end

p ans

