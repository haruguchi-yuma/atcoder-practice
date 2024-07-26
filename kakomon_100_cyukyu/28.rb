INF = 1001001001
n = gets.to_i
g = n.times.map {
  _, _, *v = gets.split.map(&:to_i)
  v.map(&:pred)
}

que = [0]
dist = Array.new(n, INF)
dist[0] = 0

while v = que.shift
  d = dist[v]

  g[v].each do |u|
    next if dist[u] != INF
    que << u
    dist[u] = d + 1
  end
end

dist.each.with_index(1) do |n, i|
  puts [i, n == INF ? -1 : n] * ' '
end
