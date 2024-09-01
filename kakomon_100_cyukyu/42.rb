INF = 1001001001
n, m = gets.split.map(&:to_i)
d = Array.new(n) { gets.to_i }
c = Array.new(m) { gets.to_i }

dp = Array.new(m+1) { Array.new(n+2, INF) }
dp[0][0] = 0

m.times do |i|
  cc = c[i]
  (n+1).times do |j|
    next if dp[i][j] == INF

    dp[i+1][j] = [dp[i+1][j], dp[i][j]].min
    dd = d[j]
    dp[i+1][j+1] = [dp[i+1][j+1], dp[i][j]+cc*dd].min if dd
  end
end

p dp[-1][n]
