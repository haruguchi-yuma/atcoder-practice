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
ab = Array.new(m) { gets.split.map(&:to_i) }

q = gets.to_i
query = Array.new(q) { gets.split.map(&:to_i) }

cancelled = Array.new(m, false)
query.each { |s, a, b| cancelled[a-1] = true if s == 1 }

uf = UnionFind.new(n)

# 最後の状態に更新
m.times do |i|
  a, b = ab[i]
  if !cancelled[i] && !uf.same?(a-1, b-1)
    uf.unite(a-1, b-1)
  end
end

ans = []

(0...q).reverse_each do |i|
  case query[i]
  in [1, x]
    a, b = ab[x-1]
    uf.unite(a-1, b-1) if !uf.same?(a-1, b-1)
  in [2, u, v]
    ans << (uf.same?(u-1, v-1) ? 'Yes' : 'No')
  end
end

puts ans.reverse
