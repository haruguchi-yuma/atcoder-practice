INF = 1001001001

while (w, h = gets.split.map(&:to_i))
  break if [w, h] == [0, 0]

  di = [0, -1, 0, 1]
  dj = [-1, 0, 1, 0]

  board = Array.new(40) { Array.new(40) { Array.new(4, true) } }

  h.times { |i| board[i][0][0] = false } # 左
  h.times { |i| board[i][w-1][2] = false } # 右
  w.times { |i| board[0][i][1] = false } # 上
  w.times { |i| board[h-1][i][3] = false } # した

  (2*h-1).times do |i|
    walls = gets.split.map(&:to_i)
    if i.even? # 横の壁の有無
      walls.each_with_index do |wall, j|
        next if wall == 0

        board[i/2][j][2] = false
        board[i/2][j+1][0] = false
      end
    else
      walls.each_with_index do |wall, j|
        next if wall == 0

        board[i/2][j][3] = false
        board[i/2+1][j][1] = false
      end
    end
  end

  dist = Array.new(40) { Array.new(40, INF) }
  dist[0][0] = 1
  que = []
  que << [0, 0]

  while (i, j = que.shift)
    4.times do |k|
      next unless board[i][j][k]
      d = dist[i][j]
      ni = i + di[k]
      nj = j + dj[k]

      next if dist[ni][nj] <= d + 1

      dist[ni][nj] = d + 1
      que << [ni, nj]
    end
  end

  puts dist[h-1][w-1] == INF ? 0 : dist[h-1][w-1]
end

__END__
2 3
 1
0 1
 0
1 0
 1
