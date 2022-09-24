# tallyで数え上げてKになるまで削除
# 削除した数はcntに保存しておく

N, K, *A = $<.read.split.map(&:to_i)
a = A.tally.sort_by { _2 }
cnt = 0

while a.size > K
  d = a.shift
  cnt += d.last
end

puts cnt

# https://atcoder.jp/contests/abc081/tasks/arc086_a
