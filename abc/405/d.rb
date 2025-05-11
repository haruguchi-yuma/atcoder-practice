h, w = gets.split.map(&:to_i)
s = Array.new(h) { gets.chomp.chars }

que = []
h.times do |i|
  w.times do |j|
    if s[i][j] == 'E'
      que << [i, j]
    end
  end
end

di = [0, -1, 0, 1]
dj = [-1, 0, 1, 0]
dc = "<^>v".chars

while (i, j = que.shift)
  4.times do |k|
    ni, nj = i + di[k], j + dj[k]

    next if ni < 0 || ni >= h || nj < 0 || nj >= w
    next if s[ni][nj] != '.'

    que << [ni, nj]
    s[ni][nj] = dc[k^2] # 180°反転のため XOR　2をとる
  end
end

puts s.map(&:join)
__END__
INF = 1001001001
h, w = gets.split.map(&:to_i)
s = Array.new(h) { gets.chomp.chars }
ex = []
s.each_with_index  do |row, i|
  row.each_with_index do |cell, j|
    ex << [i, j] if cell == 'E'
  end
end

di = [0, -1, 0, 1]
dj = [-1, 0, 1, 0]

que = []
ex.each { que << _1 }
dist = Array.new(h) { [INF] * w }
ex.each do |i, j|
  dist[i][j] = 0
end

# 幅優先探索で最短経路出す

while (i, j = que.shift)
  d = dist[i][j]

  4.times do |k|
    ni = i + di[k]
    nj = j + dj[k]

    next if ni < 0 || ni >= h || nj < 0 || nj >= w
    next if s[ni][nj] == '#'
    next if dist[ni][nj] != INF

    dist[ni][nj] = d + 1
    que << [ni, nj]
  end
end


ans = Array.new(h) { [nil] * w }

ex.each do |i, j|
  ans[i][j] = 'E'
end

h.times do |i|
  w.times do |j|
    if dist[i][j] == INF
      next ans[i][j] = '#'
    end

    next if dist[i][j] == 0
    d = dist[i][j]
    4.times do |k|
      ni = i + di[k]
      nj = j + dj[k]

      next if ni < 0 || ni >= h || nj < 0 || nj >= w
      if dist[ni][nj] == d - 1
        ans[i][j] =
          case k
          when 0 then '<'
          when 1 then '^'
          when 2 then '>'
          when 3 then 'v'
          end
      end
    end
  end
end

puts ans.map(&:join)

