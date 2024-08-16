n = gets.to_i

ans = 100000

(1..n).each do |i|
  j = n / i
  res = 0
  res += (i-j).abs
  res += n % i
  ans = [ans, res].min
end

p ans
