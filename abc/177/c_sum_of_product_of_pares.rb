# 長方形から対角線を引いて2で割る方法
n, *a = $<.read.split.map(&:to_i)
MOD = 10 ** 9 + 7

puts (a.sum ** 2 - a.sum { _1 ** 2 }) / 2 % MOD

# 累積和
n, *a = $<.read.split.map(&:to_i)
MOD = 10 ** 9 + 7
i = 0
cum = [0] + a.map { i += _1 }
puts a.each_with_index.sum { |n, i| n * cum[i] % MOD } % MOD
