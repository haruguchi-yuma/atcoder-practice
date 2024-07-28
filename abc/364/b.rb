move = {
  'L' => [0, -1],
  'R' => [0, 1],
  'U' => [-1, 0],
  'D' => [1, 0],
}

h, w = gets.split.map(&:to_i)
s = gets.split.map(&:to_i).map(&:pred)
g = Array.new(h) { gets.chomp.chars }
x = gets.chomp.chars

i, j = s
x.each do |c|
  di, dj = move[c]
  ni, nj = i + di, j + dj

  next if ni < 0 || nj < 0 || ni >= h || nj >= w
  next if g[ni][nj] == '#'

  i, j = ni, nj
end

puts [i, j].map(&:succ) * ' '
