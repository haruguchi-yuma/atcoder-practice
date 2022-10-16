# 偶奇の性質を利用
a, b = gets.split.map(&:to_i)

if (a..b).include?(0)
  puts 'Zero'
end

if a > 0
  puts 'Positive'
end

if b < 0
  puts (a..b).size.even? ? 'Positive' : 'Negative'
end

# https://atcoder.jp/contests/agc002/tasks/agc002_a
