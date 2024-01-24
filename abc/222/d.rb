MOD = 998244353
n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

m = 3001
dp = Array.new(m, 0)
dp[0] = 1;

n.times do |i|
  d = Array.new(m, 0)
  d, dp = dp, d

  (m-1).times { |i| d[i+1] += d[i] }

  m.times do |j|
    if a[i] <= j && j <= b[i]
      dp[j] += d[j] % MOD
    end
  end
end

ans = 0
dp.sum { ans += _1 % MOD }
p ans % MOD
