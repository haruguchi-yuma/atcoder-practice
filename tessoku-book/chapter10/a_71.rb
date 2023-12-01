n = gets.to_i
a = gets.split.map(&:to_i).sort
b = gets.split.map(&:to_i).sort.reverse


p n.times.sum {|i| a[i] * b[i] }
