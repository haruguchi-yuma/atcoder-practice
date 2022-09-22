# %記法を使って各曜日を配列に
# 土曜から月曜日に並べることによってインデックスをそのまま使うことができる
puts %w(Saturday Friday Thursday Wednesday Tuesday Monday).index(gets.chomp)

# 別解
# 各曜日の2文字目がユニークなので2文字目で判定する
puts 'arheuo'.index(gets[1])

# https://atcoder.jp/contests/abc267/tasks/abc267_a
