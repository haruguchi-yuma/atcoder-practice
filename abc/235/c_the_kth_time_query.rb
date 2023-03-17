# データ構造をハッシュにする
# 各文字ごとにインデックスを参照できるようにする
n, q = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

hash = Hash.new { |h, k| h[k] = [] }
a.each_with_index { |s, i| hash[s] << i + 1 }

q.times do |i|
  x, k = gets.split.map(&:to_i)
  puts hash[x][k-1] || -1
end
