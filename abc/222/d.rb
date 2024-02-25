MOD = 998244353
m = 3001
n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

dp = Array.new(m, 0)
dp[0] = 1

n.times do |i|
  k = 0
  s = dp.map { k += _1 }
  m.times do |j|
    if a[i] <= j && j <= b[i]
      dp[j] = s[j] % MOD
    else
      0
    end
  end
end

p dp.sum { _1 % MOD } % MOD
