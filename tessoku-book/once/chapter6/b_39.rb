n, d = gets.split.map(&:to_i)
x, y = Array.new(n) { gets.split.map(&:to_i) }.transpose
used = Array.new(n, false)
ans = 0

d.times do |i|
  max_val = 0
  max_id = -1

  n.times do |j|
    next if used[j]
    if max_val < y[j] && x[j] - 1 <= i
      max_val = y[j]
      max_id = j
    end
  end

  if max_id != -1
    ans += max_val
    used[max_id] = true
  end
end

p ans
