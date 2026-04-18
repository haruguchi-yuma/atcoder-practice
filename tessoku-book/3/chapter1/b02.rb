a, b = gets.split.map(&:to_i)
puts (a..b).any? { 100 % it == 0 } ? 'Yes' : 'No'
