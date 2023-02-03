# 通り方は n!/(1!*(n-1)!)= n通りしか無いので O(N)で計算できる
n = gets.to_i
a = Array.new(2) { gets.split.map(&:to_i) }

puts n.times.map {|i| a[0][0..i].sum + a[1][i..].sum }.max
