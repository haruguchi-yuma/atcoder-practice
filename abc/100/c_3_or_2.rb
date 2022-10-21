# 書く値が2で何回割り切れるかを調べる
n, *a = $<.read.split.map(&:to_i)

puts a.sum{ _1.to_s(2)[/0*$/].size}

# https://atcoder.jp/contests/abc100/tasks/abc100_c
