n = gets.to_i

l = 0.0
r = 47.0 # 100000の3乗根

loop do
  mid = (l + r) / 2.0
  res = mid ** 3 + mid
  if (res - n).abs <= 0.001
    break l = mid
  end

  res > n ? r = mid - 0.001 : l = mid + 0.001
end

p l
