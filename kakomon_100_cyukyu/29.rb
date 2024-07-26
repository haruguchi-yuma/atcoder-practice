INF = 1001001001
h, w = gets.split.map(&:to_i)
s = gets.split.map(&:to_i).map(&:pred)
g = gets.split.map(&:to_i).map(&:pred)
c = Array.new(h) { gets.chomp.chars }

di = [0, -1, 0, 1]
dj = [-1, 0, 1, 0]
que = [s]

dist = Array.new(h) { [INF] * w }
dist[s[0]][s[1]] = 0

while (i, j = que.shift)
  d = dist[i][j]

  4.times do |k|
    ni = i + di[k]
    nj = j + dj[k]
    next if c[ni][nj] == '#'
    next if dist[ni][nj] != INF
    dist[ni][nj] = d + 1
    que << [ni, nj]
  end
end


p dist[g[0]][g[1]]
