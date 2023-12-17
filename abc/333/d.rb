class UnionFind
  attr_reader :parent, :siz

  def initialize(n)
    @parent = Array.new(n, -1)
    @siz = Array.new(n, 1)
  end

  # 再帰 & 経路圧縮
  def root(x)
    parent[x] == -1 ? x : @parent[x] = root(parent[x])
  end

  def same(x, y)
    root(x) == root(y)
  end

  def unite(x, y)
    x, y = root(x), root(y)

    return false if x == y

    # 常にy側のsizeが小さくなるようにする　 (union by size)
    x, y = y, x if @siz[x] < @siz[y]

    @siz[x] += @siz[y]
    @parent[y] = x

    return true
  end

  def size(x)
    @siz[root(x)]
  end
end

n = gets.to_i
uf = UnionFind.new(n)
g = []
(n-1).times do
  u, v = gets.split.map(&:to_i)
  if u-1 == 0
    g << v-1
  elsif v-1 == 0
    g << u-1
  else
    uf.unite(u-1, v-1)
  end
end

if g.size == 1
  puts 1
  exit
end
ans = []
g.each do |i|
  ans << uf.size(i)
end

p ans.sum - ans.max + 1

__END__
n = gets.to_i

g = Array.new(n) { [] }
(n-1).times do
  u, v = gets.split.map(&:to_i)
  g[u-1] << v-1
  g[v-1] << u-1
end

visited = []
ans = Array.new(n, 0)
v = g[0].to_set
now = 0
dfs = -> (pos) {
  visited[pos] = true

  g[pos].each do |nex|
    if !visited[nex]
      ans[now] += 1
      dfs[nex]
      now += 1 if v.include?(nex)
    end
  end

  return
}


if g[0].size == 1
  puts 1
  exit
end

dfs[0]
res = ans.select { _1 > 0 }
p res.sum - res.max + 1
