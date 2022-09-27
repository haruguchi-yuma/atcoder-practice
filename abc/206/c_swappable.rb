# 余事象の考え方を使う。
# A_i = A_j となる個数を数える
# tallyで各数の個数(x)を数え xC2で計算
# 全体も nC2

N, *A = $<.read.split.map(&:to_i)

puts (N * (N - 1) / 2) - (A.tally.values.sum { _1 * (_1 - 1) / 2 })

# https://atcoder.jp/contests/abc206/tasks/abc206_c
