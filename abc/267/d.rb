n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
INF = -Float::INFINITY
dp = Array.new(n+1) { [INF] * (m+1) }

dp[0][0] = 0

n.times do |i|
  (m+1).times do |j|
    dp[i+1][j] = [dp[i+1][j], dp[i][j]].max
    dp[i+1][j+1] = [dp[i+1][j+1], dp[i][j] + (j+1) * a[i]].max if j + 1 <= m
  end
end

p dp[n][m]
