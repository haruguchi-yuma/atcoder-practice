x = gets.to_i

puts [*1..6].product([*1..6], [*1..6]).map(&:sum).include?(x) ? 'Yes' : 'No'
