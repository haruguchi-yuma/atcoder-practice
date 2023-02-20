# 傾きを比較する
n, *xy = $<.map { _1.chomp.split.map(&:to_f) }

xy.combination(3).any? do |(x1, y1), (x2, y2), (x3, y3)|
  # (x3, y3)の点を原点に合わせる
  x1 -= x3
  x2 -= x3
  y1 -= y3
  y2 -= y3

  return puts 'Yes' if x1 * y2 == x2 * y1 #傾きの比較だが、分母を払っておくと楽
end

puts 'No'
