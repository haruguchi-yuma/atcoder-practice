s = gets.chomp.chars
k = gets.to_i
p s.each_cons(k).uniq.size
