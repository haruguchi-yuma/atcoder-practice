h, w = gets.split.map(&:to_i)
x = Array.new(h) { [0] + gets.split.map(&:to_i) }
x.unshift(([0] *(w+1)))
q = gets.to_i

x.map! { |row| i = 0 ; row.map! { |n| i += n } }
x = x.transpose.map { |col| i = 0; col.map { |n| i += n } }.transpose

q.times do |i|
  li, lj, ri, rj = gets.split.map(&:to_i)
  puts x[ri][rj] + x[li-1][lj-1] - x[li-1][rj] - x[ri][lj-1]
end
