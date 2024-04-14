s = gets.chomp.chars

t = s.tally
ans = []
t.each do |k, v|
  ans[v] = 0 if ans[v].nil?
  ans[v] += 1
end

puts ans.compact.all? { _1 == 0 || _1 == 2 } ? 'Yes' : 'No'
