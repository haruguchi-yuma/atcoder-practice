n = gets.to_i - 1
p n.to_s(5).to_i * 2


__END__
res = [0, 2, 4, 6, 8]

ans = []

loop do
  r = n % 5
  ans << res[r].to_s
  n /= 5
  break if n == 0
end

p (ans.reverse.join.to_i - 2).digits.map { _1.odd? ? _1 - 1 : _1 }.reverse.join.to_i


