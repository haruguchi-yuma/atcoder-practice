h, w = gets.split.map(&:to_i)
# 番兵
x = Array.new(h) { [0] + gets.split.map(&:to_i) }.unshift([0]*(w+1))

2.times do
  x = x.map { |row| i = 0; row.map { i += _1 } }.transpose
end

q = gets.to_i
q.times do
  a, b, c, d = gets.split.map(&:to_i)
  puts x[a-1][b-1] - x[a-1][d] - x[c][b-1] + x[c][d]
end



__END__
5 5
2 0 0 5 1
1 0 3 0 0
0 8 5 0 2
4 1 0 0 6
0 9 2 7 0
2
2 2 4 5
1 1 5 5

