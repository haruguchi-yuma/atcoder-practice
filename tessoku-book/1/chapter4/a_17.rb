n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)

dp = Array.new(n+1, 0)
dp[2] = a[0]

(3..n).each do |v|
  dp[v] = [
    dp[v-1] + a[v-2],
    dp[v-2] + b[v-3]
  ].min
end


place = n

ans =[]
loop do
  ans << place
  break if place == 1
  dp[place] == dp[place-1] + a[place-2] ? place -= 1 : place -= 2
end

puts ans.size
puts ans.reverse * ' '


