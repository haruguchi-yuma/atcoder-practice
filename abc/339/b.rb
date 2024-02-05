h, w, n = gets.split.map(&:to_i)

di = [-1, 0, 1, 0]
dj = [0, 1, 0, -1]

g = Array.new(h) { ['.'] * w }

i, j = 0, 0
d = 0
n.times do
  if g[i][j] == '.'
    g[i][j] = '#'
    d += 1
  else
    g[i][j] = '.'
    d -= 1
  end
  i = (i + di[d%4]) % h
  j = (j + dj[d%4]) % w
end

puts g.map(&:join)
