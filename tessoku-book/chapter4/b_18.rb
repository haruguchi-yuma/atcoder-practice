n, s, *a = $<.read.split.map(&:to_i)
dp = Array.new(n+1) { [false] * (s+1) }
dp[0][0] = true


n.times do |i|
  (s+1).times do |j|
    if j - a[i] < 0
      dp[i+1][j] = dp[i][j]
    else
      dp[i+1][j] = dp[i][j] || dp[i][j - a[i]]
    end
  end
end

idx = s
ans = []
n.times do |i|
  break if idx == 0
  unless dp[~i-1][idx]
    ans << a[~i]
    idx -= a[~i]
  end
end

puts ans.reverse * ' '
