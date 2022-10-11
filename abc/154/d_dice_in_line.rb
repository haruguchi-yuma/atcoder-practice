# 合計の期待値は期待値の合計
N, K = gets.split.map(&:to_i)
P = $<.read.split.map { (_1.to_i + 1) / 2.0 }

cs = [0] * (N + 1)

N.times do |i|
  cs[i+1] = P[i] + cs[i]
end

puts (N-K+1).times.map{ cs[_1+K] - cs[_1] }.max

# https://atcoder.jp/contests/abc154/tasks/abc154_d
