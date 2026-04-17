INF = Float::INFINITY

dx = [1, -1, 0, 0]
dy = [0, 0, 1, -1]

while true
  w, h = gets.split.map(&:to_i)
  break if [w, h] == [0, 0]

  # board[i][j][k] 座標(i, j)から方向kに移動可能かどうか
  board = Array.new(h) { Array.new(w) { Array.new(4, true) } }

  (0...h).each { |i| board[i][0][1] = false } # 左端の壁を設定
  (0...h).each { |i| board[i][w-1][0] = false } # 右端の壁を設定
  (0...w).each { |i| board[0][i][3] = false } # 上端の壁を設定
  (0...w).each { |i| board[h-1][i][2] = false } # 下端の壁を設定

  (0...(2*h-1)).each do |i|
    l = i.even? ? w - 1 : w

    line = gets.split.map(&:to_i)
    (0...l).each do |j|
      inp = line[j]
      if inp == 1 # 壁なら
        if i.even?
          board[i/2][j][0] = false
          board[i/2][j+1][1] = false
        else
          board[i/2][j][2] = false
          board[i/2+1][j][3] = false
        end
      end
    end
  end

  dist = Array.new(h) { Array.new(w, INF) }
  dist[0][0] = 1
  que = []
  que << [0, 0]

  while (x, y = que.shift)
    4.times do |i|
      next unless board[x][y][i]

      nx, ny = x + dx[i], y + dy[i]

      next if nx < 0 || nx >= w || ny >= h || ny < 0
      next if dist[nx][ny] <= dist[x][y] + 1

      dist[nx][ny] = dist[x][y] + 1
      que << [nx, ny]
    end
  end

  puts dist[h-1][w-1] == INF ? 0 : dist[h-1][w-1]
end
