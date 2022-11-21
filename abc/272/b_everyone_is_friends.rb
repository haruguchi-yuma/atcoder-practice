n, m = gets.split.map(&:to_i)
X = readlines.map { _1.chomp.split.tap(&:shift).map(&:to_i) }

puts [*1..n].combination(2).all? { |s| X.any? { |x| s & x == s } } ? 'Yes' : 'No'

# https://atcoder.jp/contests/abc272/tasks/abc272_b
