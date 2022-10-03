# 要素数だけ全探索する
# それぞれの要素に対して今アクティブな区間がいくつあるか計算。
# 増やした分はansに加算

N, *H = $<.read.split.map(&:to_i)
ans = 0
active = 0

N.times do |i|
  ans+= H[i] - active if active < H[i] #activeな区間のな区間の本数が足りなければ増やす
  active = H[i] # activeな区間の更新
end

puts ans

# https://atcoder.jp/contests/abc116/tasks/abc116_c
