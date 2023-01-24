# 1が偶数番目ならTakahashiの負け 奇数番目なら Aokiの負け（0インデックス)
n = gets.to_i
puts gets.index('1').even? ? 'Takahashi' : 'Aoki'
