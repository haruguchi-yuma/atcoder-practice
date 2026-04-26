SIZE = 1502
n = gets.to_i
z = Array.new(SIZE) { Array.new(SIZE, 0) }

n.times do
  a, b, c, d = gets.split.map(&:to_i)
  z[a][b] += 1
  z[a][d] -= 1
  z[c][b] -= 1
  z[c][d] += 1
end

2.times do
  z = z.map { |row| sum = 0; row.map { |n| sum += n } }.transpose
end

p z.flatten.sum { it == 0 ? 0 : 1 }
