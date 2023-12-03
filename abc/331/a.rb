mm, dd = gets.split.map(&:to_i)
y, m , d = gets.split.map(&:to_i)

if d +1 > dd
  d = 1
  m += 1
else
  d += 1
end

if m > mm
  m = 1
  y += 1
end

puts [y, m, d].join(' ')
