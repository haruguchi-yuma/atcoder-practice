# 2数の差が200の倍数である→200で割った余りが等しい
# 200で割った時の余りが等しいものの数を数えて組み合わせで個数を出す

N, *A = $<.read.split.map(&:to_i)

puts A.map { _1 % 200 }.tally.values.sum { _1 * (_1 - 1) / 2 }

# https://atcoder.jp/contests/abc200/tasks/abc200_c
