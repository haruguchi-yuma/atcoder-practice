s = gets.chomp.chars
cs = %w(0 1).cycle # 0 と 1をひたすら回す
count = s.count { |c| c != cs.next }

# 101010...みたいな1始まりのものは計算で出す
puts [count, s.size - count].min
