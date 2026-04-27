n = gets.to_i
a = gets.split.map(&:to_i)
q = gets.to_i

a.sort!

q.times do
  x = gets.to_i
  p a.bsearch_index { it >= x } || n
end
