n = gets.to_i
x = n
ans = []

loop do
  ans << x
  break if x == 0
  x = (x - 1) & n
end

puts ans.reverse


# やり方2
n = gets.to_i
ary = [0]

n.to_s(2).size.times do |i|
  bit = 1 << i
  ary += ary.map{ _1 + bit } if n[i] == 1
end

puts ary

