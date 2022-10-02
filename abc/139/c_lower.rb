# 単調減少している区間を計算してから算出
N, *H = $<.read.split.map(&:to_i)

puts H.chunk_while(&:>=).map(&:size).max - 1

# https://atcoder.jp/contests/abc139/tasks/abc139_c
