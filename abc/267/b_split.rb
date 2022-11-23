# 列ごとに全て倒れている列を0　1本でも残っている列を1としている
# 列0を作り0を入れて 01が2つあればsplitという判定 L.13の処理

pins = gets.chars.map(&:to_i)

col = [[6], [3], [1, 7], [0, 4], [2, 8], [5], [9]]

if pins[0] == 1
  puts 'No'
  exit
end

result = '0' + col.map {_1.all? { |n| pins[n] == 0 } ? '0' : '1' }.join
puts result.scan(/01/).size >= 2 ? 'Yes' : 'No'

# https://atcoder.jp/contests/abc267/tasks/abc267_b
