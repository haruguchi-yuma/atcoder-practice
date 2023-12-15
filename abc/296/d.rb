n, m = gets.split.map(&:to_i)

ans = 10 ** 18

a = 0
while a * a - a < m
  a += 1
  b = (m+a-1)/a

  ans = [ans, a*b].min if a <= n && b <= n
end

p ans == 10**18 ? -1 : ans
