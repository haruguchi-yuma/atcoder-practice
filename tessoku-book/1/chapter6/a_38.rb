d, n = gets.split.map(&:to_i)
limit = [24] * d

n.times do
  l, r, h = gets.split.map(&:to_i)

  (l-1..r-1).each do |j|
    limit[j] = [limit[j], h].min
  end
end

p limit.sum
