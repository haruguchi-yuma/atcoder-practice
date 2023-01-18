# 全部確かめる
str = gets.chomp
a, b = str[0, str.size/2], str[((str.size/2) + 1)..]
puts a == b.reverse && a == a.reverse && b == b.reverse ? 'Yes' : 'No'
