n, m = gets.split.map(&:to_i)
ks = Array.new(m) { gets.split.map(&:to_i) }
p = gets.split.map(&:to_i)

ans = 0

(1<<n).times do |bit|
  ans += 1 if ks.each_with_index.all? { |(_, *s), i|
    s.map { bit[_1-1] }.sum & 1 == p[i]
  }
end

p ans

__END__
n, m = gets.split.map(&:to_i)
ks = Array.new(m) { gets.split.map(&:to_i) }
p = gets.split.map(&:to_i)
res = []
(1<<n).times do |bit|
  res << n.times.map { |i| bit[i] }
end

ans = 0

res.each do |ary|
  ans += 1 if ks.each_with_index.all? { |(k, *s), i|
    s.map { ary[_1-1] }.sum & 1 == p[i]
  }
end

p ans
