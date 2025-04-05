r, c = gets.split.map(&:to_i)
a = Array.new(r) { gets.split.map(&:to_i) }

ans = []
(1<<r).times do |bit|
  res = r.times.map do |i|
    bit[i] == 1 ? a[i].map { _1 ^ 1 } : a[i]
  end

  ans << res.transpose.sum { |col| x = col.sum; [x, r - x].max }
end

p ans.max
