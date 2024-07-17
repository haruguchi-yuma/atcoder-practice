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
