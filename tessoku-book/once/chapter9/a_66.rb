class UnionFind
  attr_reader :parent

  def initialize(size)
    @parent = Array.new(size, -1)
  end

  # 再帰的に親までたどる　 & 経路圧縮
  def root(x)
    @parent[x] < 0 ? x : @parent[x] = root(@parent[x])
  end

  def same?(x, y)
    root(x) == root(y)
  end

  def unite(x, y)
    x, y = root(x), root(y)

    return false if x == y

    # 常にy側のsizeが小さくなるようにする (union by size)
    x, y = y, x if @parent[x] > @parent[y]

    @parent[x] += @parent[y]
    # y　を　　x　の子とする
    @parent[y] = x

    return true
  end

  def size(x)
    @parent[root(x)].abs
  end
end

n, q = gets.split.map(&:to_i)
uf = UnionFind.new(n)

q.times do
  case gets.split.map(&:to_i)
  in [1, a, b]
    uf.unite(a-1, b-1)
  in [2, a, b]
    puts uf.same?(a-1, b-1) ? 'Yes' : 'No'
  end
end
