n = gets.to_i
sum = 0

n.times do
  x, u = gets.chomp.split
  x = x.to_f
  sum += u == 'BTC' ? x * 380_000.0 : x
end

puts sum
