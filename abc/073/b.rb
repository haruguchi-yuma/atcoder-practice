n=gets.to_i
a = Array.new(n) { gets.split.map(&:to_i) }
p a.sum{ _2 - _1 }+n
