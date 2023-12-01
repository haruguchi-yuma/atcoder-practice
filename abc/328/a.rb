n, x = gets.split.map(&:to_i)
s = gets.split.map(&:to_i)
p s.select { _1 <= x }.sum
