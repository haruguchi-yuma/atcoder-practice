n, k = gets.split.map(&:to_i)
s = gets.chomp.chars

on = s.count(?1)
puts on & 1 == k & 1 ? 'Yes' : 'No'
