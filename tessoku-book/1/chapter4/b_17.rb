n, *h = $<.read.split.map(&:to_i)

dp = Array.new(n, 0)
dp[1] = (h[1] - h[0]).abs
(2...n).each do |v|
  dp[v] = [
    dp[v-1] + (h[v] - h[v-1]).abs,
    dp[v-2] + (h[v] - h[v-2]).abs
  ].min
end

ans = []
loop do
  ans << n
  break if n == 1
  dp[n-1] == dp[n-2] + (h[n-1] - h[n-2]).abs ? n -= 1 : n -= 2
end

puts ans.size
puts ans.reverse * ' '


__END__
4
10 30 40 20

