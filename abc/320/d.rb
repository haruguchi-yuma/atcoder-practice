INF = 10 * 18
n, m = gets.split.map(&:to_i)
g = Array.new(n) { [] }

m.times do |i|
  a, b, x, y = gets.split.map(&:to_i)
  g[a-1] << [b-1, x, y]
  g[b-1] << [a-1, -x, -y]
end

x = Array.new(n, INF)
y = Array.new(n, INF)
x[0] = 0
y[0] = 0

que = []
que << 0

while v = que.shift
  g[v].each do |u, dx, dy|
    next if x[u] != INF
    x[u] = x[v] + dx
    y[u] = y[v] + dy
    que << u
  end
end

n.times do |i|
  if x[i] == INF
    puts 'undecidable'
  else
    puts "#{x[i]} #{y[i]}"
  end
end

__END__
3 2
2 1 -2 -1
2 3 -3 -3
