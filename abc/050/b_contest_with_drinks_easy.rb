# 合計値を保存しておいて、変更になった場所の差を求め引いていく
n = gets.to_i
t = gets.split.map(&:to_i)
m = gets.to_i
sum = t.sum

m.times do |i|
  p, x = gets.split.map(&:to_i)
  puts sum - (t[p-1] - x)
end
