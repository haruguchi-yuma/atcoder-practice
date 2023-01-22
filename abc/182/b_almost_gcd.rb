# 2から数列の最大値まで全部割って確かめる
n, *nums = $<.read.split.map(&:to_i)

puts (2..nums.max).max_by{|a| nums.count{|b| b % a == 0 }}
