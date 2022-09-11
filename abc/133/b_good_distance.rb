# 各座標から2つの組みを選ぶのでcombinationを使う。（おそいかも）
# 5.0はinteger?メソッドだとfalseになるので == メソッドでの比較で整数かどうかの判定をしている。なんか便利なメソッドが欲しいところ

N, D = gets.split.map(&:to_i)
X = Array.new(N) { gets.split.map(&:to_i) }

X.combination(2).count do |x, y|
  n = Math.sqrt(x.zip(y).sum { (_1 - _2) ** 2 })
  n.to_i == n
end.then { puts _1 }

# 整数判定に%を使う方法もある
n % 1 == 0
