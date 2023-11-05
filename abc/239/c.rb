x1, y1, x2, y2 = gets.split.map(&:to_i)


dx = [1, -1, 1, -1, 2, -2, 2, -2]
dy = [2, 2, -2, -2, 1, 1, -1, -1]

res1 = 8.times.map do |i|
  nx = x1 + dx[i]
  ny = y1 + dy[i]
  [nx, ny]
end

res2 = 8.times.map do |i|
  nx = x2 + dx[i]
  ny = y2 + dy[i]
  [nx, ny]
end

puts (res1 & res2).empty? ? 'No' : 'Yes'
