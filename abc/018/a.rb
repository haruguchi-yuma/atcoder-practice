a = Array.new(3) { gets.to_i }
score = a.sort.reverse

a.each do |num|
  puts score.index(num) + 1
end
