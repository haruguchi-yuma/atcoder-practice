case gets.split.map(&:to_i)
in [r, 1]
  puts (1600..2999) === r ? 'Yes' : 'No'
in [r, 2]
  puts (1200..2399) === r ? 'Yes' : 'No'
end
