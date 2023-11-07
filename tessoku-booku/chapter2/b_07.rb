t = gets.to_i
n = gets.to_i

res = Array.new(t+1, 0)

n.times do |i|
  l, r = gets.split.map(&:to_i)
  res[l] += 1
  res[r] -= 1
end

i = 0
puts res.map { i += _1 }[0...t]
