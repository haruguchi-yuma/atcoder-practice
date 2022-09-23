# 何種類の直径があるか数える
n, *m = $<.read.split.map(&:to_i)

puts m.uniq.size

# https://atcoder.jp/contests/abc085/tasks/abc085_b
