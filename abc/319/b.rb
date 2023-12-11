n = gets.to_i
j = []
(1..Integer.sqrt(n)).each do |num|
  if n % num == 0
    j << num if num < 10
    j << n / num if num ** 2 != n && n / num < 10
  end
end

j.sort!

ans = []
(n+1).times do |i|
  res = j.filter_map { |num| num if i % (n/num) == 0}

  ans << (res.empty? ? '-' : res.min)
end

puts ans.join
