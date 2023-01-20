# 配列に詰めて差集合をとる
n, k = gets.split.map(&:to_i)
ary = []
k.times do
  d = gets.to_i
  ary << gets.split.map(&:to_i)
end

puts ([*1..n] -  ary.flatten).size
