s = gets.chomp.chars.tally
puts s.sort_by{ [-1 * _2, _1]}[0][0]
