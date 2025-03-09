s = gets.chomp
p s.scan(/[AGCT]*/).map(&:size).max
