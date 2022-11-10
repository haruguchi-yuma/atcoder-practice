# 転置してカウント

h, w = gets.split.map(&:to_i)
c = Array.new(h) { gets.chomp.chars }
puts c.transpose.map{ _1.count('#') } * ' '

# https://atcoder.jp/contests/abc274/tasks/abc274_b
