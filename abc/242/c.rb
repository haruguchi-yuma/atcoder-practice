MOD = 998244353

n = gets.to_i
dp = Array.new(n) { [0] *11 }

dp[0][1..9] = [1] * 9

(n-1).times do |i|
  (1..9).each do |j|
    dp[i+1][j] = (dp[i][j-1] + dp[i][j] + dp[i][j+1]) % MOD
  end
end

p dp[-1].sum % MOD
