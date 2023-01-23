# 0以下にならないことに注意
n, x = gets.split.map(&:to_i)
score = x

gets.chomp.chars.each { _1 == 'x' ? score = [score - 1, 0].max : score += 1 }

puts score
