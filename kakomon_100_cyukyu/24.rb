n = gets.to_i
g = Array.new(n) { [] }

n.times do
  u, k, *v = gets.split.map(&:to_i)
  g[u-1] = v.map(&:pred).sort
end

d = Array.new(n)
f = Array.new(n)
visited = Array.new(n, false)
@time = 0

def dfs(u, g, d, f, visited)
  @time += 1
  d[u] = @time
  visited[u] = true

  g[u].each do |v|
    dfs(v, g, d, f, visited) unless visited[v]
  end

  @time += 1
  f[u] = @time
end

(0...n).each do |u|
  dfs(u, g, d, f, visited) unless visited[u]
end

n.times { |i| puts [i+1, d[i], f[i]].join(' ') }
