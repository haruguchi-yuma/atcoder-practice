n, m, q = gets.split.map(&:to_i)
g = Array.new(n) { [] }

m.times do
  u, v = gets.split.map { _1.to_i - 1 }
  g[v] << u
  g[u] << v
end

c = gets.split.map(&:to_i)
q.times do
  r = gets.split.map(&:to_i)
  r[1] -= 1
  puts c[r[1]]
  if r[0] == 1
    g[r[1]].each do
      c[_1] = c[r[1]]
    end
  else
    c[r[1]] = r[2]
  end
end

# https://atcoder.jp/contests/past202005-open/tasks/past202005_e
