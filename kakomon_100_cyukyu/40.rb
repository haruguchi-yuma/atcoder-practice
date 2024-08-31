MOD = 10000
n, k = gets.split.map(&:to_i)
ab = Array.new(k) { gets.split.map(&:to_i) }.to_h

dp = Array.new(n+1) { [0, 0, 0] }
if b = ab[1]
  dp[1][b-1] += 1
else
  dp[1] = [1, 1, 1]
end

if b = ab[2]
  dp[2][b-1] += dp[1].sum
else
  3.times do |i|
    dp[2][i] += dp[1][(i+1)%3] + dp[1][(i+2)%3]
  end
end

(3..n).each do |i|
  b = ab[i]
  if b = ab[i]
    dp[i][b-1] += dp[i-1].sum
  else
    3.times do |j|
      dp[i][j] += dp[i-1][(j+1)%3] + dp[i-1][(j+2)%3]
    end
  end
end

p dp
__END__
5 3
3 1
1 1
4 2
