n, c = gets.chomp.split
n = n.to_i

h = {
  'W' => 0,
  'B' => 1,
  'R' => 2
}

a = gets.chomp.chars
res = a.inject(0) { |acc, c| acc + h[c] % 3 } % 3

puts h.invert[res] == c ? 'Yes' : 'No'
