# BFSで解く
require 'set'
n = gets.to_i
to = Hash.new{ |h, k| h[k] = [] }

n.times do |i|
  a, b = gets.split.map(&:to_i)
  to[a] << b
  to[b] << a
end

reach = Set[1]
queue = [1]

while !queue.empty?
  v = queue.shift
  to[v].each { |i| queue << i if reach.add?(i) }
end

puts reach.max

# https://atcoder.jp/contests/abc277/tasks/abc277_c
