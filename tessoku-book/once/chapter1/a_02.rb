n, x, *a = $<.read.split.map(&:to_i)

puts a.to_set.include?(x) ? 'Yes' : 'No'
