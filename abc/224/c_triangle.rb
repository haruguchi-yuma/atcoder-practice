# 3点が一直線状にある時三角形ができない。
# 一直線状にある 傾きが等しい
n = gets.to_i
xy = Array.new(n) { gets.split.map(&:to_i) }

xy.combination(3).count do |(x1, y1), (x2, y2), (x3, y3)|
  (x2-x3)*(y1-y2) != (x1-x2)*(y2-y3)
end.tap { p _1 }
