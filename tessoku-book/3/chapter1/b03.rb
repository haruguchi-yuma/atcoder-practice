n, *a = $<.read.split.map(&:to_i)

puts a.combination(3).any? { it.sum == 1000 } ? 'Yes' : 'No'
