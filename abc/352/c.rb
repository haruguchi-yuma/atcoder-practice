n = gets.to_i
ab = Array.new(n) { gets.split.map(&:to_i) }.sort_by { |a, b| b - a}
a, b = ab[-1]
p ab.sum(&:first) + (b - a)
