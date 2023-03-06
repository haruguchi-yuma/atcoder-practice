x = gets.chomp
n = gets.to_i
s = Array.new(n) { gets.chomp }

puts s.sort_by { _1.tr(x, 'a-z') }
