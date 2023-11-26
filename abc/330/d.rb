n = gets.to_i
g = Array.new(n) { gets.chomp.chars }
rows = g.map { |row| row.count(?o) }
cols = g.transpose.map { |col| col.count(?o) }

ans = 0

n.times do |i|
  n.times do |j|
    next if g[i][j] == 'x'
      ans += (rows[i] - 1) * (cols[j] - 1)
  end
end

p ans
