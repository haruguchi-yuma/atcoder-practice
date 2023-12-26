n, L, R = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
ans = R * n
sum_a = sum_b = max_b = 0

n.times do |r|
  sum_a += a[r]
  sum_b += a[r] - L
  max_b = [max_b, sum_b].max
  now = sum_a - max_b + (R  * (n-r-1))
  ans = [ans, now].min
end

p ans


__END__
5 4 3
5 5 0 6 3

