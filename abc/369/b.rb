n = gets.to_i
left = []
right = []

n.times do
  a, s = gets.chomp.split
  s == 'L' ? left << a.to_i : right << a.to_i
end

p left.each_cons(2).sum { |a, b| (a-b).abs } + right.each_cons(2).sum { |a, b| (a-b).abs }
