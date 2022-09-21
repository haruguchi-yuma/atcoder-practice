# 任意の数nを0として計算する
nums = Array.new(3) { gets.split.map(&:to_i) }
n = 0
a, b, c = nums[0].map { _1 - n }
x, y, z = nums.transpose[0].map { _1 - a}

puts [x, y, z].product([a, b, c]).map(&:sum) == nums.flatten ? 'Yes' : 'No'

# https://atcoder.jp/contests/abc088/tasks/abc088_c
