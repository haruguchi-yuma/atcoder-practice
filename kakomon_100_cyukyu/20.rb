n = gets.to_i
a = gets.split.map(&:to_i).sort
b = gets.split.map(&:to_i).sort
c = gets.split.map(&:to_i).sort

puts b.sum { |bb|
  res1 =  a.bsearch_index { |aa| aa >= bb } || n
  res2 =  n - (c.bsearch_index { |cc| cc > bb } || n)
  res1 * res2
}
