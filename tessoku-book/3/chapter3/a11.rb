n, x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

l, r = 0, n-1
ans = 0
loop do
  mid = (l + r) / 2

  if x == a[mid]
    break ans = mid
  elsif x < a[mid]
    r = mid - 1
  else
    l = mid + 1
  end
end

p ans + 1
