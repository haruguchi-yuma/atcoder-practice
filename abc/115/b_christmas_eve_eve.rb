# 合計 - 値引き分
n, *P = $<.read.split.map(&:to_i)
puts P.sum - P.max / 2
