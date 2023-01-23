# 100で割る代わりに基準量を100倍すると小数を扱わなくて済む
n, x = gets.split.map(&:to_i)
vp = Array.new(n) { gets.split.map(&:to_i) }

total = 0

vp.each_with_index do |(v, pp), i|
  total += v * pp
  return puts i.succ if total > x * 100
end

puts -1
