m = gets.to_i

case m
when ...100
  puts '00'
when 100..5000
  puts (m/1000.0 * 10).to_i.to_s.rjust(2, ?0)
when 6000..30000
  puts m/1000 + 50
when 35000..70000
  puts (m/1000 - 30) / 5 + 80
when 70000..100000
  puts 89
end
