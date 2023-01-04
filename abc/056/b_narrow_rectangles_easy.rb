# 連結判定  |a - b| <= w なら 連結
#
# a <= b の時　　a + w >= b => b - a <= w なら連結
# a > b の時　 b + w >= a => a - b <= w なら連結
# よって |a - b| <= w なら連結
# b + w < a などを式変形していったらわかる

w, a, b = gets.split.map(&:to_i)

puts (a - b).abs > w ? (a - b).abs - w : 0


# わからなかったら a <= b, a > b で個別に場合分け
w, a, b = gets.split.map(&:to_i)

rec1 = (a..a+w)
rec2 = (b..b+w)

ans = a < b ? rec2.min - rec1.max : rec1.min - rec2.max
puts [0, ans].max
