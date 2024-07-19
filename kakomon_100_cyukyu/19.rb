d = gets.to_i
n = gets.to_i
m = gets.to_i
d = [0] + Array.new(n-1) { gets.to_i } + [d]
d.sort!
k = Array.new(m) { gets.to_i }

puts k.sum { |x|
  idx = d.bsearch_index { _1 >= x}
  [(d[idx]-x).abs, (d[idx-1]-x).abs].min
}
