# 円を固定して切り込みを入れる角度をanglesに入れる(0 <= θ <= 360)
# 累積和の考え方
n, *a = $<.read.split.map(&:to_i)
angles = [0] * (n + 1) + [360]

n.times do |i|
  angles[i+1] = (a[i] + angles[i]) % 360
end

puts angles.sort.each_cons(2).map { _2 - _1 }.max
