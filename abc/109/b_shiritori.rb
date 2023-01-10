n = gets.to_i
w = Array.new(n) { gets.chomp }

puts w.size != w.uniq.size || w.each_cons(2).any? { _1[-1] != _2[0] } ? 'No' : 'Yes'
