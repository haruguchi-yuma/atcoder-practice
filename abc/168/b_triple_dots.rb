# 文字数で条件分岐
k = gets.to_i
str = gets.chomp
puts str.size > k ? str[0, k] + '...' : str
