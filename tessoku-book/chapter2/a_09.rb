h, w, n = gets.split.map(&:to_i)
x = Array.new(h+1) { [0] * (w+1) }

n.times do
  a, b, c, d = gets.split.map(&:to_i)
  x[a-1][b-1] += 1
  x[a-1][d] -= 1
  x[c][b-1] -= 1
  x[c][d] += 1
end

x.map! { |row| i=0; row.map{ |n| i += n } }
x = x.transpose.map { |row| i=0; row.map{ |n| i += n } }.transpose
puts x[0...h].map { _1.[](0...w).join(' ') }

__END__
# 番兵がないバージョン
# 余計な条件分岐が入って余計な頭を使ってしまう。
# その代わりフォーマット時は楽

h, w, n = gets.split.map(&:to_i)
x = Array.new(h) { [0] * w }

n.times do
  a, b, c, d = gets.split.map(&:to_i)
  x[a-1][b-1] += 1
  x[a-1][d] -= 1 if d < w
  x[c][b-1] -= 1 if c < h
  x[c][d] += 1 if c < h && d < w
end

x.map! { |row| i=0; row.map{ |n| i += n } }
puts x.transpose.map { |row| i=0; row.map{ |n| i += n } }.transpose.map { _1.join(' ') }


