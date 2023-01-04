# [0]にinjectで足し込んでいく
n = gets.to_i
str = gets.chomp.chars

puts str.inject([0]) {|a, str| a << a[-1] + (str == 'I' ? 1 : -1)}.max

# 初期値 ans = 0 を指定してmap使うとこんな感じ
n = gets.to_i
str = gets.chomp.chars

puts [ans = 0, str.map! { |s| ans += s == 'I' ? 1 : -1 }.max].max
