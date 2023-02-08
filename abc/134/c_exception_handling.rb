# 最大値の項は2番目に大きい数を出力、それ以外は1番大きい数を出力
n, *a = $<.read.split.map(&:to_i)
b, c = a.max(2)

a.each { puts _1 == b ? c : b }
