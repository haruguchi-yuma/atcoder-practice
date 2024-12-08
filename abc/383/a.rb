n = gets.to_i
tv = Array.new(n) { gets.split.map(&:to_i) }
prev = tv[0][0]
sum = 0

tv.each do |t, v|
  sum = [0, sum - (t - prev)].max
  sum += v
  prev = t
end

p sum
