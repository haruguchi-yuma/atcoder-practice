w, h = gets.split.map(&:to_i)
building = Array.new(h) { [0] + gets.split.map(&:to_i) + [0]}
building.unshift([0] * (w+2) )
building.push([0] * (w+2) )

inside = ->(i, j) { 0 <= i && i <= h + 1 && 0 <= j && j <= w + 1 }

outside = Array.new(h+2) { [0] * (w+2) }

neighbor = ->(i, j) {
  cand =
    if i.odd?
      [
        [i-1, j],
        [i-1, j+1],
        [i, j-1],
        [i, j+1],
        [i+1, j],
        [i+1, j+1]
      ]
    else
      [
        [i-1, j-1],
        [i-1, j],
        [i, j-1],
        [i, j+1],
        [i+1, j-1],
        [i+1, j]
      ]
    end
  cand.select { |x, y| inside[x, y] }
}

que = [[0, 0]]
outside[0][0] = 1

while (i, j = que.shift)
  neighbor[i, j].each do |x, y|
    if building[x][y] == 0 && outside[x][y] == 0
      outside[x][y] = 1
      que << [x, y]
    end
  end
end
pp outside
ans = 0
(h+2).times do |i|
  (w+2).times do |j|
    next if outside[i][j] == 0

    neighbor[i, j].each do |x, y|
      ans += 1 if outside[x][y] == 0
    end
  end
end

p ans
