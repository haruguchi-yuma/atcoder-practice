n = gets.to_i

puts [*0..9].reverse_each.map { |i|
  wari = 1 << i
  (n / wari) % 2
}.join
