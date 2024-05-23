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
    dp[j] =
      if a[i] <= j && j <= b[i]
        s[j] % MOD
      else
        0
      end
  end
end

p dp.sum { _1 % MOD } % MOD


__END__
三項演算子バージョン特に意味はない

MOD = 998244353
n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
m = 3001

dp = Array.new(m, 0)
dp[0] = 1

n.times do |i|
  x = 0
  s = dp.map { x += _1 }
  m.times do |j|
    dp[j] = a[i] <= j && j <= b[i] ? s[j] % MOD : 0
  end
end

p dp.sum { _1 % MOD } % MOD
