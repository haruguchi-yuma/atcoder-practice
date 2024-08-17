n = gets.to_i
t = gets.split.map(&:to_i)
m = gets.to_i

total = t.sum
m.times do
  pi, x = gets.split.map(&:to_i)
  p total - t[pi-1] + x
end
