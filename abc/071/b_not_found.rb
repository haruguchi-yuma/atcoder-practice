# 配列にして差集合とる
puts ([*'a'..'z'] - gets.chomp.chars)[0] || 'None'
