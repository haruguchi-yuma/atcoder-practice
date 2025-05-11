MOD = 998244353

MAX = 4 * 10**6

fact = [1] * (MAX + 3)
inv_fact = [1] * (MAX + 3)

(1..MAX).each { |i| fact[i] = fact[i - 1] * i % MOD }

inv_fact[MAX] = fact[MAX].pow(MOD - 2, MOD)
(MAX - 1).downto(0) { |i| inv_fact[i] = inv_fact[i + 1] * (i + 1) % MOD }

comb = -> (n, k) {
  return 0 if k < 0 || n < k
  fact[n] * inv_fact[k] % MOD * inv_fact[n - k] % MOD
}

a, b, c, d = gets.split.map(&:to_i)

ans = 0
(0..b).each do |l|
  now1 = comb[a - 1 + l, l]
  now2 = comb[(b - l + d) + c, c]
  ans = (ans + now1 * now2 % MOD) % MOD
end

puts ans
