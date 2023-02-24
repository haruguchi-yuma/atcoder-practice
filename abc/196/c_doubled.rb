# 123|123　の123の部分で全探索
n = gets.to_i
sum = 0

(1..10**6).each do |k|
  [k, k].map(&:to_s).join.to_i <= n ? sum += 1 : break
end

p sum
