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


__END__
累積和取るパターン
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

