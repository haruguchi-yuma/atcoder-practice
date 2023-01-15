#　ボーナス時はc[a[i]-1]を取ればいい -1は0インデックスのため
n = gets.to_i
a, b, c = $<.map { _1.split.map(&:to_i) }
s = 0

s += b.sum

n.times do |i|
  s += c[a[i]-1] if a[i] + 1 == a[i+1]
end

puts s
