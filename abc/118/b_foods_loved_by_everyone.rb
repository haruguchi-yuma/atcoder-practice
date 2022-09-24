# tallyで数え上げてNと同じ数であるものの個数を数えている
N, M = gets.split.map(&:to_i)

puts Array.new(N) { _, *a = gets.split.map(&:to_i); a}.flatten.tally.count { _2 == N }

# https://atcoder.jp/contests/abc118/tasks/abc118_b
