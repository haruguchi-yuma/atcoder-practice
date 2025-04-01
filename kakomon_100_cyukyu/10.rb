n = gets.to_i
a = gets.split.map(&:to_i)
_ = gets.to_i
q = gets.split.map(&:to_i)

ans = {}
(1<<n).times do |bit|
  sum = n.times.sum { |i| bit[i] == 1 ? a[i] : 0 }
  ans[sum] = true
end

puts q.map { |m| ans[m] ? 'yes' : 'no' }
