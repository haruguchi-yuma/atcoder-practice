n, *a = $<.read.split.map(&:to_i)

res1 =[]
j = 0
n.times do |i|
  j = [j+1, a[i]].min
  res1 << j
end

res2 = []
j = 0
a = a.reverse
n.times do |i|
  j = [j+1, a[i]].min
  res2 << j
end

res2.reverse!
p n.times.map { |i| [res1[i], res2[i]].min }.max
