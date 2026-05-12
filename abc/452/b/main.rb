h, w = gets.split.map(&:to_i)

h.times do |i|
  puts w
    .times
    .map { |j| i == 0 || j == 0 || i == h-1 || j == w-1 ? '#' : '.' }
    .join
end
