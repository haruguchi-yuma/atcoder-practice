# 全部計算して最大値をとる
n = gets.to_i
points = Array.new(n) { gets.split.map(&:to_i) }.combination(2)

max = points.map {|(x1, y1), (x2, y2)| (x2 - x1) ** 2 + (y2 - y1) ** 2 }.max
puts Math.sqrt(max)
