# 地道にシミュレーション
n, *a = $<.read.split.map(&:to_i)
sum = 0

(n - 1).times do |i|
  if (d = a[i] - a[i+1]) > 0
    sum += d
    a[i+1] += d
  end
end

puts sum
