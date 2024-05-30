s = gets.chomp.chars.map { _1 == 'X' ? 0 : 1 }
n = s.size
k = gets.to_i

i = 0
a = [i] + s.map { i += _1 }

ans = 0
r = 0

n.times do |l|
  res = k + a[l]
  r += 1 while r <= n && a[r] <= res

  ans = [ans, r - l - 1].max

  break if r == n
end
p ans
