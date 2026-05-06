n, m = gets.split.map(&:to_i)
f = gets.split.map(&:to_i)

puts f.uniq.size == f.size ? 'Yes' : 'No'
puts ([*1..m] - f).empty? ? 'Yes' : 'No'
