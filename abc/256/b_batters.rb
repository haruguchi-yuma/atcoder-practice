n, *a = $<.read.split.map(&:to_i)
ans = 0

n.times do |i|
  ans += 1 if a[i,n].sum >= 4
end

puts ans
