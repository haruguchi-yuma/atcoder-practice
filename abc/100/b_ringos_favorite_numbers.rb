# n == 100の時だけ注意
d, n = gets.split.map(&:to_i)

puts n == 100 ? 101 * 100 ** d : n * 100 ** d
