n, *a = $<.read.split.map(&:to_i)

dp = Array.new(n) { |i| [0] * (n - i) }
dp[0]= a

(n-1).times do |i|
  (n-1-i).times do |j|
    if (n-1-i).even?
      dp[i+1][j] = [
        dp[i][j],
        dp[i][j+1]
      ].min
    else
      dp[i+1][j] = [
        dp[i][j],
        dp[i][j+1]
      ].max
    end
  end
end

p dp[-1][0]
