n = gets.to_i
a = 1
ans = 0

while a * a * a <= n
  b = a
  while a * b * b <= n
    c = n / (a * b)
    ans += (n / (a * b)) - b + 1
    b += 1
  end
  a += 1
end

p ans
