# 2つの数の中に1つでも偶数があれば成り立たない
puts gets.split.map(&:to_i).inject(:*).odd? ? 'Yes' : 'No'

# https://atcoder.jp/contests/abc109/tasks/abc109_a
