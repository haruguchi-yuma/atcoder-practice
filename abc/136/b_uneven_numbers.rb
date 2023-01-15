# 数値を1つずつ確かめる 全探索
puts (1..gets.to_i).count { _1.digits.size.odd? }

# こっちの方がちょっと早い
puts (1..gets.to_i).count { _1.to_s.size.odd? }
