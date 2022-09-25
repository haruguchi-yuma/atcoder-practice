# 奇数回言われた数が最後に残るので何回言われたかtallyで数える

N, *A = $<.read.split.map(&:to_i)

puts A.tally.count { _2.odd? }

# https://atcoder.jp/contests/abc073/tasks/abc073_c
