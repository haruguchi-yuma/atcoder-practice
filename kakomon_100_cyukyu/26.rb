n, q = gets.split.map(&:to_i)
g = Array.new(n) { [] }

(n-1).times do
  a, b = gets.split.map(&:to_i)
  g[a-1] << b-1
  g[b-1] << a-1
end

t = Hash.new(0)
q.times do |i|
  p, x = gets.split.map(&:to_i)
  t[p-1] += x
end

ans = Array.new(n, -1)

sum = 0
dfs = -> (v) {
  sum += t[v]
  ans[v] = sum

  g[v].each do |u|
    next if ans[u] != -1
    dfs[u]
    sum -= t[u]
  end
}

dfs[0]

puts ans * ' '
