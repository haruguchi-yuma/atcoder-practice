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

MOD = 998244353
h, w = gets.split.map(&:to_i)
s = Array.new(h) { gets.chomp.chars }


di = [-1, 0, 1, 0]
dj = [0, -1, 0, 1]

id = Array.new(h) { [-1] * w }
n = 0

h.times do |i|
  w.times do |j|
    if s[i][j] == '#'
      id[i][j] = n
      n += 1
    end
  end
end

base = n
uf = UnionFind.new(n)
cnt = 0
# 緑の頂点に辺を張る
h.times do |i|
  w.times do |j|
    next cnt += 1 if s[i][j] == '.'

    4.times do |v|
      ni = i + di[v]
      nj = j + dj[v]
      next if ni < 0 || nj < 0 || ni >= h || nj >= w
      next if s[ni][nj] == '.'
      a = id[i][j]
      b = id[ni][nj]
      next if uf.same?(a, b)
      base -= 1
      uf.unite(a, b)
    end
  end
end

sum = 0
invr = cnt.pow(MOD-2, MOD)
h.times do |i|
  w.times do |j|
    next if s[i][j] == '#' # 既に緑のところには用無し

    now = base
    now += 1
    set = Set.new
    4.times do |v|
      ni = i + di[v]
      nj = j + dj[v]
      next if ni < 0 || nj < 0 || ni >= h || nj >= w
      next if s[ni][nj] == '.'
      set << uf.root(id[ni][nj])
    end

    now -= set.size
    sum += now * invr
    sum %= MOD
  end
end

p sum % MOD
__END__
3 3
##.
#.#
#..
