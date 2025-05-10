dfs = -> (g, i, j, h, w) {
  g[i][j] = 0
  di = [0, -1, -1, -1, 0, 1, 1, 1]
  dj = [-1, -1, 0 , 1, 1, 1, 0, -1]

  8.times do |k|
    ni = i + di[k]
    nj = j + dj[k]

    next if ni < 0 || ni >= h || nj < 0 || nj >= w
    next if g[ni][nj] == 0

    dfs[g, ni, nj, h, w]
  end
}

while (w, h = gets.split.map(&:to_i))
  break if [w, h] == [0, 0]

  c = Array.new(h) { gets.split.map(&:to_i) }
  cnt = 0

  h.times do |i|
    w.times do |j|
      next if c[i][j] == 0

      dfs[c, i, j, h, w]
      cnt += 1
    end
  end

  puts cnt
end
