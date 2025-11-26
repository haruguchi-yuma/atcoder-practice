MOD = 1000000007
n = gets.to_i
memo = [0, 1, 1]

(3..n).each do |i|
  memo[i] = (memo[i-2] + memo[i-1]) % MOD
end

p memo[n]
