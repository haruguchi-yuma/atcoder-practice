n, x, y, z = gets.split.map(&:to_i)

x, y = [x, y].sort
puts (x..y).include?(z) ? 'Yes' : 'No'
