# 最大最小をとって引き算
n, *a = $<.read.split.map(&:to_i)
puts a.minmax.inject(:-).abs
