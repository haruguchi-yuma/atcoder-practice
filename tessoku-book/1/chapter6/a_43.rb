n, l = gets.split.map(&:to_i)
puts Array.new(n) {
  a, b = gets.chomp.split
  a = a.to_i
  b == 'E' ? l - a : a
}.max
