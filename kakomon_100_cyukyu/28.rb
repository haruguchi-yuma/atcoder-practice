INF = 1001001001
n = gets.to_i

g = Array.new(n) { _, _, *v = gets.split.map(&:to_i).map(&:pred); v}

que = [0]
dist = Array.new(n, INF)
dist[0] = 0

while v = que.shift
  g[v].each do |nex|
    if dist[nex] == INF
      que << nex
      dist[nex] = dist[v] + 1
    end
  end
end

dist.each_with_index do |n, i|
  puts "#{i+1} #{n == INF ? -1 : n}"
end
