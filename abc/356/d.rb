MOD = 998244353
n, m = gets.split.map(&:to_i)

ans = 0
60.times do |i|
  next if m[i] == 0 # mのi桁目が0ならnext m>>i&1 == 0

  period = 1 << (i+1) # 周期は 2^i+1
  r = n % period
  ans += (n - r) / 2 # 周期内に収まった1の個数を足す

  if r >= 1<<i
    ans += r - (1<<i) + 1 # 周期外の1の個数
  end
end

p ans % MOD

__END__
# 自力で解いた
MOD = 998244353
n, m = gets.split.map(&:to_i)

ans = 0
60.times do |i|
  next if m[i] == 0

  q, r = (n+1).divmod(1<<(i+1))
  res = q * (1 << i) % MOD
  if r > 1<<i
    res += r - (1<<i)
  end

  ans = (ans + res) % MOD
end

p ans
