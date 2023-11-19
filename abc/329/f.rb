n, q = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)
g = c.map { Set[_1] }

q.times do
  a, b = gets.split.map { _1.to_i - 1 }

  if g[a].size > g[b].size
    g[a], g[b] = g[b], g[a]
  end

  g[b].merge(g[a])
  g[a] = [].to_set
  puts g[b].size
end
