# 個数制限なしでも3つの遷移で済む
n, w = gets.split.map(&:to_i)

dp = Array.new(n+1) { [0] * (w+1) }

(1..n).each do |i|
  v, ww = gets.split.map(&:to_i)
  (w+1).times do |j|
    dp[i][j] = [dp[i][j], dp[i-1][j]].max
    dp[i][j] = [dp[i][j], dp[i-1][j-ww]+v].max if j - ww >= 0
    dp[i][j] = [dp[i][j], dp[i][j-ww]+v].max if j - ww >= 0
  end
end

p dp[n][w]
