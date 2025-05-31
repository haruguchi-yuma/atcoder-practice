m = gets.to_i
n = gets.to_i

g = Array.new(n) { gets.split.map(&:to_i) }

di = [0, -1, 0, 1]
dj = [-1, 0, 1, 0]
visited = Array.new(n) { [false] * m }

dfs = -> (i, j, cnt) {
  max_cnt = cnt
  visited[i][j] = true


  4.times do |k|
    ni, nj = i + di[k], j + dj[k]
    next if ni < 0 || nj < 0 || ni >= n || nj >= m
    next if g[ni][nj] == 0
    next if visited[ni][nj]

    max_cnt = [max_cnt, dfs[ni, nj, cnt + 1]].max
  end

  visited[i][j] = false
  max_cnt
}

ans = 0
n.times do |i|
  m.times do |j|
    next if g[i][j] == 0

    ans = [ans, dfs[i, j, 1]].max
  end
end

p ans
