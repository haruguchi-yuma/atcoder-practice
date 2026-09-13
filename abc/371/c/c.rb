n = gets.to_i
mg = gets.to_i
g = Array.new(n) { Hash.new(false) }

mg.times do
  u, v = gets.split.map(&:to_i)
  g[u-1][v-1] = true
  g[v-1][u-1] = true
end

mh = gets.to_i
h = Array.new(n) { Hash.new(false) }
mh.times do
  a, b = gets.split.map(&:to_i)
  h[a-1][b-1] = true
  h[b-1][a-1] = true
end

costs = Array.new(n) { [0] * n }
(n-1).times do |i|
  gets.split.map(&:to_i).each_with_index do |cost, j|
    costs[i][i+j+1] = cost
  end
end

ans = []

[*0...n].permutation do |ary|
  cost = 0

  [*0...n].combination(2) do |u, v|
    a, b = [ary[u], ary[v]].minmax
    cost += costs[a][b] if g[u][v] != h[a][b]
  end

  ans << cost
end

p ans.min
