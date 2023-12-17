s1, s2 = gets.chomp.chars
t1, t2 = gets.chomp.chars


table = {
  ['A', 'B'] => 1,
  ['A', 'C'] => 2,
  ['A', 'D'] => 2,
  ['A', 'E'] => 1,
  ['B', 'C'] => 1,
  ['B', 'D'] => 2,
  ['B', 'E'] => 2,
  ['C', 'D'] => 1,
  ['C', 'E'] => 2,
}

puts table[[s1, s2].sort] == table[[t1, t2].sort] ? 'Yes' : 'No'
