# x ± k - 1
k, x = gets.split.map(&:to_i)
puts [*(x-k+1)..(x+k-1)] * ' '
