INF = 10 ** 18
n = gets.to_i

w = 0

ary = Array.new(n) {
  x, y, z = gets.split.map(&:to_i)
  w += z
  cost = [(y-x+1)/2, 0].max
  [cost, z*2]
}

dp = Array.new(n+1) { [INF] * (w+1) }
dp[0][0] = 0

n.times do |i|
  a, z = ary[i]
  (w+1).times do |j|
    dp[i+1][j] = [dp[i+1][j], dp[i][j]].min
    dp[i+1][[w, j+z].min] = [dp[i+1][[w,j+z].min], dp[i][j] + a].min
  end
end

p dp[n][w]
