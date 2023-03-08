# 最大値の探し方
# sortする
# n1とn2をつくり初期値は0
# n1に大きい数を代入する
# n2に次に大きい数を代入する
# n1 と n2の小さい方の末尾に次に大き数を連結する 2 と 1 → 21
# 以下繰り返す

n = gets.to_i.digits.sort

n1 = n2 = 0

while d = n.pop
  n1 < n2 ? n1 = n1 * 10 + d : n2 = n2 * 10 + d
end

p n1 * n2
