INF = 1001001001
h, w = gets.split.map(&:to_i)
g = Array.new(h) { gets.chomp.chars }

di = [0, -1, 0, 1]
dj = [-1, 0, 1, 0]

que = []
que << [0, 0]
dist = Array.new(h) { [INF] * w }
dist[0][0] = 1

while (i, j = que.shift)
  d = dist[i][j]
  4.times do |k|
    ni = i + di[k]
    nj = j + dj[k]
    next if ni < 0 || nj < 0 || ni >= h || nj >= w
    next if g[ni][nj] == '#'
    next if dist[ni][nj] != INF
    dist[ni][nj] = d + 1
    que << [ni, nj]
  end
end

if dist[h-1][w-1] == INF
  p -1
else
  total = g.sum { _1.count('.') }
  p total - dist[h-1][w-1]
end
