# 定義に従って漸化式を計算する
l0, l1 = 2, 1
gets.to_i.times { l0, l1 = l1, l0 + l1 }
puts l0
