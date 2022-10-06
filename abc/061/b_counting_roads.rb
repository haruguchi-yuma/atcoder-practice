# Rubyっぽい解き方
N, M = gets.split.map(&:to_i)
a = Array.new(M) { gets.split.map(&:to_i) }

N.times do |i|
  puts a.count { _1.include?(i+1) }
end

# ちゃんと2じゅう配列に都市がどこの都市と繋がっているかの情報を格納している

N, M = gets.split.map(&:to_i)
g = Array.new(N) { [] }

M.times do |i|
  u, v = gets.split.map{ _1.to_i - 1 }
  g[v] << u
  g[u] << v
end

puts g.map(&:size)

# https://atcoder.jp/contests/abc061/tasks/abc061_b
