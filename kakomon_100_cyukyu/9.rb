m = gets.to_i
tar = Array.new(m) { gets.split.map(&:to_i) }
n = gets.to_i
xy = Array.new(n) { gets.split.map(&:to_i) }

points = {}
xy.each { |x, y| points[[x, y]] = true }

xy.each do |x, y|
  tx, ty = tar[0]
  diff_x, diff_y = x - tx, y - ty

  res = tar.all? do |xx, yy|
    points[[diff_x+xx, diff_y+yy]]
  end

  if res
    puts [diff_x, diff_y].join(' ')
  end
end
