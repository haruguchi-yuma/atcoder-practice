n, m = gets.split.map(&:to_i)

g = Array.new(n) { [] }

m.times do
  u, v = gets.split.map(&:to_i)
  g[u-1] << v-1
  g[v-1] << u-1
end

dist = [0]
que = [0]

while r = que.shift
  g[r].each do |v|
    next if dist[v]
    dist[v] = dist[r] + 1
    que << v
  end
end

n.times { |i| p dist[i] || -1 }
