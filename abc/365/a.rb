require 'date'
p Date.new(gets.to_i).leap? ? 366 : 365
__END__
y = gets.to_i

if y % 400 == 0
  p 366
elsif y % 100 == 0
  p 365
elsif y % 4 == 0
  p 366
else
  p 365
end
