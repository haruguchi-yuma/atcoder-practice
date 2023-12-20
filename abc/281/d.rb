n, k, d, *a = $<.read.split.map(&:to_i)

dp = Array.new(105) { Array.new(105) { [-1] * 100 }}
dp[0][0][0] = 0

n.times do |i|
  ni = i + 1
  (k+1).times do |j|
    d.times do |r|
      now = dp[i][j][r]
      next if now == -1
      2.times do |x|
        if x == 0
          nj = j+1
          nr = (r+a[i]) % d
          dp[ni][nj][nr] = [dp[ni][nj][nr], now + a[i]].max
        else
          nj = j
          nr = r
          dp[ni][nj][nr] = [dp[ni][nj][nr], now].max
        end
      end
    end
  end
end

p dp[n][k][0]
__END__
4 2 2
1 2 3 4
