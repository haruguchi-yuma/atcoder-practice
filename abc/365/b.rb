gets
a = gets.split.map(&:to_i)
p a.index(a.max(2)[-1]) + 1
