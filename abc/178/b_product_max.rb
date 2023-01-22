# 4パターンの計算をする
# a * c, a * d, b * c , b * d
a, b, c, d = gets.split.map(&:to_i)

puts [a, b].product([c, d]).map{ _1 * _2 }.max
