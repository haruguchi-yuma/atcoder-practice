n = gets.to_i
h = Hash.new(0)
ab = Array.new(n) { gets.split.map(&:to_i) }

ab.each do |a, b|
  h[a] += 1
  h[a+b] -= 1
end

pre = -1
now = 0
ans = Array.new(n+1, 0)

h.sort_by(&:first).each do |t, x|
  ans[now] += t-pre # now人である日数が (t - pre) 日
  now += x # now の更新
  pre = t # preの更新
end

puts ans[1..].join(' ')
