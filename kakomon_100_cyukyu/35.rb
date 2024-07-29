n, weight = gets.split.map(&:to_i)
dp = Array.new(n+1) { [0] * (weight + 1) }

(1..n).each do |i|
  v, w = gets.split.map(&:to_i)

  (weight+1).times do |j|
    dp[i][j] = [dp[i][j] ,dp[i-1][j]].max
    dp[i][j] = [dp[i][j], dp[i-1][j-w] + v].max if j-w >= 0
  end
end

p dp[n][weight]
