m = gets.to_i
n = gets.to_i
g = Array.new(n) { [0] + gets.split.map(&:to_i) + [0] }
g.unshift([0]*(m+2))
g.push([0]*(m+2))

di = [0, -1, 0, 1]
dj = [-1, 0, 1, 0]

ans = 0
dfs = ->(i, j, d) {
  return if g[i][j] == 0
  ans = [ans, d].max
  g[i][j] = 0

  4.times do |k|
    ni = i + di[k]
    nj = j + dj[k]

    dfs[ni, nj, d+1]
  end

  g[i][j] = 1
}

(1..n).each do |i|
  (1..m).each do |j|
    dfs[i, j, 1]
  end
end

p ans
