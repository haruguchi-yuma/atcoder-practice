h,w = gets.split.map(&:to_i)
s = Array.new(h) { gets.chomp.chars }
g = Array.new(h) { [?#] * w }

di = [0, -1, -1, -1, 0, 1, 1, 1]
dj = [-1, -1, 0, 1, 1, 1, 0, -1]

h.times do |i|
  w.times do |j|
    next if s[i][j] == '#'
    cnt = 0
    8.times do |k|
      ni = i + di[k]
      nj = j + dj[k]

      next if ni < 0 || ni >= h || nj < 0 || nj >= w
      cnt += 1 if s[ni][nj] == '#'
    end

    g[i][j] = cnt
  end
end

puts g.map(&:join)
