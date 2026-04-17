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

n, m = gets.split.map(&:to_i)

abc = Array.new(m) { gets.split.map(&:to_i) }.sort_by(&:last).reverse

uf = UnionFind.new(n)

ans = 0
m.times do |i|
  a, b, c = abc[i]
  next if uf.same?(a-1, b-1)

  uf.unite(a-1, b-1)
  ans += c
end

p ans
