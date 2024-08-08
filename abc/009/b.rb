n = gets.to_i
p Array.new(n) { gets.to_i }.uniq.sort[-2]
