# 言われた通りそれぞれ計算する
# 全ての距離で絶対値を使うので先に変換しておく
n, *x = $<.read.split.map{ _1.to_i.abs }
puts x.sum
puts Math.sqrt(x.sum { _1 ** 2 })
puts x.max
