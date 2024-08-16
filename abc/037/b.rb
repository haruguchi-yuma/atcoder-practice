n, q = gets.split.map(&:to_i)

a = Array.new(n, 0)

q.times do
  l, r, t = gets.split.map(&:to_i)
  ((l-1)...r).each do |i|
    a[i] = t
  end
end

puts a
