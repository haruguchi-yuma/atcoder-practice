# これもTLEする。定数倍の削減が必要。
INF = 1001001001
n, x, y = gets.split.map(&:to_i)
# dp[j][k] = 甘さj個数kの時の塩気の最小値
dp = Array.new(x+1) { Array.new(n+1, INF)}
dp[0][0] = 0

n.times do |i|
  a, b = gets.split.map(&:to_i)

  x.downto(0) do |j|
    n.downto(0) do |k|
      now = dp[j][k]
      next if now == INF

      dp[j+a][k+1] = [dp[j+a][k+1], now + b].min if j + a <= x
    end
  end
end

ans = 0
(x+1).times do |j|
  (n+1).times do |k|
    if dp[j][k] <= y
      ans = [ans, k].max
    end
  end
end

p ans == n ? ans : ans + 1

