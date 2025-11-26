MOD = 10 ** 9 + 7
h, w = gets.split.map(&:to_i)

def division(a, b)
  a * power(b, MOD-2) % MOD
end

# 繰り返し2乗法
def power(a, b)
  n = a
  res = [a] + (0..60).map { |i| n *= n % MOD }

  b.digits(2).map.with_index { |n, i| n == 1 ? res[i] : 1}.inject(1) { |acc, n| acc = (acc * n) % MOD }
end


a = (1..(h+w-2)).inject(1) { |acc, i| acc = acc * i % MOD }

b = (1..(h-1)).inject(1) { |acc, i| acc = acc * i % MOD } * (1..(w-1)).inject(1) { |acc, i| acc = acc * i % MOD }

p division(a, b)
