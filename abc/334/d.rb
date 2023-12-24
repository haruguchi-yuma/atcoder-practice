n, q = gets.split.map(&:to_i)
r = gets.split.map(&:to_i).sort
i = 0

s = [i] + r.map { i += _1 }
size = s.size

q.times do
  x = gets.to_i
  p (s.bsearch_index { _1 > x } || size) - 1
end
