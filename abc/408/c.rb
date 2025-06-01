n, m = gets.split.map(&:to_i)
h = Hash.new(0)

m.times do
  l, r = gets.split.map(&:to_i)
  h[l-1] += 1
  h[r] -= 1
end

now = 0
p n.times.map { |i| now += h[i] }.min
