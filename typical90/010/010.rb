# 累積和作って計算cs1が1組, cs2が2組

N = gets.to_i
ab = Array.new(N) { gets.split.map(&:to_i) }

cs1 = [0] * (N+1)
cs2 = [0] * (N+1)

(0...N).each do |i|
  ab1, ab2 = 0, 0
  ab[i][0] == 1 ? ab1 = ab[i][1] : ab2 = ab[i][1]
  cs1[i+1] = cs1[i] + ab1
  cs2[i+1] = cs2[i] + ab2
end

gets.to_i.times do
  l, r = gets.split.map(&:to_i)
  puts [cs1[r] - cs1[l-1], cs2[r] - cs2[l-1]].join(' ')
end

# https://atcoder.jp/contests/typical90/tasks/typical90_j
