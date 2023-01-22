# 普通にやる
n = gets.to_i
ab = Array.new(n) { gets.split.map(&:to_i) }
puts ab.sum { (_1.._2).sum }

# 数列の和の公式使う（ちょっとだけ早い)
n = gets.to_i
ab = Array.new(n) { gets.split.map(&:to_i) }
puts ab.sum { (_1 + _2) * (_2 - _1 + 1) / 2 }
