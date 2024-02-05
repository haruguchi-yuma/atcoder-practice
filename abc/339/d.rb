# これは通らないWAのコード！！！！！！

INF = 1001001001
n = gets.to_i
g = Array.new(n) { gets.chomp.chars }
ps = []

n.times do |i|
  n.times do |j|
    ps << i << j if g[i][j] == 'P'
  end
end
dist = {}
dist[ps.join] = 0

que = []
que << ps.join

di = [-1, 0, 1, 0]
dj = [0, 1, 0, -1]

while !que.empty?
  ps = que.shift
  d = dist[ps]

  4.times do |v|
    nps = ""
    i1, j1, i2, j2 = ps.chars.map(&:to_i)
    ni1 = i1 + di[v]
    nj1 = j1 + dj[v]
    ni2 = i2 + di[v]
    nj2 = j2 + dj[v]

    if ni1 < 0 || nj1 < 0 || ni1 >= n || nj1 >= n || g[ni1][nj1] == '#'
      ni1 = i1
      nj1 = j1
    end

    if ni2 < 0 || nj2 < 0 || ni2 >= n || nj2 >= n || g[ni2][nj2] == '#'
      ni2 = i2
      nj2 = j2
    end

    nps = [ni1, nj1, ni2, nj2].join
    next if dist[nps]
    dist[nps] = d + 1
    que << nps
  end
end

ans = INF

dist.each do |str, d|
  ij1, ij2 = str.chars.map(&:to_i).each_slice(2).to_a
  if ij1 == ij2
    ans = [ans,d].min
  end
end

puts ans == INF ? -1 : ans
