n = gets.to_i
pi = gets.split.map(&:to_i)
q = gets.to_i

q.times do
  a, b = gets.split.map(&:to_i)
  if pi.index(a) < pi.index(b)
    puts a
  else
    puts b
  end
end
