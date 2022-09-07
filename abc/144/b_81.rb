# 全探索
n = gets.to_i
flag = false

(1..9).each do |a|
  (1..9).each do |b|
    break flag = true if a * b == n
  end
end

puts flag ? 'Yes' : 'No'


# 九九表を作ってその中にあるかどうか調べる
puts [*1..9].product([*1..9]).map { _1 * _2 }.include?(gets.to_i) ? 'Yes' : 'No'

# https://atcoder.jp/contests/abc144/tasks/abc144_b
