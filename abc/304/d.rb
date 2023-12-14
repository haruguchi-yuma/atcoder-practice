w, h = gets.split.map(&:to_i)
n = gets.to_i
pi, q = Array.new(n) { gets.split.map(&:to_i) }.transpose
A = gets.to_i
a = [0] + gets.split.map(&:to_i) + [w]
B = gets.to_i
b = [0] + gets.split.map(&:to_i) + [h]

points = n.times.map do |i|
  x =  a.bsearch_index { _1 >= pi[i] } - 1
  y =  b.bsearch_index { _1 >= q[i] } - 1
  [x, y]
end
tally = Hash.new(0)
points.each do |point|
  tally[point] += 1
end

max =  tally.values.max
min = tally.size == (A.succ * B.succ) ? tally.values.min : 0

puts [min, max].join(' ')
__END__
7 6
5
6 1
3 1
4 2
1 5
6 2
2
2 5
2
3 4
