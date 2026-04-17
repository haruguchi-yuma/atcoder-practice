n, k, *a = $<.read.split.map(&:to_i)


check = ->(x) { # 答えがx秒以下かどうか
  a.sum { x / _1} >= k
}

l = 1
r = 10 ** 9

while r > l
  mid = (l + r) / 2
  check[mid] ? r = mid : l = mid + 1
end

p l
