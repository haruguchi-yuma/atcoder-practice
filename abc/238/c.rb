MOD = 998244353
n = gets.to_i
size = n.digits.size

a = 9
res =
  size.times.map do |i|
    tmp = [n, a].min
    tmp.tap { n-= a; a *= 10 }
  end

p res.sum { |i| (i * (i + 1) / 2) % MOD} % MOD
