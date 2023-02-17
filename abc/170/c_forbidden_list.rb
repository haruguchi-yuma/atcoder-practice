# 差で全探索
n, x, *pi = $<.read.split.map(&:to_i)
v = 0

loop do
  t = n - v
  return puts t if !pi.include?(t)
  t = n + v
  return puts t if !pi.include?(t)
  v += 1
end

# 答えで全探索
n, x, *pi = $<.read.split.map(&:to_i)
ans = 102
diff = 102

([*0..101] - pi).each do |num|
  d = (n - num).abs
  diff, ans = d, num if d < diff
end

puts ans
