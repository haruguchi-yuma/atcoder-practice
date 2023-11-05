a, b = gets.split.map(&:to_i)

puts [*a..b].any? { 100 % _1 == 0 } ? 'Yes' : 'No'
