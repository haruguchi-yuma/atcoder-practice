n, m = gets.split.map(&:to_i)
g = Array.new(n) { [false] * n }

m.times do |i|
  x, y = gets.split.map(&:to_i)
  g[x-1][y-1] = g[y-1][x-1] = true
end

ans = 1
(1<<n).times do |bit|
  if n.times.filter_map { _1 if bit[_1] == 1 }.combination(2).all? { |a, b| g[a][b] }
    ans = [ans, bit.to_s(2).count(?1) ].max
  end
end

p ans
