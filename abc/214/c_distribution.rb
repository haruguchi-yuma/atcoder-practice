# 2周回して少ないものを採用していく
n = gets.to_i
s = gets.split.map(&:to_i)
t = gets.split.map(&:to_i)

(n * 2).times do |i|
  t[(i+1) % n] = [s[i % n] + t[i % n], t[(i+1) % n]].min
end

puts t
