x, y = gets.split.map(&:to_i)
ans = (x + y) % 12
p ans == 0 ? 12 : ans
