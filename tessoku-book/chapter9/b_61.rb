n, m = gets.split.map(&:to_i)

g = Array.new(n) { [] }

m.times do
  u, v = gets.split.map(&:to_i)
  g[u-1] << v-1
  g[v-1] << u-1
end

ary = g.map(&:size)
cnt = ary.max

p ary.index(cnt)+1
