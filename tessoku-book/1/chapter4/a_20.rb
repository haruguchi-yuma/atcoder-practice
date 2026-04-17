s = gets.chomp.chars
t = gets.chomp.chars

n = s.size
m = t.size

dp = Array.new(n+1) { [0] * (m + 1) }
dp[0][0] = 0

(n+1).times do |i|
  (m+1).times do |j|
    if i >= 1 && j >= 1 && s[i-1] == t[j-1]
      dp[i][j] = [
        dp[i-1][j],
        dp[i][j-1],
        dp[i-1][j-1] + 1
      ].max
    elsif i >= 1 && j >= 1
      dp[i][j] = [
        dp[i-1][j],
        dp[i][j-1]
      ].max
    elsif i >= 1
      dp[i][j] = dp[i-1][j]
    elsif j >= 1
      dp[i][j] = dp[i][j-1]
    end
  end
end

p dp[n][m]
__END__
mynavi
monday
