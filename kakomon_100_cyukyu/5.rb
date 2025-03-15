a, b, c, x, y = gets.split.map(&:to_i)

puts [
  a * x + b * y,
  [x, y].min * 2 * c + (x-y).abs * (x - y > 0 ? a : b),
  [x, y].max * 2 * c
].min
