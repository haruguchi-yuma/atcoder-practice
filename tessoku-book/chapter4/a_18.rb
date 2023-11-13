# ビットセット的な解き方配列の再利用の考え
n, s, *a = $<.read.split.map(&:to_i)
dp = 1

n.times do |i|
  dp = dp | (dp << a[i])
end

puts dp[s] == 1 ? 'Yes' : 'No'


__END__
# シンプルな動的計画法
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

puts dp[-1][s] ? 'Yes' : 'No'

__END__
3 7
2 2 3
