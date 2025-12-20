h, w, n = gets.split.map(&:to_i)

s = Array.new(h+2) { [0] * (w+2) }

n.times do
  a, b, c, d = gets.split.map(&:to_i)
  s[a][b] += 1
  s[a][d+1] -= 1
  s[c+1][b] -= 1
  s[c+1][d+1] += 1
end

2.times do
  s = s.map { |row| i = 0; row.map { i += _1 } }.transpose
end

s[1..h].each { puts _1[1..w].join(' ')}

