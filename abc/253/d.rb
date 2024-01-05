n, a, b = gets.split.map(&:to_i)
total = (1+n) * n / 2

def f(n)
  (1..n).sum
end
sum_a = f(n/a)*a
sum_b = f(n/b)*b

ab = a.lcm(b)
sum_ab = f(n/ab)*ab

p total - sum_a - sum_b + sum_ab
