a, b = Array.new(2) { gets.to_i }
puts a == b ? 'EQUAL' : a > b ? 'GREATER' : 'LESS'
