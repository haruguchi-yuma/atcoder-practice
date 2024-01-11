a, n = gets.split.map(&:to_i)
MX = 10 ** 6 # 頂点数
INF = 1001001001 # 適当なでかい数
dist = Array.new(MX, INF)

que = []

push = ->(v, d) {
  return if dist[v] != INF
  dist[v] = d
  que << v
}

push[1, 0]

while v = que.shift
  d = dist[v]

  push[v*a, d+1] if v * a < MX

  if (v >= 10 && v%10 != 0)
    u = v.digits.rotate.reverse.join.to_i
    push[u, d+1]
  end
end

p dist[n] == INF ? -1 : dist[n]
