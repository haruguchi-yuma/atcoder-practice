# n 個のものから2個選ぶ方法は n * (n -1) / 2通り
# tallyで仲間分けしてから求めると計算量が減る

n, *s = $<.read.split.map { _1.chars.sort.join }
puts s.tally.sum { _2 * ( _2 - 1) / 2 }

# https://atcoder.jp/contests/abc137/tasks/abc137_c
