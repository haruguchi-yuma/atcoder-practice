n, q = gets.split.map(&:to_i)
a = [*1..n]

reverse = false

q.times do
  s, x, y = gets.split.map(&:to_i)

  if s == 1
    reverse ? a[-1 * x] = y : a[x-1] = y
  elsif s == 2
    reverse = !reverse
  else
    puts reverse ? a[-1 * x] : a[x-1]
  end
end
