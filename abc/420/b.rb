n, m = gets.split.map(&:to_i)
ans = Hash.new(0)
s = Array.new(n) { gets.chomp.chars.map(&:to_i) }.transpose

s.each do |ss|
  total = ss.sum
  if total == n || total == 0
    n.times { |i| ans[i] += 1 }
    next
  end

  target = total <= (n / 2) ? 1 : 0
  ss.each_with_index do |n, i|
    ans[i] += 1 if n == target
  end
end

max = ans.values.max
puts ans.filter_map { |k, v| k + 1 if v == max }.sort.join(' ')


