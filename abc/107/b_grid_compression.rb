# 横→削除→縦→削除という順番で処理していく

H, W = gets.split.map(&:to_i)
a = Array.new(H) { gets.chomp.chars }

a.delete_if { _1.all?('.') }
a = a[0].zip(*a[1..]).delete_if { _1.all?('.') } # 転地して削除

# 元に戻して出力
puts a[0].zip(*a[1..]).map(&:join)

# https://atcoder.jp/contests/abc107/tasks/abc107_b
