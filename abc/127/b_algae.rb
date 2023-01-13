r, D, x = gets.split.map(&:to_i)

puts 10.times.map { x = r * x - D }
