n, k = gets.split.map(&:to_i)
t = Array.new(n) { gets.split.map(&:to_i) }

puts [*1...n].permutation.count {|a|
  a << (c = 0)
  a.sum{ t[c][c=_1] } == k
}
