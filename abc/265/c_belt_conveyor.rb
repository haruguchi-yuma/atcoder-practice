h, w = gets.split.map(&:to_i)

g = Array.new(h) { gets.chomp.chars }

i = j = 0
hash = {}
hash[[i,j]] = true

loop do
  case g[i][j]
  when 'U'
    break if i == 0
    i -= 1
  when 'D'
    break if i == h - 1
    i += 1
  when 'L'
    break if j == 0
    j -= 1
  when 'R'
    break if j == w - 1
    j += 1
  end
  return puts -1 if hash[[i,j]]
  hash[[i,j]] = true
end

puts [i+1 , j+1] * ' '
