# 実際に答えを書いてみて周期性に気づく

A, B, C, K = gets.split.map(&:to_i)

puts K.even? ? A - B : B - A

# https://atcoder.jp/contests/agc024/tasks/agc024_a
