# 数え上げしてから

nums = gets.split.map(&:to_i).tally
puts nums.values.sort == [2, 3] ? 'Yes' : 'No'

# https://atcoder.jp/contests/abc263/tasks/abc263_a
