require 'prime'
k = gets.to_i

pd = k.prime_division


def f(n, pi)
  return 0 if n == 0
  n /= pi
  return n + f(n, pi)
end

ac = k
wa = 0

while ac - wa > 1
  mid = (ac + wa) / 2
  ok = true
  ok = pd.all? { |prime, cnt| f(mid, prime) >= cnt }
  ok ? ac = mid : wa = mid
end

p ac
