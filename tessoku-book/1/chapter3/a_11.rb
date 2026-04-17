n, x, *a = $<.read.split.map(&:to_i)
ans = 0

l = 0
r = n - 1

while r >= l
  mid = (l + r) / 2
  l = mid + 1 if a[mid] < x
  r = mid - 1 if a[mid] > x
  break ans = mid if a[mid] == x
end

p ans + 1
