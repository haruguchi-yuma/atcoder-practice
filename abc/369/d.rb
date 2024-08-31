INF = -1001001001
n = gets.to_i
a = gets.split.map(&:to_i)

dp = Array.new(n+1) { [INF] * 2 }
dp[0][0] = 0


n.times do |i|
  2.times do |j|
    next if dp[i][j] == INF

    if j.even?
      dp[i+1][j] = [dp[i+1][j], dp[i][j]].max
      dp[i+1][j+1] = [dp[i+1][j+1], dp[i][j]+a[i]].max
    else
      dp[i+1][j] = [dp[i+1][j], dp[i][j]].max
      dp[i+1][j-1] = [dp[i+1][j-1], dp[i][j]+a[i]*2].max
    end
  end
end

p dp[-1].max
