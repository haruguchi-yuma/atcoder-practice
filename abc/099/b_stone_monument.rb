# X 番目の塔の高さ (1 + 2 + ... + X)
# X - 1 番目の塔の高さ (1 + 2 + ... + X - 1)
# つまり,　X番目とX - 1番目の塔の高さの差 (1 + 2 + ... + X) - (1 + 2 + ... + X - 1) = X
# 問題文から X = b - a
# (1 + 2 + ... + X) = X(X-1)/ 2 ← 和の公式
# Xに b - aを代入して
# (b - a) * (b - a + 1) / 2 - b

a, b = gets.split.map(&:to_i)
puts (b - a) * (b - a + 1) / 2 - b


# 塔のリストを作成しておき、左から算出する
a, b = gets.split.map(&:to_i)
i = 0
tou = Array.new(999) { |n| i += n + 1 ;  i}

puts tou[b-a-1] - b
