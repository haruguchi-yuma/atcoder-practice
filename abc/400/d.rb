INF = 1001001001
h, w = gets.split.map(&:to_i)
s = Array.new(h) { gets.chomp.chars }
a, b, c, d = gets.split.map(&:to_i).map(&:pred)

di = [-1, 1, 0, 0]
dj = [0, 0, -1, 1]

dist = Array.new(h) { Array.new(w, INF) }
dist[a][b] = 0

deq = []
deq << [a, b]

while (i, j = deq.shift)
  4.times do |v|
    ni = i + di[v]
    nj = j + dj[v]

    next if ni < 0 || nj < 0 || ni >= h || nj >= w

    # 0コストの移動
    if s[ni][nj] == '.'
      next if dist[ni][nj] <= dist[i][j]
      dist[ni][nj] = dist[i][j]

      deq.unshift([ni, nj])
      next
    end

    # 1コストの移動(1回目)
    if dist[ni][nj] > dist[i][j] + 1
      dist[ni][nj] = dist[i][j] + 1
      deq << [ni, nj]
    end

    # 1コストの移動(2回目)
    ni2 = ni + di[v]
    nj2 = nj + dj[v]
    next if ni2 < 0 || nj2 < 0 || ni2 >= h || nj2 >= w

    if dist[ni2][nj2] > dist[i][j] + 1
      dist[ni2][nj2] = dist[i][j] + 1
      deq << [ni2, nj2]
    end
  end
end

pp dist[c][d]
