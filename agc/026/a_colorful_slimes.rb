# 例えば 隣り合う同色のスライムがnこある時、　n / 2 (切り捨て)回魔法を使う必要がある
N, *A = $<.read.split.map(&:to_i)

puts A.chunk_while{ _1 == _2 }.sum { _1.size / 2 }

# https://atcoder.jp/contests/agc026/tasks/agc026_a
