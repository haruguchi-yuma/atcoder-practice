# 相似比もしくは2点間を通る直線の式を求めて y = 0の時のxを求める
sx, sy, gx, gy = gets.split.map(&:to_f)

puts sx + (gx - sx) / (sy + gy) * sy
