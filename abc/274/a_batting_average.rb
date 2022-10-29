a, b = gets.split.map(&:to_f)
puts (b / a).round(3).to_s.ljust(5,'0')

# https://atcoder.jp/contests/abc274/tasks/abc274_a
