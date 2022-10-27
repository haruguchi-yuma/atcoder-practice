# n * 3 人でグループを作るとき n, n + 2, n + 4 ... n + (n - 1) * 2
n, *a = $<.read.split.map(&:to_i)

cnt = 0
a = a.sort!

n.times do |i|
  cnt += a[n + i * 2]
end

puts cnt

# https://atcoder.jp/contests/agc012/tasks/agc012_a
