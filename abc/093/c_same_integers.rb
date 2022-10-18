abc = gets.split.map(&:to_i)
x = abc.max
x += 1 if ((x * 3) + abc.sum).odd?

puts (3 * x - abc.sum) / 2

# https://atcoder.jp/contests/abc093/tasks/arc094_a
