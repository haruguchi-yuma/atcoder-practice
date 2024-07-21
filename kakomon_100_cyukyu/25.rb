
di = [0, -1, -1, -1, 0, 1, 1, 1]
dj = [-1, -1, 0, 1, 1, 1, 0 ,-1]

while ((w, h = gets.split.map(&:to_i)) != [0, 0])
  g = Array.new(h) { gets.split.map(&:to_i) }

  visit = Array.new(h) { Array.new(w, false) }
  stack = []
  ans = 0
  h.times do |i|
    w.times do |j|
      next if g[i][j] == 0
      next if visit[i][j]

      stack << [i, j]
      while (ii, jj = stack.pop)
        8.times do |k|
          ni = ii + di[k]
          nj = jj + dj[k]

          next if ni < 0 || nj < 0 || ni >= h || nj >= w
          next if g[ni][nj] == 0
          next if visit[ni][nj]

          visit[ni][nj] = true
          stack << [ni, nj]
        end
      end
      ans += 1
    end
  end

  p ans
end
__END__
1 1
0
2 2
0 1
1 0
3 2
1 1 1
1 1 1
5 4
1 0 1 0 0
1 0 0 0 0
1 0 1 0 1
1 0 0 1 0
5 4
1 1 1 0 1
1 0 1 0 1
1 0 1 0 1
1 0 1 1 1
5 5
1 0 1 0 1
0 0 0 0 0
1 0 1 0 1
0 0 0 0 0
1 0 1 0 1
0 0
