l, r = gets.split.map(&:to_i)

case [l, r]
in [1, 1] | [0, 0]
  puts 'Invalid'
in [1, 0]
  puts 'Yes'
in [0, 1]
  puts 'No'
end
