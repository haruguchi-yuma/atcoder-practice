a, b = gets.split.map(&:to_i).sort

if a == b
  p 1
  exit
end

if (a - b).odd?
  puts 2
  exit
end

puts 3
