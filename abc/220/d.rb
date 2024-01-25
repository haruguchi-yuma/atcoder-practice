MOD = 998244353
n = gets.to_i
a = gets.split.map(&:to_i)

dp = Array.new(10, 0)
dp[a[0]] = 1

(1...n).each do |i|
  na = a[i]
  d = Array.new(10, 0)
  d, dp = dp, d
  10.times do |j|
    dp[(j+na)%10] += d[j] % MOD
    dp[(j*na)%10] += d[j] % MOD
  end
end

puts dp.map { _1 % MOD }.join(' ')
