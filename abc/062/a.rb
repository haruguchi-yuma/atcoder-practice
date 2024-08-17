puts gets.include?("2") ? "No" : "Yes"
__END__
ary = [
  [1, 3,5,7,8,10, 12],
  [4, 6, 9, 11],
  [2]
]

a = gets.split.map(&:to_i)
puts ary.any? { (a-_1).empty? } ? 'Yes' : 'No'
