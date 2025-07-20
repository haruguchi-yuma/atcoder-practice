INF = -1001001001
h, w, n = gets.split.map(&:to_i)
town = Array.new(h) { gets.chomp.chars }


factories = {}
h.times do |i|
  w.times do |j|
    if town[i][j] =~ /[1-9]/
      factories[town[i][j].to_i] = [i, j]
    elsif town[i][j] == 'S'
      factories[0] = [i, j]
    end
  end
end

di = [0, -1, 0, 1]
dj = [-1, 0, 1, 0]

puts n.times.sum { |i|
  si, sj = factories[i]
  gi, gj = factories[i+1]

  dist = Array.new(h) { Array.new(w, INF) }
  dist[si][sj] = 0
  que = []
  que << [si, sj]
  find = false

  while (i, j = que.shift)
    d = dist[i][j]

    4.times do |k|
      ni, nj = i + di[k], j + dj[k]

      next if ni < 0 || nj < 0 || ni >= h  || nj >= w
      next if town[ni][nj] == 'X'
      next if dist[ni][nj] != INF

      dist[ni][nj] = d + 1

      if ni == gi && nj == gj
        break find = true
      end
      que << [ni, nj]
    end

    break if find
  end

  dist[gi][gj]
}
