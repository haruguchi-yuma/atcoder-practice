# countメソッドで奇数をカウント
n = gets.to_i

n.times { gets; puts gets.split.map(&:to_i).count(&:odd?) }
