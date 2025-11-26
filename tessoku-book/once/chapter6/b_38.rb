n = gets.to_i
s = gets.chomp.chars
r_to = Array.new(n, 1)
l_to = Array.new(n, 1)

(n-1).times do |i|
  r_to[i+1] = r_to[i] + 1 if s[i] == 'A'
end

(n-1).times do |i|
  l_to[~(i+1)] = l_to[~i] + 1 if s[~i] == 'B'
end

p n.times.sum { |i| [r_to[i], l_to[i]].max }
