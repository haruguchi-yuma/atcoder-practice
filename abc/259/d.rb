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

n = gets.to_i
sx, sy, tx, ty = gets.split.map(&:to_i)
xyr = Array.new(n) { gets.split.map(&:to_i) }

def renketsu?(cir1, cir2)
  x1, y1, r1 = cir1
  x2, y2, r2 = cir2
  d = (x2-x1)**2 + (y2-y1)**2
  r1, r2 = [r1, r2].sort

  !(d > r1*r1 + r2*r2 + 2*r1*r2 || d < r2*r2 + r1*r1 - 2*r1*r2)
end

def cir?(cir, x, y)
  xo, yo, r = cir
  (xo-x)**2 + (yo-y)**2 == r*r
end

uf = UnionFind.new(n)
start = -1
fin = -1

xyr.each_with_index do |cir, i|
  if cir?(cir, sx, sy)
    start = i
  end

  if cir?(cir, tx, ty)
    fin = i
  end
end

[*0...n].combination(2) do |i, j|
  cir1 = xyr[i]
  cir2 = xyr[j]
  if renketsu?(cir1, cir2)
    uf.unite(i, j)
  end
end

puts uf.same?(start, fin) ? 'Yes' : 'No'

__END__
4
0 -2 3 3
0 0 2
2 0 2
2 3 1
-3 3 3
