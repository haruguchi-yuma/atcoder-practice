# 後ろから順番にたどっていく
n, *pi = $<.read.split.map(&:to_i)
c = n
pi.unshift(0, 0)

ans = 0

loop do
  c = pi[c]
  break if c == 0
  ans += 1
end

puts ans

# 動的計画法 dp[i] = dp[p_i] + 1を利用
n = gets.to_i
pi = gets.split.map{ _1.to_i - 1 }
dp = Array.new(n) { 0 }

(1...n).each do |i|
  dp[i] = dp[pi[i-1]] + 1
end

puts dp.last
