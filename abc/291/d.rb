MOD = 998244353
n = gets.to_i
a, b = Array.new(n) { gets.split.map(&:to_i) }.transpose
dp = Array.new(n) { [0, 0] }

dp[0] = [1, 1]

(1...n).each do |i|
  dp[i][0] = (dp[i][0] + dp[i-1][0]) % MOD if a[i] != a[i-1]
  dp[i][0] = (dp[i][0] + dp[i-1][1]) % MOD if a[i] != b[i-1]
  dp[i][1] = (dp[i][1] + dp[i-1][0]) % MOD if b[i] != a[i-1]
  dp[i][1] = (dp[i][1] + dp[i-1][1]) % MOD if b[i] != b[i-1]
end

p dp[n-1].sum % MOD
__END__
3
1 2
4 2
3 4
