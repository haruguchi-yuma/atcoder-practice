h, w = gets.split.map(&:to_i)
si, sj = gets.split.map(&:to_i).map(&:pred)
gi, gj = gets.split.map(&:to_i).map(&:pred)
c = Array.new(h) { gets.chomp.chars }

dist = Array.new(h) { Array.new(w, -1) }
dist[si][sj] = 0
que = []
que << [si, sj]

di = [0, -1, 0, 1]
dj = [-1, 0, 1, 0]

while (i, j = que.shift)
  d = dist[i][j]

  4.times do |k|
    ni, nj = i + di[k], j + dj[k]

    next if c[ni][nj] == '#'
    next if dist[ni][nj] != -1
    dist[ni][nj] = d + 1
    que << [ni, nj]
  end
end

p dist[gi][gj]
