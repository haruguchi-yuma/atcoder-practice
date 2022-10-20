# Bを全て右に動かせば良いので、その時の移動距離を出す。
a = gets.chomp.chars
size = a.size
count = a.count('B')

after = [*0...size].last(count).sum

before = 0
a.each_with_index { |n, i| before += n == 'B' ? i : 0 }

puts after - before

# https://atcoder.jp/contests/agc029/tasks/agc029_a
