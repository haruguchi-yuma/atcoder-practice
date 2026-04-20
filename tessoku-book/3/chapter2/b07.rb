t = gets.to_i
n = gets.to_i
a = Array.new(t+2, 0)

n.times do
  l, r = gets.split.map(&:to_i)
  a[l] += 1
  a[r] -= 1
end

sum = 0
puts a.map { sum += it }[0...t]
