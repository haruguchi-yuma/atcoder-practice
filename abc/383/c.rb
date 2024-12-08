INF = 1001001001
h, w, D = gets.split.map(&:to_i)
s = Array.new(h) { gets.chomp.chars }

di = [0, -1, 0, 1]
dj = [-1, 0, 1, 0]

dist = Array.new(h) { [INF] * w }
que = []

h.times do |i|
  w.times do |j|
    next if s[i][j] != 'H'
    dist[i][j] = 0
    que << [i, j]
  end
end

while (i, j = que.shift)
  d = dist[i][j]

  4.times do |k|
    ni, nj = i + di[k], j + dj[k]

    next if ni < 0 || nj < 0 || ni >= h || nj >= w
    next if s[ni][nj] == '#'
    next if dist[ni][nj] != INF

    dist[ni][nj] = d + 1
    que << [ni, nj]
  end
end

p dist.flatten.count { |d| d <= D }
