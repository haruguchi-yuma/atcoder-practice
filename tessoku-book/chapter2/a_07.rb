d = gets.to_i
n = gets.to_i

res = Array.new(d+1, 0)

n.times do
  l, r = gets.split.map(&:to_i)
  res[l-1] += 1
  res[r] -= 1
end

sum = 0
d.times do |i|
  sum += res[i]
  puts sum
end
