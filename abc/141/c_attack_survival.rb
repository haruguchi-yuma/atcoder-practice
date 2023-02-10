n, k, q = gets.split.map(&:to_i)
points = Array.new(n) { k - q }

q.times do
  i = gets.to_i
  points[i-1] += 1
end

points.each { puts _1 > 0 ? 'Yes' : 'No' }
