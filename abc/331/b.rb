n, s, m, l = gets.split.map(&:to_i)

res = [*0..n].repeated_permutation(3).select { |a, b, c| a * 6 + b * 8 + c * 12 >= n }

p res.map { |a, b, c| a * s + b * m + c * l }.min
