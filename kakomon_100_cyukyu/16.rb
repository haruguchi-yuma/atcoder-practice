n = gets.to_i
ps = gets.split.map(&:to_i)
qs = gets.split.map(&:to_i)

s = [*1..n].permutation(n).to_a
p (s.index(ps) - s.index(qs)).abs
