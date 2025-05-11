n = gets.to_i
a = gets.split.map(&:to_i)

total = a.sum

puts a.sum { |ai|
  total = total - ai
  ai * total
}
