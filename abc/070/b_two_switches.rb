# スイッチを押してる時間は
# [b, d].min - [a, c].max
# もしくは
# [b, d].min - [a, c].max < 0 のとき　0となる

a, b, c, d = gets.split.map(&:to_i)

l = [a, c].max
r = [b, d].min

puts [0, r - l].max
