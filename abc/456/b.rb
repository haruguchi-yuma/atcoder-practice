x = gets.split.map(&:to_i)
y = gets.split.map(&:to_i)
z = gets.split.map(&:to_i)

puts [*4..6].permutation.sum { |i, j, k| x.count(i) * y.count(j) * z.count(k) } / 216.0
