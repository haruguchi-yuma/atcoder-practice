n = gets.to_i
x = Array.new(1550) { [0] * 1550 }

n.times do
  a, b, c, d = gets.split.map(&:to_i)
  x[a][b] += 1
  x[a][d] -= 1
  x[c][b] -= 1
  x[c][d] += 1
end

x = x.map { |row| i = 0; row.map { |n| i += n } }
x = x.transpose.map { |row| i = 0; row.map { |n| i += n } }

puts x.flatten.sum{ |cell| cell > 0 ? 1 : 0}
