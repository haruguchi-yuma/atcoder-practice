INF = -Float::INFINITY
n = gets.to_i
h = {}
n.times do
  t, x, a = gets.split.map(&:to_i)
  h[t] = {x => a}
end

time = h.keys.max
dp = Array.new(time+1) { [INF] * 5 }

dp[0][0] = 0

time.times do |i|
  hash = h[i+1] || {}
  5.times do |j|
    dp[i+1][j-1] = [dp[i+1][j-1], dp[i][j] + hash[j-1].to_i].max if j-1 >= 0
    dp[i+1][j] = [dp[i+1][j], dp[i][j] + hash[j].to_i].max
    dp[i+1][j+1] = [dp[i+1][j+1], dp[i][j] + hash[j+1].to_i].max if j+1 <= 4
  end
end


pp dp[-1].max
__END__
3
1 0 100
3 3 10
5 4 1
