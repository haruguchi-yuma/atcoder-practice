h, w = gets.split.map(&:to_i)
s = Array.new(h) { gets.split.map(&:to_i) }

ans = 0
(1<<h).times do |bit|
  t = s.dup
  h.times { |i| t[i] = t[i].map { bit[i] == 1 ? 1 - _1 : _1 } }
  cnt = t.transpose.sum { |col| [z = col.count(0), h - z].max }
  ans = [ans, cnt].max
end

p ans

__END__
# r が極端に小さいのでr でビット全探索する
r, c = gets.split.map(&:to_i)
a = Array.new(r) { gets.split.map(&:to_i) }

ans = []

(1<<r).times do |bit|
  res = r.times.map do |i|
    bit[i] == 1 ? a[i].map { _1 ^ 1 } : a[i]
  end

  ans << res.transpose.sum { x=_1.sum; [x, r-x].max }
end

p ans.max
