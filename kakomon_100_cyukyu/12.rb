n, m = gets.split.map(&:to_i)
g = Array.new(n) { [false] * n }

m.times do |i|
  a, b = gets.split.map(&:to_i)
  g[a-1][b-1] = true
  g[b-1][a-1] = true
end

ans = []
(1<<n).times do |bit|
  res = n.times.filter_map do |i|
    i if bit[i] == 1
  end

  if res.combination(2).all? { |a, b| g[a][b] }
    ans << [res.size, 1].max
  end
end

p ans.max
