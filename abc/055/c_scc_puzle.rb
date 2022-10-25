# 再帰だとなぜかうまくいかなかった。
s, c = gets.split.map(&:to_i)

a = [s, c / 2].min

puts a + [0, (c - (s * 2)) / 4].max

# https://atcoder.jp/contests/abc055/tasks/arc069_a
