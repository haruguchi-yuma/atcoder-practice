n = gets.to_i
n += 1 if n >= 42

puts "AGC#{n.to_s.rjust(3, '0')}"

# https://atcoder.jp/contests/abc230/tasks/abc230_a

# 競プロではrjustよりこちらの方がよく使われるかも

n = gets.to_i

puts "AGC%03d" % (n <= 41 ? n : n+1)
