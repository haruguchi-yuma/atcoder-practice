n, a, b = gets.split.map(&:to_i)

dp = Array.new(n+1, false)

(n+1).times do |i|
  if i >= a && !dp[i-a]
    dp[i] = true
  elsif i >= b && !dp[i-b]
    dp[i] = true
  end
end

puts dp[n] ? 'First' : 'Second'
