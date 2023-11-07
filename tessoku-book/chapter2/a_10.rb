n = gets.to_i
a = gets.split.map(&:to_i)
d = gets.to_i

i = 0
l_max = [0] + a.map { i = [i, _1].max }

j = 0
r_max = (0...n).reverse_each.map { |i| j = [a[i], j].max }.reverse << 0

d.times do
  l, r = gets.split.map(&:to_i)
  puts [l_max[l-1], r_max[r]].max
end
