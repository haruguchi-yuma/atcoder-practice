# a[i+1] = 2 * a[i]として考えると良い
x, y = gets.split.map(&:to_i)
ans = 0

loop do
  ans +=1
  x *= 2
  break if x > y
end

puts ans
