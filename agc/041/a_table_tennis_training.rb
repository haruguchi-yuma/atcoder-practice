# 偶奇（パリティ)に着目して解いた
n, a, b = gets.split.map(&:to_i)

if (b - a).even?
  puts (b - a) / 2 
else
  d_a = a - 1
  d_b = n - b
  puts d_a < d_b ? (a + b - 1) / 2 :  (n - b) + ((b - a + 1) / 2)
end

# https://atcoder.jp/contests/agc041/tasks/agc041_a
