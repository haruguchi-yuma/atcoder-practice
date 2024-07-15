n = gets.to_i
ab = Array.new(n) { gets.split.map(&:to_i) }
a, b = ab.transpose

mid_a = a.sort[n/2]
mid_b = b.sort[n/2]

p a.sum { (_1 - mid_a).abs } + b.sum { (_1 - mid_b).abs } + ab.sum { |a, b| (a - b).abs }



__END__
入口の座標 s 出口の座標 t とする。
(s <= t) ← これは入口と出口は入れ替えても移動時間が変わらないので考えやすいために制約をつける。
最短経路 s → ai → bi → t

