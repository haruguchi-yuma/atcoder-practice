n, m, X, Y = gets.split.map(&:to_i)
x, y = Array.new(2) { gets.split.map(&:to_i) }

x, y = x.max, y.min

puts X <= x && x < y && y <= Y ? 'No War' : 'War'
