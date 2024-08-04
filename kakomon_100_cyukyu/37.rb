INF = 1001001001
n, m = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)

dp = Array.new(m+1) { Array.new(50000+1, INF) }
dp[0][0] = 0

(1..m).each do |i|
  coin = c[i-1]
  (50000+1).times do |j|
    dp[i][j] = [dp[i][j], dp[i-1][j]].min
    dp[i][j] = [dp[i][j], dp[i-1][j-coin]+1].min if j - coin >= 0
    dp[i][j] = [dp[i][j], dp[i][j-coin]+1].min if j - coin >= 0
  end
end

p dp.map { |ary| ary[n] }.min
