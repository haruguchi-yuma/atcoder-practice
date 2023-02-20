# 1 から nの平方根(整数)までを全探索
n = gets.to_i
ans = []

(1..Integer.sqrt(n)).each do |i|
  if n % i == 0
    ans << i
    ans << n / i if n / i != i
  end
end

puts ans.sort!
