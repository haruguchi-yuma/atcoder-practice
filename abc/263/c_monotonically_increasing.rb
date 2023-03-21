n, m = gets.split.map(&:to_i)

puts [*1..m].combination(n).to_a
