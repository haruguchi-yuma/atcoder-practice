h, w = gets.split.map(&:to_i)
si, sj = gets.split.map { _1.to_i - 1}
gi, gj = gets.split.map { _1.to_i - 1}
c = Array.new(h) { gets.chomp.chars }

dx = [-1, 0, 1, 0]
dy = [0, -1, 0, 1]
dist = []

dist[si*w+sj] = 0
que = [si*w+sj]

while v = que.shift
  i, j = v.divmod(w)

  4.times do |k|
    ni, nj = i + dy[k], j + dx[k]
    next if c[ni][nj] == '#'
    next if dist[ni*w+nj]
    dist[ni*w+nj] = dist[i*w+j] + 1
    que << ni*w+nj
  end
end

p dist[gi*w+gj]
