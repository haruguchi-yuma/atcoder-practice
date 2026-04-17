B = 100
MOD = 2772227
convert = (?a..?z).each.with_index(1).to_h
n, q = gets.split.map(&:to_i)

i = 1
b_pow = [1] + n.times.map { i = (i * B) % MOD }

s = gets.chomp.chars
h = [0]
n.times.each { |i| h[i+1] = (h[i] * B + convert[s[i]]) % MOD }


q.times do
  a, b, c, d = gets.split.map(&:to_i)

  res1 = h[b] - (b_pow[b-a+1] * h[a-1] % MOD)
  res1 += MOD if res1 < 0
  res2 = h[d] - (b_pow[d-c+1] * h[c-1] % MOD)
  res2 += MOD if res2 < 0

  puts res1 == res2 ? 'Yes' : 'No'
end

__END__
7 3
abcbabc
1 3 5 7
1 5 2 6
1 2 6 7
