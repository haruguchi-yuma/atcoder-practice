# sort_byで市名の辞書順とスコアの降順にする
n = gets.to_i
r = Array.new(n) { |i| [i+1, *gets.split] }
puts r.sort_by { [_2, _3.to_i * -1] }.map(&:first)
