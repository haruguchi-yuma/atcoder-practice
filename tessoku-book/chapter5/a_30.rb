MOD = 10 ** 9 + 7
n, r = gets.split.map(&:to_i)

# 繰り返し2乗法
def power(a, b)
  n = a
  res = [a] + (0..60).map { |i| n *= n % MOD }

  b.digits(2).map.with_index { |n, i| n == 1 ? res[i] : 1}.inject(1) { |acc, n| acc = (acc * n) % MOD }
end

def division(a, b)
  a * power(b, MOD-2) % MOD
end

#分子
a = (1..n).inject(1) { |acc, i| acc = acc * i % MOD}

#分母
b = (1..(n-r)).inject(1) { |acc, i| acc = acc * i % MOD} * (1..r).inject(1) { |acc, i| acc = acc * i % MOD}

p division(a, b)
