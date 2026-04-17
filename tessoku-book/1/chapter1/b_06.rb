n = gets.to_i
a = gets.split.map(&:to_i)
i = 0
s = [0] + a.map { i += _1 }

q = gets.to_i

q.times do
  l, r = gets.split.map(&:to_i)
  res = s[r] - s[l-1]
  puts (r - l + 1) / 2.0 < res ? 'win' : (r - l + 1) / 2.0 == res ? 'draw' : 'lose'
end
