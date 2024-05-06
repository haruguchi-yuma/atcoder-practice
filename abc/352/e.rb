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
es = []
m.times do |i|
  k, c = gets.split.map(&:to_i)
  a = gets.split.map(&:to_i)
  (k-1).times do |j|
    es << [c, a[j] - 1 , a[j+1] - 1]
  end
end

es = es.sort_by(&:first)
uf = UnionFind.new(n)
ans = 0
es.each do |c, a, b|
  next if uf.same?(a, b)
  uf.unite(a, b)
  ans += c
end

if uf.size(0) != n
  p -1
else
  p ans
end

__END__
4 3
3 3
1 2 3
2 2
1 2
3 4
1 3 4
