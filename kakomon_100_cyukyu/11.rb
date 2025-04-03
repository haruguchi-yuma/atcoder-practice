n, m = gets.split.map(&:to_i)
ks = Array.new(m) { gets.split.map(&:to_i) }
pe = gets.split.map(&:to_i)

p [0, 1].repeated_permutation(n).count { |ary|
  ks.each_with_index.all? { |(k, *s), i| (s.count {|j| ary[j-1] == 1 } & 1) ==  pe[i] }
}
