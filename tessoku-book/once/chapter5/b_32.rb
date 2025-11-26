n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

dp = Array.new(n+1, false)

(n+1).times do |i|
  a.each do |aa|
    if i >= aa && !dp[i-aa]
      dp[i] = true
    end
  end
end

puts dp[n] ? 'First' : 'Second'
