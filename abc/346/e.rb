h, w, m = gets.split.map(&:to_i)

row = Array.new(h, false)
col = Array.new(w, false)
hash = Hash.new(0)
hash[0] = h*w

res = m.times.map do
  t, a, x = gets.split.map(&:to_i)
  [t, a-1, x]
end.reverse

res.each do |t, a, x|
  if t == 1
    next if row[a]
    row[a] = true
    hash[x] += w
    hash[0] -= w
    h -= 1
  else
    next if col[a]
    col[a] = true
    hash[x] += h
    hash[0] -= h
    w -= 1
  end

  break if row.all? || col.all?
  break if h == 0 || w == 0
end

ans = hash.select { |k, v| v > 0}.to_a.sort_by(&:first)
puts ans.size
puts ans.map { _1.join(' ') }
