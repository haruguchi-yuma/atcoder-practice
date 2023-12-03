n, *a = $<.read.split.map(&:to_i)

sorted_a =  a.sort
i = 0
s = [0] + sorted_a.map { i += _1 }

ans = []
n.times do |i|
  val = a[i]
  idx = sorted_a.bsearch_index { _1 > val} || n
  ans << s[n] - s[idx]
end

puts ans.join(' ')
