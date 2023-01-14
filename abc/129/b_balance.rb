# 要素数で全探索
n = gets.to_i
w = gets.split.map(&:to_i)
ans = []

(n-1).times do |i|
  ans << (w[..i].sum - w[i+1..].sum).abs
end

puts ans.min
