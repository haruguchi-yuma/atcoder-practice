n, d = gets.split.map(&:to_i)
lr = Array.new(n) { gets.split.map(&:to_i) }.sort_by(&:last)
ans = 0
x = -1

lr.each do |(l, r)|
  next if (l <= x)
  ans += 1
  x = r + d - 1
end

p ans
__END__
3 3
1 2
4 7
5 9
