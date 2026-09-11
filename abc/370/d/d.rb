require 'sorted_containers'

h, w, q = gets.split.map(&:to_i)
rows = Array.new(h) { SortedContainers::SortedArray.new(0...w) }
cols = Array.new(w) { SortedContainers::SortedArray.new(0...h) }

q.times do |a|
  i, j = gets.split.map(&:to_i).map(&:pred)
  target = []
  # クエリの座標に壁があった場合
  if rows[i].include?(j)
    rows[i].delete(j)
    cols[j].delete(i)
  else
    # クエリの座標に壁がなかった場合、上下左右を探す
    # 範囲外にならないようにする
    right = rows[i].bisect_left(j)
    left = right - 1
    target << [i, rows[i][left]] if  left >= 0
    target << [i, rows[i][right]] if right < rows[i].size


    down = cols[j].bisect_left(i)
    up = down - 1
    target << [cols[j][up], j] if up >= 0
    target << [cols[j][down], j] if down < cols[j].size
  end

  target.each do |di, dj|
    rows[di].delete(dj)
    cols[dj].delete(di)
  end
end

puts rows.sum(&:size)
__END__
1 2
1 2
1 3

0 1
0 1
0 2

rows = [
  [0, 2, 3],
  [0, 1, 2, 3],
]

cols = [
  [0, 1],
  [1],
  [0, 1],
  [0, 1],
]

# x # #
# # # #
