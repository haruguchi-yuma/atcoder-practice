MOD = 998244353
n = gets.to_i
a = gets.split.map(&:to_i)

ans = 0
m = 0
s = 0

a.reverse.each do |aa|
  ans += aa * m + s
  m += 10 ** aa.digits.size
  s += aa
end


p ans % MOD
