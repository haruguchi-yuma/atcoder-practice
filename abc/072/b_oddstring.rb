# 愚直だけど、遅い
c = gets.chomp.chars
str = ''

0.step(c.size-1, 2) { str += c[_1] }
puts str

# select　奇数番目のカウンタを持っておく　速い
i = 0
puts gets.chomp.chars.select{ i += 1 ; i.odd? } * ''
