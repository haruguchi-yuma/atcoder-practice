k, g, m = gets.split.map(&:to_i)

glass = 0
mag = 0

k.times do |i|
  if glass == g
    glass = 0
  elsif mag == 0
    mag = m
  else
    x = [g - glass, mag].min
    mag -= x
    glass += x
  end
end

puts [glass, mag].join(' ')
