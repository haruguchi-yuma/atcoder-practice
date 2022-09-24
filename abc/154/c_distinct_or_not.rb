# uniqした後とuniqする前のサイズを比較
_, *a = $<.read.split.map(&:to_i)

puts a.size == a.uniq.size ? 'YES' : 'NO'

# https://atcoder.jp/contests/abc154/tasks/abc154_c
