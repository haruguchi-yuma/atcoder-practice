n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

dp = Array.new(n, Float::INFINITY)
dp[0] = 0

(n-1).times do |i|
  dp[i+1] = [dp[i+1], dp[i] + a[i]].min
  next if i == n-2
  dp[i+2] = [dp[i+2], dp[i] + b[i]].min
end

p dp[n-1]

__END__
5
2 4 1 3
5 3 7
