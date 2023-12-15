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

  def same?(x, y)
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
n, m = gets.split.map(&:to_i)
uf = UnionFind.new(n)

x = 0

m.times do
  a, _, b, _ = gets.chomp.split
  a = a.to_i - 1
  b = b.to_i - 1

  if uf.same?(a, b)
    x += 1
  else
    uf.unite(a, b)
  end
end

puts [x, n-m].join(' ')
