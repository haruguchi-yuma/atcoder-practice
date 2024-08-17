n,m = gets.split.map(&:to_i)
a = Array.new(n) { gets.chomp.chars }
b = Array.new(m) { gets.chomp.chars }

puts [*0..n-m].repeated_permutation(2).any? { |i, j| m.times.all? { |k| a[i+k][j, m] == b[k] } } ? 'Yes' : 'No'
