# 問題文の通り実装
n = gets.to_i
fn = n.digits.sum

puts n % fn == 0  ? 'Yes' : 'No'
