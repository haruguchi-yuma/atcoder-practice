# WA のコード

n = gets.to_i
a = gets.split.map(&:to_i)

m = 2 * 10 ** 5 + 2
h = {}
m.times { h[_1 * _1] = true }
ans = 0

x, y = a.partition { h[_1] }

xx = x.tally.values.sum
ans += xx * (xx-1) / 2

y.sum { }
