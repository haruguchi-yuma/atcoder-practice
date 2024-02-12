MOD = 10**9+7
INF = 1001001001
n, m = gets.split.map(&:to_i)
g = Array.new(n) { [] }
m.times do
  a, b = gets.split.map(&:to_i)
  g[a-1] << b-1
  g[b-1] << a-1
end

dist = Array.new(n, INF)

dist[0] = 0
que = [0]
vs = []

while v = que.shift
  vs << v
  g[v].each do |vv|
    next if dist[vv] != INF
    dist[vv] = dist[v] + 1
    que << vv
  end
end

dp = Array.new(n, 0)
dp[0] = 1

vs.each do |v|
  g[v].each do |u|
    dp[u] = (dp[u] + dp[v]) % MOD if dist[u] == dist[v] + 1
  end
end

p dp[n-1] % MOD
