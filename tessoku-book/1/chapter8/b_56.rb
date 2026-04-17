B = 100
MOD = 2772227
convert = (?a..?z).each.with_index(1).to_h

n, q = gets.split.map(&:to_i)
i = 1
b_pow = [1] + n.times.map { i = (i * B) % MOD }

s = gets.chomp.chars
s_r = s.reverse

h = [0]
n.times.each { |i| h[i+1] = (h[i] * B + convert[s[i]]) % MOD }

h2 = [0]
n.times.each { |i| h2[i+1] = (h2[i] * B + convert[s_r[i]]) % MOD }

q.times do
  a, b = gets.split.map(&:to_i)

  res1 = h[b] - (b_pow[b-a+1] * h[a-1] % MOD)
  res1 += MOD if res1 < 0

  a2 = n + 1 - b
  b2 = n + 1 - a
  res2 = h2[b2] - (b_pow[b2-a2+1] * h2[a2-1] % MOD)
  res2 += MOD if res2 < 0

  puts res1 == res2 ? 'Yes' : 'No'
end
