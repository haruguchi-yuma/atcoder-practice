require 'rbtree'

n, k = gets.split.map(&:to_i)
pi = gets.split.map(&:to_i)

hash = {}
pi.each_with_index { |n, i| hash[n] = i  }

rbt = RBTree.new
(1..k).each { |i| rbt[hash[i]] = 0 }
ans = rbt.last[0] - rbt.first[0]
(1..n-k).each do |i|
  rbt.delete(hash[i])
  rbt[hash[k+i]] = 0
  d = rbt.last[0] - rbt.first[0]
  ans = d if d < ans
end

puts ans
