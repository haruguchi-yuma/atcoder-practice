# もう少し綺麗に書きたかった
# 3パターンを検討する
# 1.全部 ピザA もしくは ピザB
# 2.　一番少ないピザの分だけピザCを買って残りは多い方のピザを買う
# 3. 一番多いぴざの分だけピザCを買う (余るけど気にしない)

A, B, C, X, Y = gets.split.map(&:to_i)
prices = []

prices << A * X + B * Y
prices << [X, Y].max * 2 * C

xy =  X > Y ? (X - Y) * A : (X - Y).abs * B 
prices << ([X, Y].min * 2 * C) + xy

p prices.min

# https://atcoder.jp/contests/abc095/tasks/arc096_a
