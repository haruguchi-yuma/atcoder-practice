# 何種類あるか数えたらいい
_, *s = $<.read.split.map(&:chomp)

puts s.uniq.size

# https://atcoder.jp/contests/abc164/tasks/abc164_c
