n = gets.to_i
h = gets.split.map(&:to_i)


dp = Array.new(n) { Hash.new(1) }
cnt = 1

(1...n).each do |i|
  (0...i).each do |j|

    if h[i] == h[j]
      dp[i][i-j] = dp[j][i-j] + 1
      cnt = [cnt, dp[i][i-j]].max
    end
  end
end

p cnt
