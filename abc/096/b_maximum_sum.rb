# 2倍するのは最初の配列からみて最大値の数
# k回2倍するので 2 ** kを掛ける
abc = gets.split.map(&:to_i)
k = gets.to_i

max = abc.max
abc[abc.index(max)] = max * (2 ** k)

puts abc.sum


# これでもいい。一般化したもの
abc = gets.split.map(&:to_i)
k = gets.to_i

puts abc.sum + abc.max * ((2 ** k) - 1) # abc.sumで最大値足してる分一回分引いてる
