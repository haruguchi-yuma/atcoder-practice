n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

g = Array.new(n) { [] }

m.times do
  u, v = gets.split.map(&:to_i)
  g[u-1] << v-1
  g[v-1] << u-1
end

ans = []
visit = Array.new(n, false)
set = Set.new

bfs = -> (rev, v) {
  if visit[v] || rev >= a[v]
    return
  end

  if v == n-1
    ans << set.size
    return set.delete(v)
  end

  visit[v] = true
  point = a[v]
  set << v
  g[v].each do |nes|
    bfs[point, nes]
  end
}

bfs[0, 0]
p ans.max || 0
