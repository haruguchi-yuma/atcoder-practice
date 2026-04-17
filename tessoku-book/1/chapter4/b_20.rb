s = gets.chomp.chars
t = gets.chomp.chars

n = s.size
m = t.size

dp = Array.new(n+1) { [0] * (m + 1) }

(n+1).times do |i|
  (m+1).times do |j|
    if i >= 1 && j >= 1 && s[i-1] == t[j-1]
      dp[i][j] = [
        dp[i-1][j]+1,
        dp[i][j-1]+1,
        dp[i-1][j-1]
      ].min
    elsif i >= 1 && j >= 1
      dp[i][j] = [
        dp[i-1][j]+1,
        dp[i][j-1]+1,
        dp[i-1][j-1]+1
      ].min
    elsif i >= 1
      dp[i][j] = dp[i-1][j] + 1
    elsif j >= 1
      dp[i][j] = dp[i][j-1] + 1
    end
  end
end

p dp[n][m]
