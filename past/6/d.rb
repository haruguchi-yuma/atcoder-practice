# 累積和の考え方を使うcsが累積和の配列

N, K, *A = $<.read.split.map(&:to_i)

cs = [0] * (N + 1)

N.times do |i|
  cs[i+1] = cs[i] + A[i]
end

(N-K+1).times do |i|
  puts cs[i+K] - cs[i]
end

# https://atcoder.jp/contests/past202104-open/tasks/past202104_d
