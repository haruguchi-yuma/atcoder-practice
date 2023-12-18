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
a = Array.new(n) { gets.chomp.split }

h = {}
now = 0
a.each do |a, b|
  if h[a].nil?
    h[a] = now
    now += 1
  end

  if h[b].nil?
    h[b] = now
    now += 1
  end
end
uf = UnionFind.new(h.size)

a.each do |a, b|
  if uf.same?(h[a], h[b])
    puts 'No'
    exit
  else
    uf.unite(h[a], h[b])
  end
end

puts 'Yes'
__END__
n = gets.to_i
a = Array.new(n) { gets.chomp.split }
s, t = a.transpose

to = {}
a.each do |ss, tt|
  to[ss] = tt
end

visited = {}
s.each do |ss|
  ns = ss
  while !visited[ns] do
    visited[ns] = true
    it = to[ns]
    break if !to[it]
    ns = to[it]
    if ns == ss
      puts 'No'
      exit
    end
  end
end

puts 'Yes'
