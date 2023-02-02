n, m = gets.split.map(&:to_i)

a = Array.new(n) { gets.chomp }
b = Array.new(m) { gets.chomp }

[*0..n-m].repeated_permutation(2).any? { |i, j|
  m.times.all? { |k| a[i+k][j, m] == b[k] }
}.tap { puts _1 ? 'Yes' : 'No' }
