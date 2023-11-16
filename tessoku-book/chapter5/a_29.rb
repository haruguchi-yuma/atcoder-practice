MOD = 1000000007
a, b = gets.split.map(&:to_i)

n = a
res = [a] + (0..30).map { |i| n *= n % MOD }

p b.digits(2).map.with_index { |n, i| n == 1 ? res[i] : 1}.inject(1) { |acc, n| acc = (acc * n) % MOD }
