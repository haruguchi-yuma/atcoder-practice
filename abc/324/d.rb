n = gets.to_i
s = gets.to_i.digits.sort
s.delete(0)

ans = 0
(0..).each do |x|
  sqrt = x*x
  t = sqrt.digits.sort

  break if t.size > n

  t.delete(0)

  ans += 1 if t == s
end

p ans
