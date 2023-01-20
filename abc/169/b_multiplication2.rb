# 1回1回 10**18乗を超えてるかどうかのチェックを入れないとTLEになる

n, *a = $<.read.split.map(&:to_i)
puts a.include?(0) ? 0 : a.inject {|acc, n| r = acc * n; break -1 if r > 10 ** 18; r}
