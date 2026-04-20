SIZE = 1504

s = Array.new(SIZE) { Array.new(SIZE, 0) }

n = gets.to_i
n.times do
  x, y = gets.split.map(&:to_i)
  s[x][y] += 1
end

2.times do
  s = s.map { |row|
    sum = 0
    row.map { |n| sum += n }
  }.transpose
end

q = gets.to_i
q.times do
  a, b, c, d = gets.split.map(&:to_i)

  p s[c][d] - s[c][b-1] - s[a-1][d] + s[a-1][b-1]
end
