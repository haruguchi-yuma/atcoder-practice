
MOD = 998244353
n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort
b = gets.split.map(&:to_i)

i = 0
s = [0] + a.map { i = ((i + _1) % MOD) }

ans = 0

b.each do |bj|
  index = a.bsearch_index { |x| x > bj } || n

  if index > 0
    ans = (ans + (bj * index - s[index]) % MOD) % MOD
  end

  if index < n
    ans = (ans + (s[n] - s[index] - bj * (n - index) % MOD)) % MOD
  end
end

p ans % MOD
