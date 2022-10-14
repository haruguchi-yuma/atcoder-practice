# pt, px, py は前回の時刻及び座標
# 到達不可能な条件を並べ、それ以外は到達可能と見る
# 偶奇性に着目する
N = gets.to_i

flag = true
pt, px, py = 0, 0, 0

N.times do
  t, x, y = gets.split.map(&:to_i)
  tt, xx, yy = t - pt, (x - px).abs, (y - py).abs

  break flag = false if tt < xx + yy
  break flag = false if (tt + xx + yy).odd?
  pt, px, py = tt, xx, yy
end

puts flag ? 'Yes' : 'No'

# https://atcoder.jp/contests/abc086/tasks/arc089_a
