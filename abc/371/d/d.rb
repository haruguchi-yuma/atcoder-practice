n = gets.to_i
xs = gets.split.map(&:to_i)
ps = gets.split.map(&:to_i)
i = 0
s = [0] + ps.map { i += it }

q = gets.to_i
q.times do
  l, r = gets.split.map(&:to_i)
  left = xs.bsearch_index { it >= l }

  if left.nil? || xs[left] > r
    puts 0
    next
  end

  right_gt = xs.bsearch_index { it > r }
  right = right_gt ? right_gt - 1 : n - 1

  puts s[right+1] - s[left]
end
__END__
4
1 3 5 7
1 2 3 4
4
1 1
2 6
0 10
2 2

[0, 1, 3, 6, 10]
