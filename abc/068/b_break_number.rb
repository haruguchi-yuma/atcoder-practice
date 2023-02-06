# 全探索
n = gets.to_i
puts (1..n).max_by { _1.to_s(2)[/0*\z/].size }

#O(N)
n = gets.to_i
puts 1 << n.bit_length - 1
