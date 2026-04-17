h, w, n = gets.split.map(&:to_i)
a = Array.new(h) { gets.split.map(&:to_i) }
b = Array.new(n) { gets.to_i }

p a.map { |nums| (nums & b).size }.max
