n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

puts a.sum <= m ? "Yes" : "No"
