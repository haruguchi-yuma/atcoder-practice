n = gets.to_i
a = gets.split.map(&:to_i)
m = gets.to_i
b = gets.split.map(&:to_i)
x = gets.to_i

dp = []
dp[0] = true
b.each { |i| dp[i] = false }

(1..x).each do |i|
  next if dp[i] == false
  dp[i] = a.each.any? do |aa|
    i-aa < 0 ? false : dp[i-aa]
  end
end

puts dp[x] ? 'Yes' : 'No'
