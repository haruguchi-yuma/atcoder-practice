d = gets.to_i
n = gets.to_i
a = Array.new(d+2, 0)

n.times do
  l, r = gets.split.map(&:to_i)
  a[l] += 1
  a[r+1] -= 1
end

sum = 0
puts (1..d).map { |i| sum += a[i] }
