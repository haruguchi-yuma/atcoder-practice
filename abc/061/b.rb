n, m = gets.split.map(&:to_i)
g = Array.new(n) { [] }
m.times do
  a, b = gets.split.map(&:to_i)
  g[a-1] << b
  g[b-1] << a
end

puts g.map(&:size)
