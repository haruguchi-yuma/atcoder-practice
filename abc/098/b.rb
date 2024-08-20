n=gets.to_i
s = gets.chomp.chars
p (1..n-1).map { |i| (s[..i]&s[i+1..]).size }.max
