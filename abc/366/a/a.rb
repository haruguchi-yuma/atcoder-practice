n, t, a = gets.split.map(&:to_i)
puts (n / 2) + 1 <= t || (n / 2 ) + 1 <= a ? 'Yes' : 'No'
