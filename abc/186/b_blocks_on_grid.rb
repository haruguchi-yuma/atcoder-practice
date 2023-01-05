# 最小値とって、各マスの最小値との差分の合計を計算する
h, w, *a = $<.read.split.map(&:to_i)

min = a.min
puts a.sum { _1 - min }
