n, k = gets.split.map(&:to_i)

puts 2 * n - 2 <= k && k.even? ? 'Yes' : 'No'
