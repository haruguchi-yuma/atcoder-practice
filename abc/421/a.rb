n = gets.to_i
s = Array.new(n) { gets.chomp }
x, y = gets.split

puts s[x.to_i.pred] == y ? 'Yes' : 'No'
