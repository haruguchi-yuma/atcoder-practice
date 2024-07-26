INF = 1001001001
h, w, n = gets.split.map(&:to_i)
g = Array.new(h) { gets.chomp.chars }

di = [0, -1, 0, 1]
dj = [-1, 0, 1, 0]

start = []
h.times do |i|
  w.times do |j|
    start = [i, j] if g[i][j] == 'S'
  end
end

ans = 0
target = 1
n.times do
  que = []
  que << start
  dist = Array.new(h) { [INF] * w }
  dist[start[0]][start[1]] = 0

  while (i, j = que.shift)
    ok = false
    d = dist[i][j]

    4.times do |k|
      ni = i + di[k]
      nj = j + dj[k]

      next if ni < 0 || nj < 0 || ni >= h || nj >= w
      next if dist[ni][nj] != INF
      next if g[ni][nj] == 'X'

      dist[ni][nj] = d + 1
      que << [ni, nj]

      if g[ni][nj] == target.to_s
        ok = true
        ans += dist[ni][nj]
        start = [ni, nj]
        target += 1
        break
      end
    end

    break if ok
  end
end

p ans
