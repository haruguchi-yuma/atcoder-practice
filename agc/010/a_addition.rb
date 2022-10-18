# 奇数の数が奇数個あればNOになるつまり全体の和が奇数であればNO

N, *a = $<.read.split.map(&:to_i)

puts a.sum.even? ? 'YES' : 'NO'

# https://atcoder.jp/contests/agc010/tasks/agc010_a
