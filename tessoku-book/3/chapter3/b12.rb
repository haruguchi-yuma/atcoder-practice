n = gets.to_i

l, r = 1, 100000
while r - l >= 0.001
  x = (l + r) / 2.0

  (x ** 3) + x > n ? r = x : l = x
end

p l

