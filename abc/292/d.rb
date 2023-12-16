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

es = Array.new(m) { gets.split.map { _1.to_i - 1 } }
es.each { |a, b| uf.unite(a, b) }

v = Array.new(n, 0)
e = Array.new(n, 0)

n.times { |i| v[uf.root(i)] += 1 }
es.each { |a, b| e[uf.root(a)] += 1}

n.times do |i|
  if v[i] != 0
    if v[i] != e[i]
      puts 'No'
      exit
    end
  end
end

puts 'Yes'

__END__
3 3
2 3
1 1
2 3
