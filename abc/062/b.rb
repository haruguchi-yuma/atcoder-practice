h,w = gets.split.map(&:to_i)
puts '#'* (w+2)
puts Array.new(h) { '#' + gets.chomp + '#' }
puts '#'* (w+2)
