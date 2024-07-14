x1, y1 = gets.split.map(&:to_i)
x2, y2 = gets.split.map(&:to_i)
x3, y3 = gets.split.map(&:to_i)

def dist(x1, x2, y1, y2)
  (x2-x1) ** 2 + (y2-y1) ** 2
end

d = [
  dist(x1, x2, y1, y2),
  dist(x2, x3, y2, y3),
  dist(x3, x1, y3, y1)
].sort

puts d[0..1].sum == d[2] ? 'Yes' : 'No'
