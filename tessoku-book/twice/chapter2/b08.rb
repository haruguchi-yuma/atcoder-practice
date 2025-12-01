n = gets.to_i
xy = Array.new(n) { gets.split.map(&:to_i) }

s = Array.new(1503) { [0] * 1503 }
xy.each { |j, i| s[i][j] += 1 }

# 2次元累積和
2.times do
  s = s.map { |row| i = 0; row.map { i += _1 }}.transpose
end

q = gets.to_i
q.times do
  a, b, c, d = gets.split.map(&:to_i)
  puts s[d][c] - s[b-1][c] - s[d][a-1] + s[b-1][a-1]
end


__END__
5
1 3
2 5
3 4
2 6
3 3
3
1 3 3 6
1 5 2 6
1 3 3 5
