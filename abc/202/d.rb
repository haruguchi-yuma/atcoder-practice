a, b, k = gets.split.map(&:to_i)

ans = ''

c = Array.new(61) { [0] * 61 }
c[0][0] = 1
60.times do |i|
  (i+1).times do |j|
    c[i+1][j] += c[i][j]
    c[i+1][j+1] += c[i][j]
  end
end

while a+b > 0
  x = 0
  x = c[a+b-1][a-1] if a >= 1

  if k <= x
    ans += 'a'
    a -= 1
  else
    ans += 'b'
    b -= 1
    k -= x
  end
end

puts ans
