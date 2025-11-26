n, h, w = gets.split.map(&:to_i)

puts Array.new(n) { gets.split.map(&:to_i).map(&:pred) }.flatten.inject(:^) == 0 ? 'Second' : 'First'
