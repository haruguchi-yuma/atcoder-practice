n, *a = $<.read.split.map(&:to_i)

puts (a.combination(3).any? do |a, b, c|
  a + b + c === 1000
end) ? 'Yes' : 'No'


