h, w = gets.split.map(&:to_i)
x = Array.new(h) { [0] + gets.split.map(&:to_i) }.unshift(Array.new(w+1, 0))


2.times do
  x = x.map { |row|
    sum = 0
    row.map { |n| sum += n }
  }.transpose
end

gets.to_i.times do
  a, b, c, d = gets.split.map(&:to_i)

  p x[c][d] - x[a-1][d] - x[c][b-1] + x[a-1][b-1]
end
