# 消し終わりは必ず　赤だけ残る or 青だけ残る　or 何も残らない　となる
# つまり、少ない方のキューブは全部消えるので　少ない方のキューブの数 * 2が消えるキューブの個数となる
str = gets.chomp

red = str.count('0')
blue = str.size - red

puts [red, blue].min * 2
