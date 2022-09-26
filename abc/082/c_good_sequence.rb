# 数え上げる
# 4が5個なら 5-4=1 こ削除
# 4が1個なら 1個削除

N, *a = $<.read.split.map(&:to_i)

puts a.tally.map{ _2 >= _1 ? _2 - _1 : _2 }.sum

# https://atcoder.jp/contests/abc082/tasks/arc087_a
