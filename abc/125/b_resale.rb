# 価値とコストを比べてコストの方がでかい場合選ばない
n = gets.to_i
v, c = Array.new(2) { gets.split.map(&:to_i) }
ans = 0

n.times do |i|
  ans += [v[i] - c[i], 0].max
end

puts ans
