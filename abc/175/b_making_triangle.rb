# 三角形の存在条件は3辺 a, b, c があって |a - b| < c < a + b なのでその条件をうまく組み込めば良い。
# 3辺とも異なる長さであるというのはary.uniq.sizeをしたときに長さが変化しているかどうかで判定

N, *L = $<.read.split.map(&:to_i)
L.combination(3).count do |l|
  i, j, k = l
  l.uniq.size == 3 && (i - j).abs < k && k < i + j
end.then{ p _1 }

# https://atcoder.jp/contests/abc175/tasks/abc175_b
