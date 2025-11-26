n = gets.to_i
a = Array.new(n) { gets.split.map(&:to_i) }
q = gets.to_i

q.times do
  s, x, y = gets.split.map(&:to_i)
  if s == 1
    a[x-1], a[y-1] = a[y-1], a[x-1]
  else
    p a[x-1][y-1]
  end
end
