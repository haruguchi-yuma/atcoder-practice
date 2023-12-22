NUM = -1;
n, m = gets.split.map(&:to_i)
dij = []
(-n..n).each do |i|
  (-n..n).each do |j|
    dij << [i, j] if i*i + j*j == m
  end
end

que = []
dist = Array.new(n) { [NUM] * n }

push = -> (i, j, d) {
  return if i < 0 || j < 0 || i >= n || j >= n
  return if dist[i][j] != NUM
  dist[i][j] = d
  que << [i, j]
}

push[0, 0, 0]

while (i, j = que.shift)
  dij.each do |di, dj|
    ni = i + di
    nj = j + dj
    push[ni, nj, dist[i][j] + 1]
  end
end

puts dist.map { _1.join(' ') }
