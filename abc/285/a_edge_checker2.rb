# 直接繋がっている条件は b / 2 したものがaと等しいかどうか(切り捨てを考慮してる)
a, b = gets.split.map(&:to_i)

puts b / 2 == a ? 'Yes' : 'No'
