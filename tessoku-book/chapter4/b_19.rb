n, w = gets.split.map(&:to_i)
wei, val = Array.new(n) { gets.split.map(&:to_i) }.transpose

size = 1000 * 100 + 1
dp = Array.new(n+1) { [nil] * size }
dp[0][0] = 0

(1..n).each do |i|
  size.times do |j|
    dp[i][j] = dp[i-1][j]

    if j - val[i-1] >= 0 && !dp[i-1][j-val[i-1]].nil?
      if dp[i][j].nil?
        dp[i][j] = dp[i-1][j-val[i-1]] + wei[i-1]
      else
        dp[i][j] = [dp[i][j], dp[i-1][j-val[i-1]] + wei[i-1]].min
      end
    end
  end
end

p dp[-1].rindex { !_1.nil? && _1 <= w }
