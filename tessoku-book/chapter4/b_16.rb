n, *h = $<.read.split.map(&:to_i)

dp = Array.new(n, 0)
dp[1] = (h[1] - h[0]).abs
(2...n).each do |v|
  dp[v] = [
    dp[v-1] + (h[v] - h[v-1]).abs,
    dp[v-2] + (h[v] - h[v-2]).abs
  ].min
end

p dp[n-1]

__END__
4
10 30 40 20
