# 奇数が偶数個の時は全て偶数にできる。よって絶対値をとり全て足す。
# 奇数が奇数個の時は1つだけ奇数が残るので絶対値の一番小さな数だけを負の数に変える

n, *a = $<.read.split.map(&:to_i)

puts a.count(&:negative?).even? ? a.sum(&:abs) : a.map!(&:abs).sum - a.min * 2

# https://atcoder.jp/contests/abc125/tasks/abc125_d
