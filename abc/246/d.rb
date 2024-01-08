n = gets.to_i
m = 10**6
range = [*0..m]
ans = []

range.each do |a|
  break if a > n
  b = range.bsearch { |b| (a + b) * (a*a + b*b) >= n }

  ans << (a + b) * (a*a + b*b)
end

p ans.min
