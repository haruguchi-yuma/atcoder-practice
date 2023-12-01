n, q = gets.split.map(&:to_i)
str = gets.chomp.chars

s = 0
res = [0] + (n-1).times.map { |i| s += (str[i] == str[i+1] ? 1 : 0) }

q.times do |i|
  l, r = gets.split.map(&:to_i)
  p res[r-1] - res[l-1]
end

