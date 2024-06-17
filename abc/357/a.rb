n, m = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)

ans = 0
h.each do
  if _1 <= m
    m -= _1
    ans += 1
  else
    break
  end
end

p ans
