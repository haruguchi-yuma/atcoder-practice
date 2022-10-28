# 1Lあたり最小の値段を出す。
# 2Lあたり最小の値段を出す。
# うまく組み合わせる

q, h, s, d = gets.split.map(&:to_i)
n = gets.to_i

L_1 = [4 * q,  2 * h, s].min
L_2 = [8 * q, 4 * h, 2 * s, d].min
puts (n / 2) * L_2 + (n % 2) * L_1

# https://atcoder.jp/contests/agc019/tasks/agc019_a
