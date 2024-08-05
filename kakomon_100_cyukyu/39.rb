# :TODO: やり直し、なぜかテストケースの最後だけ通らない。
# 3時間くらい考えたけど、わからなかったので一旦諦める。
# 配るDPで解いてるのでもらうに変えても良いかもしれない。
n = gets.to_i
*a, s = gets.split.map(&:to_i)

dp = Array.new(n) { Array.new(21, 0) }
dp[0][a[0]] = 1

(n-1).times do |i|
  21.times do |j|
    if j + a[i+1] <= 20
      dp[i+1][j+a[i+1]] += dp[i][j]
    end
    if j - a[i+1] >= 0
      dp[i+1][j-a[i+1]] += dp[i][j]
    end
  end
end

p dp[n-1][s]

__END__
11
8 3 2 4 8 7 2 4 0 8 8

