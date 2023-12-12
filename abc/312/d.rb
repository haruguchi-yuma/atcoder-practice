MOD = 998244353
s = gets.chomp.chars
n = s.size

dp = Array.new(n+1) { [0] * (n+1)}
dp[0][0] = 1

n.times do |i|
  n.times do |j|
    dp[i+1][j+1] += dp[i][j] % MOD if s[i] != ')'
    dp[i+1][j-1] += dp[i][j] % MOD if s[i] != '(' && j > 0
  end
end

p dp[n][0]
__END__
(???(?
