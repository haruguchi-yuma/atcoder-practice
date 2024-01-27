n = gets.to_i
xy = Array.new(n) {gets.split.map(&:to_i)}
x, y =  xy.transpose.map(&:sum)

puts x > y ? 'Takahashi' : x < y ? 'Aoki' : 'Draw'


