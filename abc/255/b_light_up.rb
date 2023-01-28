# 明かりを持ってない人を全探索する
# 明かりを持ってる人との距離を全部出す
# その中で一番距離の短いものを選ぶ(つまり明かりを持っていない人とその人と一番距離が短い人との距離を出す)
# 明かりを持ってない人の距離の中で最大ものがR

n, k = gets.split.map(&:to_i)
akari = gets.split.map(&:to_i)

xy = Array.new(n) { gets.split.map(&:to_i) }
dists = []

([*1..n] - akari).map do |i|
  x1, y1 = xy[i-1]
  d = []
  akari.each do |j|
    x2, y2 = xy[j-1]
    d << (x2 - x1) ** 2 + (y2 - y1) ** 2
  end
  dists << d
end

puts Math.sqrt(dists.map(&:min).max)
