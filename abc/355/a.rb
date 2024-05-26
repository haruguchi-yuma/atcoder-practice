a = [1, 2, 3] - gets.split.map(&:to_i)
p a.size == 1 ? a[0] : -1
__END__
XOR使って解ける
1 ^ 2 = 3
1 ^ 3 = 2
2 ^ 3 = 1

ans = gets.split.map(&:to_i).inject(:^)
p ans == 0 ? -1 : ans
