n, q = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

i = 0
s = [0] + a.map { i += _1 }

q.times do
  l, r = gets.split.map(&:to_i)
  p s[r] - s[l-1]
end
