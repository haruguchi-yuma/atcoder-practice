n = gets.to_i
a, b = Array.new(2) { gets.split.map(&:to_i).map(&:pred) }

dp = Array.new(n, -1e9)
dp[0] = 0

(n-1).times do |i|
  dp[a[i]] = [dp[a[i]], dp[i] + 100].max
  dp[b[i]] = [dp[b[i]], dp[i] + 150].max
end

p dp[n-1]

__END__
7
2 4 4 7 6 7
3 5 6 7 7 7
