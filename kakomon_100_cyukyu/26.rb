n, q = gets.split.map(&:to_i)
g = Array.new(n) { [] }

(n-1).times do
  a, b = gets.split.map(&:to_i)
  g[a-1] << b-1
  g[b-1] << a-1
end

h = Hash.new(0)

q.times do
  pi, x = gets.split.map(&:to_i)
  h[pi-1] += x
end

ans = Array.new(n, 0)
visited = Array.new(n, false)
score = 0

bfs = -> (u) {
  visited[u] = true
  score += h[u]
  ans[u] += score

  g[u].each do |v|
    next if visited[v]
    bfs[v]
    score -= h[v]
  end
}

bfs[0]
puts ans.join(' ')
