# 開始位置をずらしながら異なる文字の文字数をカウントする
# 異なる文字の文字数が最も少ないものが答えになる

S, T = $<.read.chomp.split.map(&:chars)
ts = T.size
ss = S.size
result = []

(ss - ts + 1).times do |i|
  result << S[i..i+ts-1].zip(T).count { _1 != _2 }
end

p result.min

# 解き方のイメージ
# S = abcref
# T = cd

# 1回目
# a b c r e f
# c d
# ^^^
# 比較（aとc, bとdが異なる => 2)

# 2回目
# a b c r e f
#   c d
#   ^^^
# 比較（bとc, cとdが異なる => 2)

# 2回目
# a b c r e f
#     c d
#     ^^^
# 比較（rとdが異なる => 1)

# と最後まで検索をかけていく

