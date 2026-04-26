h, w, n = gets.split.map(&:to_i)
z = Array.new(h+2) { Array.new(w+2, 0) }

n.times do
  a, b, c, d = gets.split.map(&:to_i)
  z[a][b] += 1
  z[a][d+1] -= 1
  z[c+1][b] -= 1
  z[c+1][d+1] += 1
end

2.times do
  z = z.map { |row|
    sum = 0
    row.map { |n| sum += n }
  }.transpose
end

puts z[1..h].map { it[1..w].join(' ') }

__END__
5 5 2
1 1 3 3
2 2 4 4
