n, w = gets.split.map(&:to_i)
wv = Array.new(n) { gets.split.map(&:to_i) }
dp = Array.new(n+1) {[nil] * (w + 1) }
dp[0][0] = 0

n.times do |i|
  w.times do |j|
    next unless dp[i][j]

    if dp[i+1][j]
      dp[i+1][j] = [
        dp[i][j],
        dp[i+1][j]
      ].max
    else
      dp[i+1][j] = dp[i][j]
    end

    dp[i+1][j + wv[i][0]] = dp[i][j] + wv[i][1] if j + wv[i][0] <= w
  end
end

p dp[-1].compact.max
__END__
4 7
3 13
3 17
5 29
1 10
