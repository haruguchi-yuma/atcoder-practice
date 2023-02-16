n, m = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)

g = Array.new(n) { [] }
m.times do |i|
  a, b = gets.split.map(&:to_i)
  g[a-1] << b - 1
  g[b-1] << a - 1
end

g.each_with_index.count do |t, i|
  t.all? { h[_1] < h[i] }
end.tap { p _1 }
