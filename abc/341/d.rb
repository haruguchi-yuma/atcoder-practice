# 注意: TLEします

sn, m, k = gets.split.map(&:to_i)

x = n.lcm(m)

s1 = (x / n - 1)
s2 = (x / m - 1)

s = s1 + s2

r, q =  k.divmod(s)

i = 0
j = 0
a = (s1.times.map { i += n } + s2.times.map { j += m }).sort

if q == 0
  r -= 1
  q = s
end

p r * x + a[(q-1)]
