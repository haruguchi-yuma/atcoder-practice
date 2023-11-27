n, m = gets.split.map(&:to_i)
GOAL = n - 1
g = Array.new(n) { [] }

m.times do
  u, v = gets.split.map(&:to_i)
  g[u-1] << v-1
  g[v-1] << u-1
end

visited = Array.new(n, false)
path = []
ans = []

dfs = ->(pos) {
  visited[pos] = true
  path << pos
  return ans = path.dup if pos == GOAL

  g[pos].each do |v|
    dfs[v] unless visited[v]
  end

  return path.pop
}

dfs[0]

puts ans.map(&:succ) * ' '
