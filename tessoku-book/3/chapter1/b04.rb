n = gets.to_i.digits

p n.map.with_index { |n, i| n * (1 << i) }.sum
