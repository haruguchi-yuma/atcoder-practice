# 二部グラフ
n, m = gets.split.map(&:to_i)

g = Array.new(n) { [] }

m.times do
  a, b = gets.split.map(&:to_i)
  g[a-1] << b-1
  g[b-1] << a-1
end

def c2(n)
  n*(n-1)/2
end

c = Array.new(n, -1)
cvs = [0, 0]

dfs = ->(v, nc = 0) {
  if (c[v] != -1) #色が既に決まっている場合
    return c[v] == nc #塗ろうとしている色 = 塗られている色　なら OK
  end
  c[v] = nc
  cvs[nc] += 1
  g[v].each do |u|
    return false if !dfs[u, nc^1]
  end

  true
}

ans = c2(n) - m

n.times do |i|
  next if c[i] != -1
  cvs = [0, 0]
  if !dfs[i]
    puts 0
    exit
  end
  ans -= cvs.sum { c2(_1) }
end

puts ans
