n, *a = $<.read.split.map(&:to_i)
INF = 10**16
g = Array.new(n, INF)
start = 0
a.each_with_index do |v, i|
  next start = i if v == -1
  g[v-1] = i
end

que = [start]
ans = []

while v = que.shift
  ans << v+1
  que << g[v] unless g[v] == INF
end
puts ans.join(' ')
