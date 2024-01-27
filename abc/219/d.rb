n = gets.to_i
x, y = gets.split.map(&:to_i)
INF = 1001001001
dp = Array.new(x+1) { Array.new(y+1, INF) }

dp[0][0] = 0

n.times do |i|
  a, b = gets.split.map(&:to_i)
  x.downto(0) do |j|
    y.downto(0) do |k|
      nj, nk = [j+a, x].min, [k+b, y].min

      dp[nj][nk] = [dp[nj][nk], dp[j][k] + 1].min
    end
  end
end

p dp[x][y] == INF ? -1 : dp[x][y]

__END__
3
5 6
2 1
3 4
2 3
