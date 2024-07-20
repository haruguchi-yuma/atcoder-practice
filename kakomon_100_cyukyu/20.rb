n = gets.to_i
a, b, c = Array.new(3) { gets.split.map(&:to_i) }
a.sort!
c.sort!
puts b.sum { |y|
  i = a.bsearch_index { _1 >= y } || n
  j = n - (c.bsearch_index { _1 > y } || n)
  i * j
}
