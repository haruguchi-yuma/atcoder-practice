# 最大値は 各値 - 1の和
n, *a = $<.read.split.map(&:to_i)
puts a.sum(&:pred)

# https://atcoder.jp/contests/abc103/tasks/abc103_c
