n = gets.to_i
a = gets.split.map(&:to_i).sort
q = gets.to_i
x = Array.new(q) { gets.to_i }

x.each {|xx| p a.bsearch_index { _1 >= xx } || n}
