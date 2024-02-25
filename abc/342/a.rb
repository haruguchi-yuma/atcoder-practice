s = gets.chomp.chars

p s.index(s.tally.invert[1]) + 1
