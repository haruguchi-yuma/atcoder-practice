# 全探索
n, m = gets.split.map(&:to_i)
g = Array.new(n) { [false] * n }

m.times do
  u, v = gets.split.map(&:to_i)
  g[u-1][v-1] = true
  g[v-1][u-1] = true
end

ans = 0

[*0...n].combination(3).each do |i, j, k|
  ans += 1 if g[i][j] && g[j][k] && g[k][i]
end

puts ans
