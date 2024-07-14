a, b, c, x, y = gets.split.map(&:to_i)
ans = Float::INFINITY
# abピザを全探索する
(0..[x,y].max*2).each do |ab|
  sum = ab * c
  xx = x - ab / 2
  yy = y - ab / 2

  sum += xx * a if xx > 0
  sum += yy * b if yy > 0
  ans = [ans, sum].min
end

p ans

__END__
a, b, c, x, y = gets.split.map(&:to_i)
res = []
if a + b > c * 2
  # ABピザをx, yの最小値 * 2 枚買う場合
  res << ([x, y].min * 2 * c) + (x > y ? ((x-y) * a) : (y-x) * b)

  # ABピザをx, yの最大値 * 2 枚買う場合
  res << [x, y].max * 2 * c
else
  res << a * x + b * y
end

p res.min
__END__

