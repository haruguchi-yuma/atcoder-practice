# 周期性6, 5, 6, 5に気づく
q, r = gets.to_i.divmod(11)

puts q * 2 + (r == 0 ? 0 : r <= 6 ? 1 : 2)

# https://atcoder.jp/contests/abc053/tasks/arc068_a
