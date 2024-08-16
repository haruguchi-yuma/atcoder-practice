n = gets.to_i
sp = Array.new(n) { a,b=gets.split; [a,b.to_i] }
target = sp.sum(&:last)
a = sp.find { _1[1]*2> target }

puts a ? a[0] : 'atcoder'
