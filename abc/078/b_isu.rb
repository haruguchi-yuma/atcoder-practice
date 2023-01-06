# 座れる人数をnとすると
# nY + (n + 1)Z <= X　を満たす最大のnを探せばいいので
# (Y + Z)n + Z <= x
# n <= (X - Z) / (Y + Z)

x, y, z = gets.split.map(&:to_i)

puts (x - z) / (y + z)
