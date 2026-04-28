n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

p (0..10**9+3).bsearch { |t| a.sum { |n| t / n } >= k }
