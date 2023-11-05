i = 0
puts gets.to_i.digits.sum { |b| (b * 2 ** i).tap { i += 1} }

# puts gets.chomp.to_i(2)
