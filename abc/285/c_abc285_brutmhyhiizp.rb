# 26進数に変換して計算する
strs = gets.chomp.chars
a2z = [*('A'..'Z')]
p strs.reverse_each.with_index.sum { (a2z.index(_1) + 1) * 26 ** _2 }
