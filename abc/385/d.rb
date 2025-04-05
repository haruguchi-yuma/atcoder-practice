n, m, x, y = gets.split.map(&:to_i)
xy = Array.new(n) { gets.split.map(&:to_i) }
cd = Array.new(m) { gets.split }

x_to_y = Hash.new { |h, k| h[k] = [] }
y_to_x = Hash.new { |h, k| h[k] = [] }

xy.each do |x, y|
  x_to_y[x] << y
  y_to_x[y] << x
end

x_to_y.keys.each { |xx| x_to_y[xx].sort! }
y_to_x.keys.each { |yy| y_to_x[yy].sort! }

now_x = x
now_y = y
visited = Set.new

cd.each do |d, c|
  c = c.to_i
  case d
  when 'U'
    if x_to_y[now_x]
      i = x_to_y[now_x].bsearch_index { |y| y >= now_y + 1 }
      while i && i < x_to_y[now_x].size && x_to_y[now_x][i] <= now_y + c
        visited.add([now_x, x_to_y[now_x][i]])
        i += 1
      end
    end

    now_y += c
  when 'D'
    if x_to_y[now_x]
      i = x_to_y[now_x].bsearch_index { |y| y >= now_y - c }
      while i && i < x_to_y[now_x].size && x_to_y[now_x][i] < now_y
        visited.add([now_x, x_to_y[now_x][i]])
        i += 1
      end
    end

    now_y -= c
  when 'L'
    if y_to_x[now_y]
      i = y_to_x[now_y].bsearch_index { |x| x >= now_x - c }
      while i && i < y_to_x[now_y].size && y_to_x[now_y][i] < now_x
        visited.add([y_to_x[now_y][i], now_y])
        i += 1
      end
    end

    now_x -= c
  when 'R'
    if y_to_x[now_y]
      i = y_to_x[now_y].bsearch_index { |x| x >= now_x + 1 }
      while i && i < y_to_x[now_y].size && y_to_x[now_y][i] <= now_x + c
        visited.add([y_to_x[now_y][i], now_y])
        i += 1
      end
    end

    now_x += c
  end
end

puts [now_x, now_y, visited.size].join(' ')
