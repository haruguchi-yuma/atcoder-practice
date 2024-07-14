a = gets.split.map(&:to_i)
c = gets.chomp

if c == 'Blue'
  p a[0..1].min
elsif c == 'Red'
  p a[1..].min
else
  p [a[0], a[2]].min
end
