ok = 'The graph is connected.'
ng = 'The graph is not connected.'

n, m = gets.split.map(&:to_i)
g = Array.new(n) { [] }

m.times do
  u, v = gets.split.map(&:to_i)
  g[u-1] << v-1
  g[v-1] << u-1
end

visited = Array.new(n, false)

def dfs(pos, g, visited)
  visited[pos] = true
  g[pos].each do |v|
    dfs(v, g, visited) unless visited[v]
  end

  return
end

dfs(0, g, visited)

puts visited.all? ? ok : ng
