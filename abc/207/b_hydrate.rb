a, b, c, d = gets.split.map(&:to_i)

if c * d - b <= 0
  puts -1
  exit
end

puts (a + (c * d - b) - 1) / (c * d - b)


# xかいの操作後のボールの数(x >= 0)

# 水色: a + bx
# 赤色: cx

# (水色のボール数) <= (赤色のボールの数) * D

# よって
# a + bx <= cx * D
# a <= cDx - bx
# a <= (cD - b)x

# もしcD -b が0以下の数の場合　上の不等式はいつでも成り立たないことになる(a >= 0 なため)
# その時は -1を出力すればいい

# cD - b が　正の数の時
# x >= a / (cD - b)

# を計算すれば良いことになる。また cD - bがa を上回ると1未満になるため x は a以下であることがわかる
# ので aループしてシミュレーションするのも手

a, b, c, d = gets.split.map(&:to_i)
mizu = a
aka = 0
ans = -1

(0..a).each do |i|
  return puts i if mizu <= aka * d
  mizu += b
  aka += c
end

puts ans
