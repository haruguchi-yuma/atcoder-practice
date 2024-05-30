n, *a = $<.read.split.map(&:to_i)
m = a.max
d = a.tally
d.default = 0

ans = 0
(1..m).each do |aa|
  (1..m/aa).each do |bb|
    cc = aa * bb
    ans += d[aa] * d[bb] * d[cc]
  end
end

p ans


__END__
# uptoバージョン
n, *a = $<.read.split.map(&:to_i)
max = a.max
h = a.tally
h.default = 0

ans = 0
1.upto(max) do |x|
  1.upto(max/x) do |y|
    z = x * y
    ans += h[x] * h[y] * h[z]
  end
end

p ans
