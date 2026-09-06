require 'sorted_containers'

h, w, q = gets.split.map(&:to_i)

# まだ壊されてない壁の列、行を配列で保持しておく
rows = Array.new(h) { SortedContainers::SortedArray.new(0...w) }
cols = Array.new(w) { SortedContainers::SortedArray.new(0...h) }

q.times do
  i, j = gets.split.map { it.to_i - 1 }
  walls = []

  if rows[i].include?(j)
    walls << [i, j]
  else
    right = rows[i].bisect_left(j)
    left = right - 1
    walls << [i, rows[i][right]] if right < rows[i].size
    walls << [i, rows[i][left]] if left >= 0

   down = cols[j].bisect_left(i)
   top = down - 1
   walls << [cols[j][down], j] if down < cols[j].size
   walls << [cols[j][top], j] if top >= 0
  end

  walls.each do |wi, wj|
    rows[wi].delete(wj)
    cols[wj].delete(wi)
  end
end

p rows.sum(&:size)
