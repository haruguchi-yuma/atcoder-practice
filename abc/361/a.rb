n, k, x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

puts a.insert(k, x) * ' '
