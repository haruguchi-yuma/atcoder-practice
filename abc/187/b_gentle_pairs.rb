# 直線の傾きは (yの増加量) / (xの増加量)
n = gets.to_i
xy = Array.new(n) { gets.split.map(&:to_i) }

count = 0

xy.combination(2).each do |a, b|
  count += 1  if (b[1] - a[1]).abs <= (b[0] - a[0]).abs
end

puts count
