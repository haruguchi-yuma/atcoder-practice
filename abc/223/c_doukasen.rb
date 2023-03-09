# ぶつかる時の時刻は片方だけの時刻/2なのでそこから計算する
n = gets.to_i
ab = Array.new(n) { gets.split.map(&:to_f) }
time = ab.sum { _1 / _2 } / 2

d = 0
ab.each do |a, b|
  k = [time, a / b].min
  d += k * b
  time -= k
  break if time <= 0
end

p d
