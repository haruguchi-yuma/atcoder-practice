MOD = 10 ** 8
n = gets.to_i
a = gets.split.map(&:to_i).sort.reverse
b = []
res = 0

a.each do |num|
  x = MOD - num
  j = b.bsearch_index { _1 < x } || b.size
  res += j
  b << num
end

p a.sum * (n-1) - res * MOD

__END__
MOD = 10 ** 8
n = gets.to_i
a = gets.split.map(&:to_i).sort

ans = a.sum * (n-1)

r = n - 1
n.times do |i|
  r -= 1 while r >= 0 && a[i]+a[r] >= MOD
  ans -= (n - [r, i].max - 1) * MOD
end

p ans
